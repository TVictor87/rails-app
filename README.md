# Rails App with Elasticsearch and PostgreSQL

## Import Prompts:
1. Ensure that your Elasticsearch server is running.
2. Run in Rails console:
`CsvImportService.new.call(Rails.root.join('tmp', 'prompts.csv'))`

*prompts.csv file is located in the tmp directory of your Rails project. Adjust the path if your file is in a different location.*

## Dependencies
* Ruby version: 3.2.2
* Elasticsearch version: 7.17.15
* PostgreSQL version: 14.10