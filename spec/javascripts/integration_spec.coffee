request = require 'request'

describe 'Integration test root', ->

  # base uri
  BASE_URI = 'http://localhost:4000'
  
  it 'get: /', ->
    request "#{BASE_URI}", (error, res, body) ->
      expect(res.statusCode).toBe(200)
      expect(body).toContain("Hello, coffeescript")
