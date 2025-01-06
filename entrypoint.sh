#!/bin/bash

WORKDIR=/app

echo "enter workdir"
cd $WORKDIR

echo "install depedencies"
npm install

echo "start app.js"
node app.js