#!/bin/bash

source $1

      curl --silent -T "${war}" -u ${user}:${password} "${url}"

printf '{"changed": true, "failed": false, "msg": "New application was deployed"}'
