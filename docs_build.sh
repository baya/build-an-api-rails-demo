#!/bin/bash

app_dir=`pwd`
cd $app_dir/app/docs/slate

bundle exec middleman build --clean

cd $app_dir

mv $app_dir/public/docs/index.html $app_dir/app/views/docs
