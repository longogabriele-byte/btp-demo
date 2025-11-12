# SAP CAP Orders Demo

This repository contains a simple SAP CAP (Cloud Application Programming Model) demo project.  
It demonstrates how to define a service, expose data through OData V4, and deploy to the SAP BTP Cloud Foundry environment.



## Overview
- OData V4 exposure via `OrdersService`  
- Local testing with SQLite  
- Deployment to SAP BTP Trial using Cloud Foundry



## Project Structure
```
btp-demo/
├── db/ # Domain model (Order entity + sample data)
├── srv/ # Service definitions
├── docs/ # Architecture and Deployment guides
├── manifest.yml # Cloud deployment config
└── README.md
```


## Run Locally
```
bash
npm install
cds watch


Then open: 
[http://localhost:4004/odata/v4/orders/Orders]
```
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
[https://btp-demo.cfapps.eu10.hana.ondemand.com/odata/v4/orders/Orders]



## Documentation
- [Architecture Overview](./docs/architecture.md)
- [Deployment Guide](./docs/deployment.md)


## Tech Stack
- SAP CAP (Cloud Application Programming Model)
- Node.js
- SQLite / HANA (HDI-shared)
- SAP BTP Cloud Foundry




Created by Gabriele Luca Longo  

