# AppEngine Location Header Sample

This is a simple Java Web application that runs on Google AppEngine. It demonstrates support for the following headers in each HTTP Request that is populated by AppEngine automatically.

- X-AppEngine-Country
- X-AppEngine-Region
- X-AppEngine-City
- X-AppEngine-CityLatLong

Refer to the war/index.jsp file for the source code.

There is not much to it but it demonstrates that if you have an AppEngine application and need access to the location information for the incoming request, you do not need to juggle much with the IP Address and make some additional network calls. 

Blog Post on this feature : http://www.rominirani.com/2012/04/25/appengine-location-detection-update-x-appengine-country-and-more/