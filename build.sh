#!/bin/bash
gitbook build
find ./ -name *.html | xargs sed -i 's/"gitbook":{"version":"3.2.3","time":"........................"}/"gitbook":{"version":"3.2.3","time":"2020-01-01T00:00:00.000Z"}/g'

