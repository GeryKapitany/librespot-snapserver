#!/bin/bash
set -euo pipefail

exec snapserver -c /usr/etc/snapserver.conf
