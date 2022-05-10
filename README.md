# ODK-Central-WebMap 

The basic idea for this web map originated from https://github.com/OMDTZ/MillsMap
, a WFP-funded OMDTZ project that collected milling machine data across Tanzania.
The goal of this web map is to allow users to connect forms from ODK central and be able to visualize the data points and graphs. As time passes, the majority of the functionality will be upgraded with the support of the community. 

Roughly, The component and structure of the map will be as follows

##Front end
-Web map JS framework (Leaflet)
    -Iddy homework: make a static webmap from a small CSV of data from an OMDTZ project 
-JS graphing/charting (D3.js)
    -Iddy and Tim homework: make a couple of simple graphs with filtering that the user can select which data they want graphed
-Live visualisation of data 
    -JS async (promises) and ODK/other integration
        -Homework: Make a Leaflet map that starts up and shows the background + spinner, then makes an async request (promise) to fetch JSON data and use it to create the points. This is done by copying Reeta’s code!
    -External spreadsheets/CSV
        -Also can be done using promises (you have to have the external spreadsheet, or csv, or JSON somewhere accessible to the Web app, for example on a server behind an Nginx instance)
        -Or from Google Sheets (our old friend Chris Arderne, who ran the Mini-Grids project for the World Bank/IFC with HOT in 2017, has a blog post showing how to do this)
        -Or you can set up user upload
-Classification?
    -Example of classification from data using different color lines
##Back end
    -Dynamic HTML framework (Flask)
    -Ajax/Data syncing (async Python requests, ODK Central client)
    -Data science/cleaning (Pandas or maybe just list comprehensions)
    -DevOps
        -Web engine (Nginx/UWSGI)
        -Secure Socket Layer (letsencrypt)
        -Domains (Namecheap, DNS settings)
        -Databases
        -Users and authentication
        -Server management
        -Linux servers (digital Ocean etc)
        -Serverless (DO apps, Google App Engine, AWS, Heroku, etc)

