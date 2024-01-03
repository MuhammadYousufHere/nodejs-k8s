import express from 'express'
import os from 'os'
import fs from 'fs'

const app = express()

// Get the host IP address of the server.

function getIPAddr() {
  // For Test into personal laptop with Wi-Fi Connection.

  let hostIP
  // console.log(os.networkInterfaces())
  if (os.networkInterfaces()['Wi-Fi']) {
    return (hostIP = os.networkInterfaces()['Wi-Fi'][1]['address'])
  }

  // For Production - AWS EC2.
  hostIP = os.networkInterfaces()['eth0'][0]['address']
  return hostIP
}
console.log(getIPAddr())
function getFinalHTML() {
  // Get the index file content.
  let htmlContent = fs.readFileSync('./pages/index.html', 'utf-8')

  // Get the host IP.
  let hostIP = getIPAddr().toString()

  // Replace the {HOSTIP} with host IP address.
  let finalHTML = htmlContent.replace('{HOSTIP}', hostIP)
  return finalHTML
}
app.get('/', (req, res) => {
  res.send(getFinalHTML())
})
app.listen(8080, (error) => {
  if (!error)
    console.log(`Server is listening on the network http://${getIPAddr()}:8080`)
})
