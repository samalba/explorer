# consumed by jenkinsfile
# all websites should use the build target
# to put static content in ./dist/

build: build-prep build-site

build-prep:
	yarn install --mutex network --non-interactive

build-site:
	yarn build:site

.PHONY: build build-site build-prep
