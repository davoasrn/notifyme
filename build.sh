#!/bin/bash

# This project us published using https://github.com/atapas/react-package-publisher

#*************************************************
#******* Check Node, NPM and Yarn Versions *******
#*************************************************
echo "Node version: `node -v`"
echo "NPM version: `npm -v`"
echo "Yarn version: `yarn -v`"

#******* Remove the existing dist folder ******
rm -rf dist
#******* Remove the existing index.js file ******
rm -rf index.js

#******* Perform yarn install(Dependency Management) ******
yarn install

#************************************************************************
#******* Build Components => create index.js file and dist folder *******
#************************************************************************
yarn build_component
yarn build

#******************************************************
#******* Copy other required files to the dist folder *******
#******************************************************
cp ./package.json ./dist
[ -f README.md ] && cp ./README.md ./dist
[ -f *.scss ] && cp ./*.scss ./dist/
