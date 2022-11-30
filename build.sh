#!/bin/bash
docker build -t asia-northeast3-docker.pkg.dev/day1-dev/gar-day1-dev-docker/puppeteer-ko-fonts:latest .
docker push asia-northeast3-docker.pkg.dev/day1-dev/gar-day1-dev-docker/puppeteer-ko-fonts:latest
