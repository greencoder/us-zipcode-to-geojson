# us-zipcode-to-geojson

GeoJSON files for all US Zip Codes

# Data Sources

I got the data from the [US Census Zip Code Tabulation Areas page](https://www.census.gov/geo/maps-data/data/cbf/cbf_zcta.html).

Since the data does not have any city, state, or centroid information, I added in data from the [Geonames.org free postal code data](http://download.geonames.org/export/zip/) page.

# Getting the source data

I created a [shell script](get_source_data.sh) that can be used to pull down all the data:
```
$ ./get_source_data.sh
```

Since I needed all the U.S. territories, I had to pull those down and concatenate them to the US.txt file.

# Running the script

Run the [process.py](process.py) command:
```
$ python process.py
```

The resulting data will be written into the [data](data/) directory.

