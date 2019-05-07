#!/bin/bash
result=0

echo "################ inst_statsd ################"
echo "################ Running tests ################"
bundle exec appraisal install
bundle exec appraisal rspec spec
let result=$result+$?

if [ $result -eq 0 ]; then
  echo "SUCCESS"
else
  echo "FAILURE"
fi

exit $result
