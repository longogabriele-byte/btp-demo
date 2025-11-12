```
# Architecture Overview

The **btp-demo** project is a small, full-stack example built with the  
**SAP Cloud Application Programming Model (CAP)**.  
It demonstrates how to define a data model, expose it as an OData service,  
and connect it to a simple HTML frontend — both locally and in the cloud.

---

## Project Architecture

┌──────────────────────────────┐
│ Frontend (app/) │
│ index.html (HTML + JS) │
│ fetch('/odata/v4/orders/Orders') │
│ → Displays Orders table │
└──────────────┬───────────────┘
│ OData V4 Request
▼
┌──────────────────────────────┐
│ Service Layer (srv/) │
│ OrdersService │
│ → Exposes entity Orders │
│ → Uses CAP runtime (Node.js)│
└──────────────┬───────────────┘
│ CDS Model Access
▼
┌──────────────────────────────┐
│ Database Layer (db/) │
│ schema.cds defines Orders │
│ demo-Orders.csv = seed data │
│ SQLite locally / HANA on BTP│
└──────────────────────────────┘

---

## How It Works

1. The user opens the frontend at  
   `http://localhost:4004/`
2. The browser’s JavaScript calls  
   `/odata/v4/orders/Orders`
3. The CAP runtime receives the request via **OrdersService**
4. CAP queries data from **SQLite** (or **HANA** on SAP BTP)
5. JSON is returned to the frontend and rendered as a table

---

## Cloud-Ready Design

| Environment | Database | Access URL |
|--------------|-----------|-------------|
| Local Dev    | SQLite    | `http://localhost:4004` |
| SAP BTP CF   | SAP HANA  | `https://<your-app>.cfapps.eu10.hana.ondemand.com` |

The `manifest.yml` file defines how the app is deployed to **SAP BTP Cloud Foundry**,  
including database binding and runtime configuration.

---

## Summary

This demo follows the **classic CAP 3-layer model**:

- **db/** → Defines entities and initial data  
- **srv/** → Exposes OData V4 service  
- **app/** → Consumes service via frontend  

It’s minimal, clean, and shows the full development lifecycle:  
**Model → Service → OData → UI → Cloud Deployment**.