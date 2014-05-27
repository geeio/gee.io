.PHONY: deploy setup icons

setup:
	git remote add gh git@github.com:geeio/geeio.github.io.git

deploy:
	./node_modules/.bin/harp compile
	divshot push

promote:
	divshot promote development production

icons:
	grep -RhEo 'ion-[a-zA-Z\-]*' public/ | sort | uniq

