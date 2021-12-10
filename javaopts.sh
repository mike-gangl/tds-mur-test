#!/bin/sh

###
# Java options
###

# http://www.unidata.ucar.edu/software/thredds/current/tds/faq.html#javaUtilPrefs
# Choosing a JAVA_PREFS_SYSTEM_ROOT directory location that will likely live
# inside the container.

NORMAL="-server -Xms${THREDDS_XMS_SIZE} -Xmx${THREDDS_XMX_SIZE}"
HEAP_DUMP="-XX:+HeapDumpOnOutOfMemoryError"
HEADLESS="-Djava.awt.headless=true"
CONTENT_ROOT="-Dtds.content.root.path=${TDS_CONTENT_ROOT_PATH}"
JAVA_PREFS_SYSTEM_ROOT="-Djava.util.prefs.systemRoot=$CATALINA_HOME/javaUtilPrefs -Djava.util.prefs.userRoot=$CATALINA_HOME/javaUtilPrefs"
JNA_DIR="-Djna.tmpdir=/tmp/"
S3_MAX_READ_CACHE="-Ducar.unidata.io.s3.maxReadCacheSize=-1"
S3_BUFFER_SIZE="-Ducar.unidata.io.s3.bufferSize=-1"

# Propagate optional AWS_REGION environment variable to Java system property
[ -z "${AWS_REGION}" ] && AWS_REGION_PROP="" || AWS_REGION_PROP="-Daws.region=${AWS_REGION}"

JAVA_OPTS="$JAVA_OPTS $CONTENT_ROOT/ $JAVA_PREFS_SYSTEM_ROOT $NORMAL $HEAP_DUMP $HEADLESS $JNA_DIR $AWS_REGION_PROP $S3_MAX_READ_CACHE $S3_BUFFER_SIZE"
export JAVA_OPTS
