# JRS-demo-dynamic-DB-connection
With this simple example a Jaspersoft Dashboard is querying different databases depending on the logged-in user's organization.
This sample will only run on a pro version of JasperReports Server (JRS).

INSTALLATION

1. Download and Import the repository exportsin your JasperReports Server 6.4 or later</br>
  a.  called DatasourceSwitch.zip </br>
  b. The one called users will import the organizations and users needed.</br>
2. Create the DB and import the data.</br>
  a. The sample is configure to run automatically on a bundle install so using the DB Postgres bundled located at Jasperreportserver(version)/postgresql/bin</br>
  b. Download the sql files</br>
  c. Create the DB and Import the data in them using the following commands (in Mac)</br>
<code>./psql -U postgres brazil < brazil.sql</code></br>
<code>./psql -U postgres france < france.sql</code></br>
<code>./psql -U postgres germany < germany.sql</code></br>
