import express from 'express'

const app = express()

app.get('/', (req, res) => {
  res.send(`<h1>Hello World</h1>`)
})
app.listen(8080, () => {
  console.log(`Server is listening on the post 8080`)
})
