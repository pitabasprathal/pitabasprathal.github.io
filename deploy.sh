#!/bin/bash

docker-compose exec codedaywithmefrontend ng build --prod
git push origin --delete master
git subtree push --prefix codedaywithmeangular/dist origin master