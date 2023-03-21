
# Setup

AWS environment
ec2 isntance (t3.large)
Data files are in a us-west-2 s3 bucket:
non-NGAP environment
connecting via .aws/credential file
```
(base) MT-212570:tds-mur gangl$ aws s3 ls podaac-mur-access-study/
                           PRE MUR-JPL-L4-GLOB-v4.1/

```
all files:

```
(base) MT-212570:tds-mur gangl$ aws s3 ls podaac-mur-access-study/MUR-JPL-L4-GLOB-v4.1/
2021-09-23 14:52:49  723154274 20210101090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:52:49  729584997 20210102090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:52:49  742771025 20210103090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:52:49  754383468 20210104090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:52:49  754367812 20210105090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:07  754524888 20210106090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:13  753125742 20210107090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:19  753097712 20210108090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:23  752800196 20210109090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:23  752359468 20210110090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:33  749457797 20210111090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:38  750856381 20210112090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:48  754124651 20210113090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:48  753358158 20210114090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:53:51  755943681 20210115090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:00  754912182 20210116090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:06  755447677 20210117090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:16  757470675 20210118090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:17  761475106 20210119090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:19  763187413 20210120090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:28  759327856 20210121090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:34  757346424 20210122090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:44  759097943 20210123090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:45  762978845 20210124090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:48  763195770 20210125090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:54:57  759381834 20210126090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:03  756440725 20210127090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:12  755599072 20210128090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:13  755286379 20210129090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:16  752683793 20210130090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:25  752644574 20210131090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:31  757257274 20210201090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
2021-09-23 14:55:40  760265789 20210202090000-JPL-L4_GHRSST-SSTfnd-MUR-GLOB-v02.0-fv04.1.nc
```

Command to start the server with s3 caching turned on
```
sudo docker run -d -p 80:8080 -v $PWD/log4j2.xml:/usr/local/tomcat/webapps/thredds/WEB-INF/classes/log4j2.xml  -v $PWD/.aws/credentials:/usr/local/tomcat/.aws/credentials -v $PWD/catalog.xml:/usr/local/tomcat/content/thredds/catalog.xml -v $PWD/mur-1km.xml:/usr/local/tomcat/content/thredds/mur-1km.xml unidata/thredds-docker:5.0
```

Command to start the server with s3 caching turned off
```
sudo docker run -d -p 80:8080 -v $PWD/javaopts.sh:/usr/local/tomcat/bin/javaopts.sh -v $PWD/log4j2.xml:/usr/local/tomcat/webapps/thredds/WEB-INF/classes/log4j2.xml  -v $PWD/.aws/credentials:/usr/local/tomcat/.aws/credentials -v $PWD/catalog.xml:/usr/local/tomcat/content/thredds/catalog.xml -v $PWD/mur-1km.xml:/usr/local/tomcat/content/thredds/mur-1km.xml unidata/thredds-docker:5.0
```

## tests

### EC2 Instances, non-ngap tests


#### 20x20 tests
1-month 20x20
```
(base) MT-212570:tds-mur gangl$ date;curl -m 6000 -w '%{time_starttransfer}' 'http://ec2-54-187-46-78.us-west-2.compute.amazonaws.com/thredds/ncss/grid/scan-aggregation/mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2020-12-31T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic&addLatLon=true';date
Fri Sep 24 06:25:53 PDT 2021
Warning: Binary output can mess up your terminal. Use "--output -" to tell
Warning: curl to output it to your terminal anyway, or consider "--output
Warning: <FILE>" to save to a file.
0.044694Fri Sep 24 06:38:55 PDT 2021
```
13 minutes

1-month 20x20
```
(base) MT-212570:tds-mur gangl$ wget 'http://ec2-54-187-46-78.us-west-2.compute.amazonaws.com/thredds/ncss/grid/scan-aggregation/mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2020-12-31T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic&addLatLon=true'
--2021-09-23 15:59:14--  http://ec2-54-187-46-78.us-west-2.compute.amazonaws.com/thredds/ncss/grid/scan-aggregation/mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2020-12-31T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic&addLatLon=true
Resolving ec2-54-187-46-78.us-west-2.compute.amazonaws.com (ec2-54-187-46-78.us-west-2.compute.amazonaws.com)... 54.187.46.78
Connecting to ec2-54-187-46-78.us-west-2.compute.amazonaws.com (ec2-54-187-46-78.us-west-2.compute.amazonaws.com)|54.187.46.78|:80... connected.
HTTP request sent, awaiting response... 200
Length: 436770348 (417M) [application/x-netcdf]
Saving to: ‘mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2020-12-31T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic&addLatLon=true’

mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&ea 100%[=========================================================================================================================>] 416.54M  7.53MB/s    in 1m 40s  

2021-09-23 16:13:25 (4.18 MB/s) - ‘mur-2019-01.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2020-12-31T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic&addLatLon=true’ saved [436770348/436770348]
```
overall - 1 month 20x20 took ~12 minutes.


### NGAP tests
(buffer and maxs3 cache turned off)


#### 1x1 tests

| coverage |days| start | stop | total(s) | transfer time (s) | TDS process time(s) |
|----------| ---| ----- | -----| ----- | ---| --|
| 1x1 | 10 | 08:27:44|08:28:14| 30| 2.1 | 28|
| 1x1 | 20 | 08:48:10|08:48:53| 43| 2.4 | 41|
| 1x1 | 25 | 08:36:08|08:37:07| 00:59| 3.2 | 56 |
| 1x1 | 26 | 08:44:43|08:45:47| 01:04| 9.4s (?) | 55 |
| 1x1 | 27 | 08:40:32 |08:41:31| 00:59| 1.5s | 57 |
| 1x1 | 28 | 08:37:27|08:39:28| 02:01| 1.7s | 119 |
| 1x1 | 29 | 08:49:38| 08:52:32 | 02:54| 50s | 124 |
| 1x1 | 30 | 08:53:21| -- | Timeout (>3m)| -- | -- |

```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 08:27:44--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.8, 13.35.99.60, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.8|:443... connected.
HTTP request sent, awaiting response... 200
Length: 821664 (802K) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&e 100%[=================================================================================================================================================>] 802.41K   383KB/s    in 2.1s    

2021-09-24 08:28:14 (383 KB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [821664/821664]

```
~ 30 seconds

20-day
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 08:29:28--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.60, 13.35.99.30, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.60|:443... connected.
HTTP request sent, awaiting response... 200
Length: 1637824 (1.6M) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&e 100%[=================================================================================================================================================>]   1.56M  1.08MB/s    in 1.4s    

2021-09-24 08:30:20 (1.08 MB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [1637824/1637824]
```
~50 seconds

25-day
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-25T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 08:36:08--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-25T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.8, 13.35.99.60, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.8|:443... connected.
HTTP request sent, awaiting response... 200
Length: 2045904 (2.0M) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-25T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&e 100%[=================================================================================================================================================>]   1.95M   634KB/s    in 3.2s    

2021-09-24 08:37:07 (634 KB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-25T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [2045904/2045904]
```
1 minute

28-day
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-28T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 08:37:27--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-28T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.30, 13.35.99.60, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.30|:443... connected.
HTTP request sent, awaiting response... 200
Length: 2290752 (2.2M) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-28T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&e 100%[=================================================================================================================================================>]   2.18M  1.29MB/s    in 1.7s    

2021-09-24 08:39:28 (1.29 MB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-28T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [2290752/2290752]
```
~2 minutes

30-day
```
(base) MT-212570:tds-mur gangl$ open .
(base) MT-212570:tds-mur gangl$ wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-30T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 08:32:12--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-39&south=-21&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-30T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.30, 13.35.99.154, 13.35.99.8, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.30|:443... connected.
HTTP request sent, awaiting response... 504 Gateway Time-out
Retrying.

--2021-09-24 08:35:13--
```
Around here i'm beginning to think this has something to do with # of remote/open files?




#### 5x5 tests

20-day 5x5 lat/lon)
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 06:43:06--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.60, 13.35.99.8, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.60|:443... connected.
HTTP request sent, awaiting response... 200
Length: 40169024 (38M) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&sou 100%[================================================================================================================================================================================>]  38.31M  3.82MB/s    in 10s     

2021-09-24 06:44:06 (3.82 MB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [40169024/40169024]

```
50 seconds

31-day 5x5 lat/lon)
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 06:45:32--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-35&south=-25&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.8, 13.35.99.154, 13.35.99.60, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.8|:443... connected.
HTTP request sent, awaiting response... 504 Gateway Time-out
Retrying.

--2021-09-24 06:48:33--
```
timeout


#### 20x20 tests

10-day 20x20
```
(base) MT-212570:tds-mur gangl$ wget 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3'
--2021-09-24 05:30:50--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.30, 13.35.99.60, 13.35.99.154, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.30|:443... connected.
HTTP request sent, awaiting response... 200
Length: 320340864 (306M) [application/x-netcdf]
Saving to: ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’

MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&sou 100%[================================================================================================================================================================================>] 305.50M  5.33MB/s    in 63s     

2021-09-24 05:32:39 (4.85 MB/s) - ‘MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-10T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3’ saved [320340864/320340864]

[1]+  Exit 8                  wget https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst

```
~40 seconds to get the 10 day product



20-day 20x20
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"

```
3 minute timeout

1-month 20x20
```
wget "https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3"
--2021-09-24 05:42:22--  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Resolving d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)... 13.35.99.60, 13.35.99.154, 13.35.99.8, ...
Connecting to d14r99769bez76.cloudfront.net (d14r99769bez76.cloudfront.net)|13.35.99.60|:443... connected.
HTTP request sent, awaiting response... 504 Gateway Time-out
Retrying.

--2021-09-24 05:45:23--  (try: 2)  https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=-20&west=-40&east=-20&south=-40&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-31T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf3
Reusing existing connection to d14r99769bez76.cloudfront.net:443.
HTTP request sent, awaiting response... 504 Gateway Time-out
Retrying.

--2021-09-24 05:48:25--
```
timeout at 3 mintes.
