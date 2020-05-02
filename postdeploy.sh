#!/bin/bash

if [ "$SOME_ENV" = "SOME_VALUE" ] ; then
  exec postdeploy_command -p $PORT
else
  echo "Postdeploy hook disabled"
  exit 0
fi