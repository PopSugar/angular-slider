build:
	- rm -r dist
	mkdir dist
	./node_modules/.bin/coffee --compile --output dist slider.coffee
	./node_modules/.bin/uglifyjs dist/slider.js -o dist/slider.min.js
	./node_modules/.bin/node-sass slider.scss --source-map true dist/slider.css
	./node_modules/.bin/node-sass slider.scss --source-map true --output-style compressed dist/slider.min.css
