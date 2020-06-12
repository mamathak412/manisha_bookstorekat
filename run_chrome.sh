rm -rfv ./reports/chrome
mkdir -p ./reports/chrome

docker run -t --rm -v $(pwd):/katalon/katalon/source:ro katalonstudio/katalon:6.3.3 katalon-execute.sh -browserType="Chrome" -retry=0 -statusDelay=15 -testSuitePath="Test Suites/BookStore"  -execution Profile="default"
