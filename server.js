const express = require('express')
const app = express()
const swaggerUi = require('swagger-ui-express')
const swaggerDocument = require('./swagger.json')

app.use('/api-docs', swaggerUi.serve, swaggerUi.setup(swaggerDocument))

const port = parseInt(process.env.PORT, 10) || 3000

app.listen(port, () => console.log(`running: http://localhost:${port}`))
