# Graphql::Client::Consumer
This is a simple consumer library of the graphql-client gem to show how parsing a graphql-schema consumes memory.

## Installation
Don't try to consume graphql-client-consumer as a gem. It is only a test project with one simple ruby script.

## Usage and Development
Clone this repository on your development machine.
Install its dependencies:

    $ bundle install

Then call test.rb as follows:

    $ bundle exec ./lib/test.rb

## Functionality
The script executes the following sequence several times:
* It creates an HTTP-client.
* It gets the graphql-schema of a public GraphQL-API.
* It creates a GraphQL-Client.
* It parses a query.
* It starts the garbage collection.
* It logs the current memory consumption.

## Results
![Testrun for 500 iterations](./test_runs/TestAnilist_500Iterations.png)

## Contributing
Suggestions and pull requests are welcome on GitHub at https://github.com/reureu/graphql-client-consumer.

