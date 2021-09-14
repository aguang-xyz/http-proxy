#!/bin/bash

# Start squid
set -e

create_log_dir() {
  mkdir -p ${SQUID_LOG_DIR}
  chmod -R 755 ${SQUID_LOG_DIR}
  chown -R ${SQUID_USER}:${SQUID_USER} ${SQUID_LOG_DIR}
}

create_cache_dir() {
  mkdir -p ${SQUID_CACHE_DIR}
  chown -R ${SQUID_USER}:${SQUID_USER} ${SQUID_CACHE_DIR}
}

create_log_dir
create_cache_dir

# Initialize cache folder
exec $(which squid) -N -f /etc/squid/squid.conf -z

# Start squid server
exec $(which squid) -f /etc/squid/squid.conf -NYCd 1
