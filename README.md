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
The script execute the following sequence several times:
* It creates an HTTP-client.
* It gets the graphql-schema of a public GraphQL-API.
* It creates a GraphQL-Client.
* It parses the schema.
* It starts the garbage collection.
* It logs the current memory consumption.

## Contributing
Suggestions and pull requests are welcome on GitHub at https://github.com/[USERNAME]/graphql-client-consumer.
