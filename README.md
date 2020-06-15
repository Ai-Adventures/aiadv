# aiadv
> A small helper library to download the datasets that are used in our course.


This file will become your README and also the index of your documentation.

## Install

`pip install aiadv`

## How to use

There is only two things that you need to know

### `URLs` class

This class saves the id and file name of all the available datasets

```python
URLs.MOVIE_LENS_SAMPLE
```




    {'id': '1k2y0qC0E3oHeGA5a427hRgfbW7hnQBgF', 'fname': 'movie_lens_sample.zip'}



### `untar_data` function

This function will download the dataset for you and will return the path.

```python
untar_data(URLs.YELP_REIVEWS)
```

That's it!
