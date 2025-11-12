```
## Deployment Guide

This document explains how to run and deploy the **btp-demo** CAP application  
both locally and in the **SAP BTP Cloud Foundry** environment.

---

## Local Development

Run the project on your machine with **SQLite** and **CAP’s local runtime**.

### 1️. Install dependencies
```bash
npm install

cds watch

```

Now open in your browser:
[localhost](http://localhost:4004/odata/v4/orders/Orders)

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
Deploy to SAP BTP Cloud Foundry
This section assumes you have access to a BTP Trial account
and the Cloud Foundry CLI (cf) installed.


1.Log in to your Cloud Foundry org

```
cf login -a https://api.cf.eu10.hana.ondemand.com
```

2.Build the project for production
```
npx cds build --production
```

3.Push the app to Cloud Foundry
```
cf push
```

Cloud Foundry will:

create the app using the configuration in manifest.yml
build the CAP runtime
create (or bind) an SAP HANA service if configured

manifest.yml Example
```
applications:
  - name: btp-demo
    memory: 256M
    random-route: true
    buildpacks:
      - nodejs_buildpack
    command: npm start
```

In a real deployment, you would also bind an HDI container (SAP HANA database service).


Result
Once deployed successfully, your service is available at:
```
https://btp-demo.cfapps.eu10.hana.ondemand.com/odata/v4/orders/Orders
```
If you open that URL, you should see the same JSON output as locally.


Summary
```
Step	Command	Description
1	npm install	Install dependencies
2	cds watch	Run locally with SQLite
3	npx cds build --production	Build deployable version
4	cf push	Deploy to SAP BTP Cloud Foundry
```
This setup ensures your project is cloud-ready and follows SAP’s CAP deployment best practices.