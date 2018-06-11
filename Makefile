JEKYLL = docker run -ti --rm -v "$(shell pwd):/srv/jekyll" -p 4000:4000 jekyll/jekyll:3.8.0

clean:
	@rm -rf _site

build:
	@${JEKYLL} jekyll build

serve:
	@${JEKYLL} jekyll serve

test:
	@${JEKYLL} jekyll serve --watch -H 0.0.0.0 --drafts
