# frozen_string_literal: true

MY_QUERY = <<-GRAPHQL
  query
  {
    Media(id:1)
    {
      title 
      {
        romaji
        english
        native
        userPreferred
      }
      format
      reviews
      {
        edges
        {
          node
          {
            mediaType
            body
            userId
            user
            {
              name
            }
          }
        }
      }
    }
  }
GRAPHQL
