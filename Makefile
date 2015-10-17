npmBin = node_modules/.bin

install:
	rm -rf node_modules/
	npm install

clean:
	rm -rf coverage/

test:
	$(npmBin)/tape tests/**/*.js | $(npmBin)/tap-spec

cover:
	$(npmBin)/istanbul cover --report html tests/test.js

lint:
	$(npmBin)/eslint src tests

watch:
	$(npmBin)/watchify $(in) -d -v -o $(out)
