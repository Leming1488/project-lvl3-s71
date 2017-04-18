install: install-deps install-flow-typed

run:
	sudo npm run babel-node -- 'src/bin/page-loader.js'  'https://hexlet.io/courses'

install-deps:
	yarn

install-flow-typed:
	npm run flow-typed install

build:
	rm -rf dist
	npm run build

test:
	npm test -- --coverage

test-watch:
	sudo npm test -- --watch

check-types:
	npm run flow

lint:
	npm run eslint -- src test

link:
	make build
	npm link

publish:
	npm publish

.PHONY: test
