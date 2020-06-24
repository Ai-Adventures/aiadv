SRC = $(wildcard ./*.ipynb)

all: aiadv docs

aiadv: $(SRC)
	nbdev_build_lib
	touch aiadv

docs_serve: docs
	cd docs && bundle exec jekyll serve

docs: $(SRC)
	nbdev_build_docs
	touch docs

test:
	nbdev_test_nbs

release: pypi
	nbdev_bump_version

pypi: dist
	/home/ankur/anaconda3/envs/fastai/bin/twine upload --repository pypi dist/*

dist: clean
	/home/ankur/anaconda3/envs/fastai/bin/python setup.py sdist bdist_wheel

clean:
	rm -rf dist