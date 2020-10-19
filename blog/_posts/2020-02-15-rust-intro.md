---
layout: blog
title: Introduction to Rust
shorttitle: Rust Intro
---


Many of my recent projects are written in [Rust](https://rust-lang.org),
a new-ish systems
programming language with the stated goal of "empowering everyone to build
reliable and efficient software."
I'm a big fan, and so are others.
I think Rust gets a lot of things right on the tooling and language
side that make it fun to program in.
<aside markdown="1">
  Rust has been the
  [most loved](https://insights.stackoverflow.com/survey/2019#most-loved-dreaded-and-wanted)
  language on StackOverflow for four years running.
</aside>

There are a ton of cool Rust libraries out there,
and if you want to use any them, you'll have to at least learn a bit of it.
Lucky for you, Rust offers a variety of ways to [learn] including
documentation, a book, and an interactive course.
There are also myriad other blog posts out there on learning Rust, many of which
are probably better than this one.
<aside markdown="1">
  You can find most Rust libraries on [crates.io](https://crates.io),
  including one of mine: [`egg`](https://crates.io/crates/egg).
</aside>

This post is targeted at people with experience in several programming languages
and just want to start typing something soon.
You should definitely read the [book], but maybe this will get you off the
ground faster.
We'll implement a simple arithmetic interpreter and explore some of the more
important types and concepts you'll see when interacting with Rust code.

## First Steps

First off, you've got to install Rust.
The [install] page should do nicely.

You almost definitely want to use this method as opposed to what's packaged with
your OS.
This installs `rustup`, Rust's toolchain management tool, as well as the latest
stable toolchain which includes the compiler (`rustc`) and build tool (`cargo`).
You'll really only ever interact with `cargo` in the regular course of working
with Rust.

Now let's create a new project with `cargo new --lib demo`.
This makes a new directory called `demo` and sets it up to make a Rust library.
<aside markdown="1">
  Without the `--lib` flag, `cargo` will set you up to make a binary
  project.
  I find it easier to start with a library because it's easier to make
  tests than a `main` function.
</aside>

Inside `demo`, you should find two files:

- `Cargo.toml`, the project management file.
  This is where you'd add dependencies and edit your project's metadata.

- `src/lib.rs`, the root of the library.
  This is where we will work during this post. You can include other [modules]
  from here, but I'll leave that to the book.

Notice how `lib.rs` is already set up for you with a test marked with the
`#[test]` attribute.
This test lives in a module called `tests` that is
[conditionally compiled](https://doc.rust-lang.org/reference/conditional-compilation.html#the-cfg-attribute)
only in test mode.
<aside markdown="1">
  The name of the module `tests` is not special, it's just convention.
</aside>

There are a couple ways to build your project:

- `cargo check` just typechecks your code
- `cargo build` builds your code.
  We are developing a library here, so there's not much of a point to this
  since there's no useful binary artifact.
- `cargo test` builds your code in `test` mode and runs the tests.
  By default, the other two commands won't even compile code under a
  `#[cfg(test)]` attribute.

By default, `cargo build` and `cargo test` compile your code without
optimizations.
Add the `--release` flag to compile with optimizations.

## Arithmetic

Ok, let's get started.
At the top of `lib.rs`, outside of the `tests` module,
add the following:

```rust
enum Expr {
    Num(i32),
    Add(Box<Expr>, Box<Expr>),
    Mul(Box<Expr>, Box<Expr>),
}

fn eval(expr: Expr) -> i32 {
    match expr {
        Expr::Num(i) => i,
        Expr::Add(l, r) => eval(*l) + eval(*r),
        Expr::Mul(l, r) => eval(*l) * eval(*r),
    }
}
```

This should look mostly familiar if you've done much functional
programming.
I'll try cover some Rust-isms that may be less familiar.

In Rust, `enum`s are [algebraic data types][adt], so variants can carry data or
even be generic.
To create or match on an `enum`, you must use the `::` syntax to refer to
its variants.
Alternatively, you could have put a `use Expr::*;` to include the variants into
a scope.
<aside markdown="1">
  We could have used record-like syntax:\\
  `Add { l: Box<Expr, r: Box<Expr> }`,
  which can be useful when the fields are not obvious from position.
</aside>

Our `eval` function contains expressions rather than statements.
Rust has both, and they come together in the very common _block_ syntactic form.
A block consists of statements followed by an optional expression, and
it evaluates to the value of that expression (or to `()` if there wasn't one).
For example, we could equivalently write the `Add` arm of `eval`:

```rust
Expr::Add(l, r) => {
    let i1 = eval(*l);
    let i2 = eval(*r);
    i1 + i2
}
```


Note the need for [`Box`](https://doc.rust-lang.org/std/boxed/index.html) in the
recursive parts of the `enum` declaration.
Rust gives you great control over things like memory layout; types are all "in
line" by default.
This is normally great for performance, but it can cause trouble with recursive
data structures.
If you removed the `Box`es, you'd get a (pretty helpful!) error like the following:

```
error[E0072]: recursive type `Expr` has infinite size
 --> src/lib.rs:1:1
  |
1 | enum Expr {
  | ^^^^^^^^^ recursive type has infinite size
2 |     Num(i32),
3 |     Add(Expr, Expr),
  |         ----  ---- recursive without indirection
  |         |
  |         recursive without indirection
  |
  = help: insert indirection (e.g., a `Box`, `Rc`, or `&`)
          at some point to make `Expr` representable
```

You should still be getting warnings about unused types and functions.
Rust sees you're building a library, and there is code with no public
path to it.
You can get rid of these by prefixing `enum Expr` and `fn eval` with
`pub` to export them from the library.
<aside markdown="1">
  These and many warnings are easily silenced by placing a
  module-level attribute at the top of the file:
  `#![allow(dead_code)]`
</aside>

## Borrowing and Ownership

Borrowing and ownership are likely to be the most confusing concepts
if you're coming from another programming language.
Again, the [chapter in the Rust book][borrowing] is the gold standard
here, but this quick run-through will suffice for what we're doing.

In Rust, pretty much anything you do—passing arguments, making
assignments, and so on—_consumes_ the given values.
So the following variation on our `eval` function fails to compile:

```rust
Expr::Add(l, r) => {
    let i1 = eval(*l);
    let i2 = eval(*r);
    let _  = eval(*r);
    i1 + i2
}
```

We've consumed `*r`,
but then we try to use it again!
Once more, the compiler steps in with a helpful message:
<aside markdown="1">
  On the `Box` type, the deref operator `*` gets you the inner type.
</aside>

```
error[E0382]: use of moved value: `*r`
  --> src/lib.rs:16:27
   |
15 |             let i2 = eval(*r);
   |                           -- value moved here
16 |             let _  = eval(*r);
   |                           ^^ value used here after move
   |
   = note: move occurs because `*r` has type `Expr`, which does not implement the `Copy` trait
```

It mentions the
[`Copy`](https://doc.rust-lang.org/stable/std/marker/trait.Copy.html)
trait which gives some types copy semantics instead of move semantics.
Primitives (`i32`, `u8`, `f64`, `bool`, etc.) and immutable references
(which we'll see in a moment) implement `Copy`.

Conceptually, we've designed the `eval` function to take ownership of
its argument, but we could instead implement it to work on a borrowed
`Expr`.
This would be more permissive to the caller and more idiomatic; it
expresses the fact that I don't need to _take_ an `Expr` to `eval` it,
I just need to look at it.

```rust
fn eval(expr: &Expr) -> i32 {
    match expr {
        Expr::Num(i) => *i,
        Expr::Add(l, r) => eval(l) + eval(r),
        Expr::Mul(l, r) => eval(l) * eval(r),
    }
}
```


The differences here are subtle and worth unpacking.
We've changed the type of the parameter `expr` from an owned `Expr` to
an immutably borrowed `&Expr`.
We can still `match` on a borrowed value, but this time a little bit of magic
is happening.
When you `match` on a reference, Rust will basically give you
borrowed versions on the inner variant types.
For example, the `i` in the arm `Expr::Num(i)` is of type `&i32`, so
we must dereference it to get an `i32`.
This works because `i32` implements `Copy`, so deref-ing copies
instead of moves.
In the other arms, Rust cannot give you the `Box<Expr>`s for `l` and
`r`, because you don't own the `expr`.
It could give you a `&Box<Expr>`, but that's not very useful; it's
essentially a pointer to a pointer.
Instead, Rust automatically borrows it for you, so `l` and `r` are of
type `&Expr`, allowing us to make the recursive call without further
modification.
<aside markdown="1">
  Pattern matching on references used to be more involved.
  Check out the
  [RFC](https://github.com/rust-lang/rfcs/blob/master/text/2005-match-ergonomics.md)
  from 2017 if you're interested.
</aside>

We can write a test
that shows we can indeed `eval` the same `Expr` twice:
<aside markdown="1">
  Tests conventionally go in the `tests` module, but they will run
  outside of it as well.
</aside>

```rust
#[cfg(test)]
mod tests {
    // import everything from the parent of the tests module
    // this is very common in tests
    use super::*;

    #[test]
    fn take_a_borrow_twice() {
        let e = Expr::Add(
            Box::new(Expr::Num(1)),
            Box::new(Expr::Num(3)),
        );
        assert_eq!(eval(&e), 4);
        assert_eq!(eval(&e), 4);
    }
}
```
<aside markdown="1">
  The `!` in [`assert_eq!`](https://doc.rust-lang.org/stable/std/macro.assert_eq.html)
  means you're calling a
  [macro](https://doc.rust-lang.org/book/ch19-06-macros.html).
</aside>


## Impl

Our `eval` is a free-standing function, but it's better suited as a method of `Expr`.
Methods are nice because you can use the `foo.bar()` syntax, and you
don't have to import them (Rust can figure out what you're calling
based on the receiver type).

Let's convert `eval` to a method:

``` rust
impl Expr {
    fn eval(&self) -> i32 {
        match self {
            Expr::Num(i) => *i,
            Expr::Add(l, r) => l.eval() + r.eval(),
            Expr::Mul(l, r) => l.eval() * r.eval(),
        }
    }
}
```

We've changed the single parameter `eval` to be its receiver, using
the special syntax for defining a method that takes its receiver by
immutable reference.
Methods can also take a mutable reference (`&mut self`) or
even consume the value (`self`).
We also changed the recursive called to the method syntax.

Note that you can still use the function-style syntax, it's just namespaced:
```rust
let e = Expr::Add(
    Box::new(Expr::Num(1)),
    Box::new(Expr::Num(3)),
);
assert_eq!(e.eval(), 4);
assert_eq!(Expr::eval(&e), 4);
```

See how `e` is an owned `Expr`, and `eval` takes it's argument by
reference, but we don't need to borrow to call the method?
The method syntax also buys you _automatic borrowing_ of the receiver.
<aside markdown="1">
  If you want to be really extra explicit, `(&e).eval()` still works.
</aside>

This is called an _inherent method_ of `Expr`, as opposed to _trait
method_ that belongs to a trait that `Expr` happens to implement.
Let's implement the extremely common
[`Clone`](https://doc.rust-lang.org/stable/std/clone/trait.Clone.html)
trait for `Expr`:

```rust
impl Clone for Expr {
    fn clone(&self) -> Self {
        match self {
            Expr::Num(i) => Expr::Num(*i),
            Expr::Add(l, r) => Expr::Add(l.clone(), r.clone()),
            Expr::Mul(l, r) => Expr::Mul(l.clone(), r.clone()),
        }
    }
}

#[test]
fn clone_it() {
    let two = Box::new(Expr::Num(2));
    // don't need to clone the second time,
    // moving is fine as long as we don't use it after
    let e = Expr::Add(two.clone(), two);
    assert_eq!(e.eval(), 4);
}
```

The `Clone` trait allows you to explicitly (unlike `Copy`, which is
implicit) copy things.
The copy is apparent at the type level: `clone` takes a borrowed value
and gives you the real deal.
This is an extremely boring trait implementation, and thankfully Rust
has features to let us automatically derive many common traits.
Let's go ahead and derive `Clone` for `Expr` (deleting our
implementation), as well as the very common
[`Debug`](https://doc.rust-lang.org/stable/std/fmt/trait.Debug.html),
[`PartialEq`](https://doc.rust-lang.org/stable/std/cmp/trait.PartialEq.html),
and
[`Eq`](https://doc.rust-lang.org/stable/std/cmp/trait.Eq.html)
traits:

```rust
#[derive(Debug, Clone, PartialEq, Eq)]
enum Expr {
    Num(i32),
    Add(Box<Expr>, Box<Expr>),
    Mul(Box<Expr>, Box<Expr>),
}
```



## Error Handling

Let's make our little language more complex, so it's possible for
`eval` to fail.
We'll see how Rust uses the
[`Result`](https://doc.rust-lang.org/stable/std/result/index.html)
type to handle errors.

First, let's do it the easy way and just crash the program on an error.
Let's evaluate `Expr`s down to `Value`s, which are either numbers
or booleans.
We'll replace `Mul` with `LessThan` to make things more interesting.

```rust
#[derive(Debug, Clone, PartialEq, Eq)]
enum Expr {
    Value(Value),
    Add(Box<Expr>, Box<Expr>),
    LessThan(Box<Expr>, Box<Expr>),
}

#[derive(Debug, Clone, PartialEq, Eq)]
enum Value {
    Num(i32),
    Bool(bool),
}

impl Expr {
    fn eval(&self) -> Value {
        match self {
            Expr::Value(v) => v.clone(),
            Expr::Add(l, r) => {
                let nl = l.eval().to_num();
                let nr = r.eval().to_num();
                Value::Num(nl + nr)
            }
            Expr::LessThan(l, r) => {
                let nl = l.eval().to_num();
                let nr = r.eval().to_num();
                Value::Bool(nl < nr)
            }
        }
    }
}
```

We'll need some helper methods on `Value` to forcibly get the right types out.
These will crash the program if called on the wrong `Value`.
<aside markdown="1">
  The
  [`panic!`](https://doc.rust-lang.org/stable/std/macro.panic.html)
  macro, like the
  [`print!`](https://doc.rust-lang.org/stable/std/macro.print.html),
  [`println!`](https://doc.rust-lang.org/stable/std/macro.println.html),
  and
  [`format!`](https://doc.rust-lang.org/stable/std/macro.format.html)
  macros,
  use Rust's rich string formatting support.
  See the [`std::fmt`](https://doc.rust-lang.org/stable/std/fmt/index.html)
  docs for more.
</aside>

```rust
impl Value {
    fn to_num(&self) -> i32 {
        match self {
            Value::Num(i) => *i,
            Value::Bool(b) => panic!("Expected num, got bool {}", b),
        }
    }

    fn to_bool(&self) -> bool {
        match self {
            Value::Num(i) => panic!("Expected bool, got num {}", i),
            Value::Bool(b) => *b,
        }
    }
}
```

And finally, let's check to make sure that everything is still
working.
Writing tests is a little verbose now, but we'll fix that once we get
to generics.

```rust
#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn do_it() {
        let two = Box::new(Expr::Value(Value::Num(2)));
        let zero = Box::new(Expr::Value(Value::Num(0)));

        let e1 = Expr::Add(two.clone(), zero.clone());
        assert_eq!(e1.eval().to_num(), 2);

        let e2 = Expr::LessThan(two.clone(), zero.clone());
        assert_eq!(e2.eval().to_bool(), false);
    }
}
```

So we've introduced some errors, now let's handle them.
The first step is to stop crashing the program!
We'll need to use the [`Result`] type.
A `Result<T, E>` is generic over `T`, the type if things were ok,
and `E`, the error type.
For now we'll just use [`String`] as the error type:
Let's make our `to_num` and `to_bool` methods return
[`Result`]s.
<aside markdown="1">
  `Ok` and `Err`, the variants of
  [`Result`](https://doc.rust-lang.org/stable/std/result/index.html),
  are in Rust's
  [prelude](https://doc.rust-lang.org/stable/std/prelude/index.html)
  and so are scope by default.
</aside>

```rust
impl Value {
    fn to_num(&self) -> Result<i32, String> {
        match self {
            Value::Num(i) => Ok(*i),
            Value::Bool(b) => Err(format!("Expected num, got bool {}", b)),
        }
    }

    fn to_bool(&self) -> Result<bool, String> {
        match self {
            Value::Num(i) => Err(format!("Expected bool, got num {}", i)),
            Value::Bool(b) => Ok(*b),
        }
    }
}
```
<aside markdown="1">
  The
  [`format!`](https://doc.rust-lang.org/stable/std/macro.format.html)
  macro returns a
  [`String`](https://doc.rust-lang.org/stable/std/string/struct.String.html),
  which we're using as an error type.
</aside>

Great, now the helper methods don't crash.
Instead they return [`Result`]s, which can tell us if they worked
properly or not.
Now we have to update our `eval` method.
It should return `Result<Value, String>` now, since it can fail as well.

In the recursive cases, we want to propagate any errors returned by
the recursive call or the `to_num` or `to_bool` conversions.
We could do this a bunch of nested `match`es, but that would be pretty
nasty.
You could also use some of the many combinators on the [`Result`]
type, but instead, we'll use the handy
[`?` operator](https://doc.rust-lang.org/stable/book/ch09-02-recoverable-errors-with-result.html?highlight=error#a-shortcut-for-propagating-errors-the--operator):

```rust
impl Expr {
    fn eval(&self) -> Result<Value, String> {
        match self {
            Expr::Value(v) => Ok(v.clone()),
            Expr::Add(l, r) => {
                let nl = l.eval()?.to_num()?;
                let nr = r.eval()?.to_num()?;
                Ok(Value::Num(nl + nr))
            }
            Expr::LessThan(l, r) => {
                let nl = l.eval()?.to_num()?;
                let nr = r.eval()?.to_num()?;
                Ok(Value::Bool(nl < nr))
            }
        }
    }
}
```

Spot the difference?
The `?` might seem like magic, but it's actually a pretty
straightforward transformation.
Essentially, `x?` desugars to:

```rust
match x {
  Ok(ok) => ok,
  Err(err) => return err
}
```

The `?` is inserting early returns into our function, bailing if the
given expression is an `Err`.
Note that this only works on expressions of type `Result` inside
functions that return `Result`.
This gives us a very concise way to propagate errors.
<aside markdown="1">
  `?` also performs coercion on the `Err`
  using the [`From`](https://doc.rust-lang.org/stable/std/convert/trait.From.html)
  trait.
</aside>

Swell, now we can test to make sure the error handling is doing the
right thing:

```rust
let two = Box::new(Expr::Value(Value::Num(2)));
let zero = Box::new(Expr::Value(Value::Num(0)));
let tru = Box::new(Expr::Value(Value::Bool(true)));

let e1 = Expr::Add(two.clone(), zero.clone());
assert_eq!(e1.eval().unwrap().to_num(), Ok(2));

let e2 = Expr::LessThan(two.clone(), zero);
assert_eq!(e2.eval().unwrap().to_bool(), Ok(false));

let e3 = Expr::LessThan(two, tru);
assert!(e3.eval().is_err());
```

Note the use of the
[`unwrap`](https://doc.rust-lang.org/stable/std/result/enum.Result.html#method.unwrap)
method to get a `T` out of a `Result<T, E>`, crashing if it's an error.
Also, we can check to see if a `Result` is an error (like in the `e3` assertion) with the
[`is_err`](https://doc.rust-lang.org/stable/std/result/enum.Result.html#method.is_err)
method.




## Generics and the `From` Trait

You may have notices that actually making expressions is a little verbose.
For example, making the `Expr` corresponding to `1 + (2 + 3)` in a
single Rust expression looks like this:

```rust
let e: Expr = Expr::Add(
    Box::new(Expr::Value(Value::Num(1))),
    Box::new(Expr::Add(
        Box::new(Expr::Value(Value::Num(2))),
        Box::new(Expr::Value(Value::Num(3))),
    )),
);
```

We can make this a lot better by taking advantage of the important
[`From`] and [`Into`] traits to do conversion between types.

Let's start with values.
We want to make it so `i32`s and `bool`s know how to make themselves _into_ `Value`s.
In other words, `Value` show know how to make one of itself _from_ an
`i32` or `bool`.
Here's the needed `impl` for `From<i32>`, the `From<bool>` is analogous:
<aside markdown="1">
  For technical reasons, we always implement the
  [`From`](https://doc.rust-lang.org/stable/std/convert/trait.From.html) instead of
  [`Into`](https://doc.rust-lang.org/stable/std/convert/trait.Into.html).
  See the docs for more.
</aside>

```rust
impl From<i32> for Value {
    fn from(i: i32) -> Value {
        Value::Num(i)
    }
}
```

In a similar vein, we should know how to get an `Expr` from a `Value`:

```rust
impl From<Value> for Expr {
    fn from(v: Value) -> Expr {
        Expr::Value(v)
    }
}
```

But we can actually do one better.
Not only can we get an `Expr` from a `Value`, but we can get an `Expr`
from anything that knows how to convert itself into a `Value`.
So instead of the above `impl From<Value>`, we can do this with
generics:

```rust
impl<V: Into<Value>> From<V> for Expr {
    fn from(v: V) -> Expr {
        Expr::Value(v.into())
    }
}
```
<aside markdown="1">
  We get that
  [`Into`](https://doc.rust-lang.org/stable/std/convert/trait.Into.html)
  implementation for free because we implemented the corresponding
  [`From`](https://doc.rust-lang.org/stable/std/convert/trait.From.html).
</aside>

In plain English, I would read this as
"for all `V`s that implement `Into<Value>`,
we're going to implement `From<V>` for `Expr`."

Now that we've implemented these conversion traits, we can use them to
write a handy generic function that will let us easily create
expressions.
Rust has some equivalent ways to express
[trait bounds](https://doc.rust-lang.org/book/ch10-02-traits.html#trait-bound-syntax)
on generics, so I'll write the same function three ways.
<aside markdown="1">
  We cannot just reuse the type variable `T1` for both arguments,
  since that would unnecessarily constrain the two input types to be identical.
  All we care is that they both implement `Into<Expr>`.
</aside>

```rust
fn add<T1: Into<Expr>, T2: Into<Expr>>(l: T1, r: T2) -> Expr {
    Expr::Add(Box::new(l.into()), Box::new(r.into()))
}

fn add<T1, T2>(l: T1, r: T2) -> Expr
where
    T1: Into<Expr>,
    T2: Into<Expr>,
{
    Expr::Add(Box::new(l.into()), Box::new(r.into()))
}

fn add(l: impl Into<Expr>, r: impl Into<Expr>) -> Expr {
    Expr::Add(Box::new(l.into()), Box::new(r.into()))
}
```

The different syntaxes fit better in situations where the generics are
more or less complex.
Choose your favorite for now.
Finally, we can use this to make `Expr`s:

```rust
let e1 = Expr::Add(
    Box::new(Expr::Value(Value::Num(1))),
    Box::new(Expr::Add(
        Box::new(Expr::Value(Value::Num(2))),
        Box::new(Expr::Value(Value::Num(3))),
    )),
);
let e2 = add(1, add(2, 3));
assert_eq!(e1, e2);
```

That's much better, right?



## Conclusion

So that's the quick intro.
We've obviously only scratched the surface, but hopefully this will
help you jump into a codebase that's exciting you and understand what's going on.

From here I would recommend still looking at the [book] (it's really
good) or trying out
[Rust by Example](https://doc.rust-lang.org/stable/rust-by-example/).
Have fun!


[adt]: https://en.wikipedia.org/wiki/Algebraic_data_type
[modules]: https://doc.rust-lang.org/book/ch07-00-managing-growing-projects-with-packages-crates-and-modules.html
[install]: https://www.rust-lang.org/tools/install
[book]: https://doc.rust-lang.org/book/
[learn]: https://www.rust-lang.org/learn
[`egg`]: https://github.com/mwillsey/egg
[Rust]: https://www.rust-lang.org/
[borrowing]: https://doc.rust-lang.org/stable/book/ch04-00-understanding-ownership.html
[`Result`]: https://doc.rust-lang.org/stable/std/result/index.html
[`String`]: https://doc.rust-lang.org/stable/std/string/struct.String.html
[`From`]: https://doc.rust-lang.org/stable/std/convert/trait.From.html
[`Into`]: https://doc.rust-lang.org/stable/std/convert/trait.Into.html
