# JRS-demo-dynamic-DB-connection
With this simple example a Jaspersoft Dashboard is querying different databases depending on the logged-in user's organization.
This sample will only run on a pro version of JasperReports Server (JRS).

INSTALLATION

1. Download and Import the repository exportsin your JasperReports Server 6.4 or later</br>
  a.  called DatasourceSwitch.zip </br>
  b. The one called users will import the organizations and users needed.</br>
2. Create the DB and import the data.</br>
  a. The sample is configure to run automatically on a bundle install so using the DB Postgres bundled located at Jasperreportserver(version)/postgresql/bin</br>
  b. Download the sql files that includes all the data we need</br>
  c. Create the 3 databases that our Dashboad will use (in Mac, for Windows you will use psql command directly)</br>
  NOTE: The password for the posgres user is *postgres*
<code>./psql -U postgres</code></br>
<code>create database brazil;</code></br>
<code>create database france;</code></br>
<code>create database germany;</code></br>
<code>\q</code></br>
  c.  Import the data in the DB we've just created using the following commands</br>
  NOTE: in each command line you may need to change the path to the sql file</br>
  NOTE2: You can ignore the error you may see: **ERROR: database "brazil" already exists**</br>
<code>./psql -U postgres brazil < brazil.sql</code></br>
<code>./psql -U postgres france < france.sql</code></br>
<code>./psql -U postgres germany < germany.sql</code></br>
