mkdir ./source_data

# Get the US postal codes from geonames.org
wget -O ./source_data/US.zip http://download.geonames.org/export/zip/US.zip
unzip -d ./source_data ./source_data/US.zip 
rm ./source_data/readme.txt

# Get the Puerto Rico postal codes
wget -O ./source_data/PR.zip http://download.geonames.org/export/zip/PR.zip
unzip -d ./source_data ./source_data/PR.zip
rm ./source_data/readme.txt

# Get the Guam postal codes
wget -O ./source_data/GU.zip http://download.geonames.org/export/zip/GU.zip
unzip -d ./source_data ./source_data/GU.zip
rm ./source_data/readme.txt

# Get the Virgin Islands postal codes
wget -O ./source_data/VI.zip http://download.geonames.org/export/zip/VI.zip
unzip -d ./source_data ./source_data/VI.zip
rm ./source_data/readme.txt

# Get the American Samoa postal codes
wget -O ./source_data/AS.zip http://download.geonames.org/export/zip/AS.zip
unzip -d ./source_data ./source_data/AS.zip
rm ./source_data/readme.txt

# Combine the territories into the US file
cat ./source_data/PR.txt >> ./source_data/US.txt
cat ./source_data/GU.txt >> ./source_data/US.txt
cat ./source_data/AS.txt >> ./source_data/US.txt
cat ./source_data/VI.txt >> ./source_data/US.txt

# Get the Zip Code boundary shapefiles from census.gov
wget -O ./source_data/census.zip http://www2.census.gov/geo/tiger/GENZ2014/shp/cb_2014_us_zcta510_500k.zip
unzip -d ./source_data ./source_data/census.zip
