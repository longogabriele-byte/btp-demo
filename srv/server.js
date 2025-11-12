const cds = require('@sap/cds')
const morgan = require('morgan')

// Optional: Logging aktivieren
cds.once('bootstrap', app => {
  app.use(morgan('tiny'))
})

// CAP-Server starten
module.exports = cds.server