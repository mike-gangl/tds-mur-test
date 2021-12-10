!/bin/sh
die () {
    echo >&2 "$@"
    exit 1
}

[ "$#" -eq 1 ] || die "summary/log file  argument required, $# provided"
summary=$1

if test -f "timing.$summary.txt"; then
    die "Summary/Log file already exists. please choose a new name or delete the existing file"
fi

## relies on gnutime (gtim) installed on homebrew

echo "1x1x1" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-01T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "1x1x2" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-02T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "1x1x5" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-05T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "1x1x10" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-09T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "1x1x20" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "1x1x30" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-49&south=49&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-30T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'




echo "5x5x1" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-01T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "5x5x2" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-02T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "5x5x5" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-05T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "5x5x10" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-09T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "5x5x20" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-20T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'

echo "5x5x30" >> timing.$summary.txt
gtime -p  --output=timing.$summary.txt -a -p wget --no-verbose 'https://d14r99769bez76.cloudfront.net/thredds/ncss/grid/OceanTemperature/MUR-JPL-L4-GLOB-v4.1.nc?var=analysed_sst&north=50&west=-50&east=-45&south=45&horizStride=1&time_start=2021-01-01T00:00:00Z&time_end=2021-01-30T00:00:00Z&timeStride=1&vertCoord=&accept=netcdf4-classic'
