import http from 'http'

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' })
  res.end('Welcom Node js!\n')
})

// server.listen(3000, 'localhost', () => {
//   console.log('running on http://localhost:3000/')
// })
server.listen(3000)
console.log('Server is listening on port http://localhost:3000')
