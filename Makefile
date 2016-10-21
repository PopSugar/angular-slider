build:
	- rm -r dist
	mkdir dist
	./node_modules/.bin/coffee --compile --output dist slider.coffee
	./node_modules/.bin/node-sass slider.scss --output dist --source-map true
