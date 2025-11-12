# CAP Orders Service (SAP BTP Demo)


[![Built with: SAP CAP](https://img.shields.io/badge/Built%20with-SAP%20CAP-blue?logo=sap)](https://cap.cloud.sap)
[![Node.js](https://img.shields.io/badge/Node.js-18%2B-brightgreen?logo=node.js)](https://nodejs.org/)
[![License](https://img.shields.io/badge/license-MIT-lightgrey)]()

A simple, **cloud-ready full-stack demo** built with the **SAP Cloud Application Programming Model (CAP)**.  
It exposes an **OrdersService** via **OData V4**, uses **SQLite** for local development, and can be deployed to **SAP BTP Cloud Foundry**.


---



## Overview
- OData V4 exposure via `OrdersService`
- Local testing with SQLite
- Deployment to SAP BTP Trial using Cloud Foundry

---

## Project Structure
```
btp-demo/
├── app/          # HTML frontend
├── db/           # Data model + sample data
├── srv/          # CAP service definitions
├── docs/         # Architecture, deployment, structure docs
├── manifest.yml  # Cloud Foundry deployment descriptor
├── package.json  # Dependencies and CAP config
└── README.md     # Project overview
```
See detailed explanation here → [Project Structure](./docs/project-structure.md)


## Run Locally
```
bash
npm install
cds watch
```

 
Then open: 
[Local Service (localhost)](http://localhost:4004/odata/v4/orders/Orders)

Example output (JSON):

```
{
  "@odata.context": "$metadata#Orders",
  "value": [
    { "ID": 1, "Name": "Laptop Order" },
    { "ID": 2, "Name": "Cloud Subscription" },
    { "ID": 3, "Name": "Training License" }
  ]
}
```

## Deployment (SAP BTP)
After deployment, your service will be available under:[Cloud Service (SAP BTP Cloud Foundry)](https://btp-demo.cfapps.eu10.hana.ondemand.com/odata/v4/orders/Orders)<br>
See detailed steps in[Deployment Guide](./docs/deployment-guide.md)

## Documentation
- [Architecture Overview](./docs/architecture-overview.md)
- [Deployment Guide](./docs/deployment-guide.md)
- [Project Structure](./docs/project-structure.md)

## Tech Stack
- SAP CAP (Cloud Application Programming Model)
- Node.js
- SQLite / SAP HANA (HDI-shared)
- SAP BTP Cloud Foundry





Created by **Gabriele Luca Longo**
