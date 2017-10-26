# JRS-demo-dynamic-DB-connection
With this simple example a Jaspersoft Dashboard is querying different databases depending on the logged-in user's organization.
This sample will only run on a pro version of JasperReports Server (JRS).

INSTALLATION

1. Download and Import the repository exports in your JasperReports Server Enterprise 6.4 or later</br>
  a. DatasourceSwitch.zip will import the Dashboard and all the resources it uses including the dynamic datasource connection</br>
  b. organization_1_JRSexport includes the sub-organizations, their profile attributes and the users that are needed.</br>
  NOTE: You can import these with jasperadmin user in default organization</br>
2. Create the DB and import the data.</br>
  a. The sample is configure to run automatically on a bundle install so using the DB Postgres bundled located at Jasperreportserver(version)/postgresql/bin</br>
  b. Download the sql files that includes all the data we need</br>
  c. Create the 3 databases that our Dashboad will use (in Mac, for Windows you will use psql command directly)</br>
  NOTE: The password for the posgres user is **postgres**</br>
<code>./psql -U postgres</code></br>
<code>create database brazil;</code></br>
<code>create database france;</code></br>
<code>create database germany;</code></br>
<code>\q</code></br>
  c.  Import the data in the DB we've just created using the following commands</br>
  NOTE: in each command line you may need to change the path to the sql file</br>
  NOTE2: You can ignore the error you may see: *ERROR: database "brazil" already exists*</br>
<code>./psql -U postgres brazil < brazil.sql</code></br>
<code>./psql -U postgres france < france.sql</code></br>
<code>./psql -U postgres germany < germany.sql</code></br>

DEMO

Once you have created the DBs and imported the resources in JRS you are ready to test the dynamic DB connection by viewing the **Public/Source Switch/Freight Dashboard** being logged as brazilian_user then french_user and then german_user.</br>
Note how the data is different and notice that each user will only see the data from their respective DB.
