For this exercise, let's create our own basic [Quakebot][].

## Preliminary study

You'll need a combination of skills to complete this exercise:

* How to [request remote data](/docs/python/remote_files.md) using the `requests` library
* How to [work with an API](/docs/python/working_with_apis.md) in Python (really, a feed in this case)
* How to [convert a timestamp](#converting-the-quake-timestamp)
* An understanding of how to [work with JSON data](https://realpython.com/python-json/)
* How to create a story template using "f-strings" or other [string
  templating support in Python](https://data-driven.news/bna/2019/day/7/#mad-libs-with-strings-and-templates)

## Coding

The task is to write a script called `quakebot.py` that ingests the "All earthquakes" feed for
the past hour from the [USGS][]:

  https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson

And print text to the command line that looks like below:

> Note, your data values for number of quakes and specific quake details
> will vary as this feed updates frequently.

```
There were 6 earthquakes in the last hour:
- Magnitude 2.00999999 4 km S of Pāhala, Hawaii at 2021-02-01 20:16:02 UTC
- Magnitude 1.07 17km E of Ocotillo, CA at 2021-02-01 20:03:18 UTC
- Magnitude 2.83 4 km W of Lucien, Oklahoma at 2021-02-01 19:49:10 UTC
- Magnitude 1.94000006 8 km ENE of Pāhala, Hawaii at 2021-02-01 19:47:54 UTC
- Magnitude 0.82 13km N of Borrego Springs, CA at 2021-02-01 19:42:53 UTC
- Magnitude 1.8 8 km WNW of Houston, Alaska at 2021-02-01 19:37:00 UTC
```

## Converting the quake timestamp

The USGS provides the time of quakes in what's known as [epoch time](https://en.wikipedia.org/wiki/Epoch_(computing)), typically
the number of *seconds* since the beginning of the year 1970. The USGS time is actually in milliseconds since 1970, so you'll need to 
divide the time by 1000 and then investigate the [utcfromtimestamp](https://docs.python.org/3/library/datetime.html#datetime.datetime.utcfromtimestamp) method in the datetime module to convert the time.


[USGS]: https://earthquake.usgs.gov/earthquakes/feed/v1.0/geojson.php
[Quakebot]: https://slate.com/technology/2014/03/quakebot-los-angeles-times-robot-journalist-writes-article-on-la-earthquake.html
