.PHONY: all clean build serve

# the :z is necessary on SELinux systems like Fedora
# CONTAINER = podman run --network slirp4netns:port_handler=slirp4netns -it --rm -v "${PWD}":/usr/src/app:z -p "${PORT}:${PORT}" starefossen/github-pages
# CONTAINER = podman run --network=host -it --rm -v "${PWD}":/usr/src/app:z -p "${PORT}:${PORT}" starefossen/github-pages
# CONTAINER = podman run --network=host -it --rm -w "${PWD}" -v "${PWD}":"${PWD}":z -p "${PORT}:${PORT}" starefossen/github-pages

PORT ?= 4000
JEKYLL ?= bundle exec jekyll

install:
	bundle install --path vendor/bundle

build: install
	$(jekyll) build

serve: install
	$(JEKYLL) serve --livereload --port $(PORT) --baseurl '/'

clean:
	rm -rf _site/

new-post = blog/_posts/$(shell date '+%Y-%m-%d')-new-post.md
$(new-post):
	@echo "Creating a new blog post..."
	@echo "---" >> $@
	@echo "title: A Title" >> $@
	@echo "shorttitle: short title for tab title" >> $@
	@echo "layout: blog" >> $@
	@echo "---" >> $@
	@echo "" >> $@

.PHONY: new-blog-post
new-blog-post: $(new-post)

