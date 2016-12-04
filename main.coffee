express  = require 'express'
app = express()

# config
app.set "port", app.get('port') or '4000'


# end-points
app.get '/', (req, res) ->
  res.send JSON.stringify({message: 'Hello, coffeescript!'})


# server starting
app.listen app.get('port'), ->
  console.log "Listening at http://localhost:#{app.get('port') || 4000}/"
