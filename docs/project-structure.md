# Project Structure

The project follows the standard SAP CAP (Cloud Application Programming Model) layout, separating data, service, and UI layers.  
This structure supports both local development with SQLite and deployment on SAP BTP Cloud Foundry.

```
btp-demo/
├── app/
│ └── index.html
│
├── db/
│ ├── schema.cds
│ └── data/
│ └── demo-Orders.csv
│
├── srv/
│ ├── service.cds
│ └── server.js
│
├── docs/
│ ├── architecture.md
│ ├── deployment.md
│ └── project-structure.md
│
├── manifest.yml
├── package.json
└── README.md
```

---

### Explanation

- **app/** – Contains a simple HTML frontend that fetches and displays Orders data from the OData service.  
- **db/** – Defines the data model (`schema.cds`) and provides sample data (`demo-Orders.csv`) for local SQLite usage.  
- **srv/** – Contains CAP service definitions and Node.js server logic exposing the `OrdersService` via OData V4.  
- **docs/** – Includes project documentation such as architecture overview, deployment guide, and this structure description.  
- **manifest.yml** – Cloud Foundry deployment descriptor used for deploying the app to SAP BTP.  
- **package.json** – Lists dependencies, CAP runtime configuration, and NPM scripts.  
- **README.md** – Entry point for project overview, usage, and documentation links.

---

### Notes
This structure ensures:
- Clear separation between data, service, and UI layers.  
- Easy local testing with SQLite.  
- Seamless transition to SAP HANA and Cloud Foundry deployment.



