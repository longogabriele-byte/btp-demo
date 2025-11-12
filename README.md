# SAP CAP Orders Demo


[![Built with: SAP CAP](https://img.shields.io/badge/Built%20with-SAP%20CAP-blue?logo=sap)](https://cap.cloud.sap)
[![Node.js](https://img.shields.io/badge/Node.js-18%2B-brightgreen?logo=node.js)](https://nodejs.org/)
[![License](https://img.shields.io/badge/license-MIT-lightgrey)]()

A simple, **Cloud-ready demo** built with the **SAP Cloud Application Programming Model (CAP)**.  
It provides a small Orders service (`OrdersService`) exposed via **OData V4** and includes a minimal **HTML frontend**.  
Designed for local development with **SQLite**, easily deployable to **SAP BTP Cloud Foundry**.

---



## Overview
- OData V4 exposure via `OrdersService`  
- Local testing with SQLite  
- Deployment to SAP BTP Trial using Cloud Foundry



## Project Structure
```
btp-demo/
├── db/ # Domain model (Order entity + sample data)
├── srv/ # Service definitions
├── app/ # HTML frontend (Orders table)
├── manifest.yml # Cloud deployment config
└── README.md
```


## Run Locally
```
bash
npm install
cds watch
```

 
Then open: 
[Open local CAP service](http://localhost:4004/odata/v4/orders/Orders)

You will see JSON data like:

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
After deployment, your service will be available under:  
[Open on SAP BTP](https://btp-demo.cfapps.eu10.hana.ondemand.com/odata/v4/orders/Orders)


## Documentation
- [Architecture Overview](./docs/architecture.md)
- [Deployment Guide](./docs/deployment.md)


## Tech Stack
- SAP CAP (Cloud Application Programming Model)
- Node.js
- SQLite / HANA (HDI-shared)
- SAP BTP Cloud Foundry




Created by Gabriele Luca Longo  

