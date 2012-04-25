<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Google App Engine - X-AppEngine-Country,X-AppEngine-Region,X-AppEngine-City & X-AppEngine-CityLatLong</title>
</head>
<body>
<h1>Location Testing .. 1..2...3!</h1>
<p>I wrote this Hello World version of testing out the header. See if it works for you and let me know if it does not. The code is as simple as this:</p>
<pre>request.getHeader("X-AppEngine-Country")</pre>
<pre>request.getHeader("X-AppEngine-Region")</pre>
<pre>request.getHeader("X-AppEngine-City")</pre>
<pre>request.getHeader("X-AppEngine-CityLatLong")</pre>
<h2>Hello My Friend. Your co-ordinates are: </h2>
<h3> Country : <%=request.getHeader("X-AppEngine-Country") %></h3>
<h3> Region : <%=request.getHeader("X-AppEngine-Region") %></h3>
<h3> City : <%=request.getHeader("X-AppEngine-City") %></h3>
<h3> Latitude,Longitude : <%=request.getHeader("X-AppEngine-CityLatLong") %></h3>
<br/>
<img src="http://maps.googleapis.com/maps/api/staticmap?markers=color:blue%7Clabel:O%7C<%=request.getHeader("X-AppEngine-CityLatLong")%>&zoom=12&size=400x400&sensor=false"/>
<br/>
<p>Let us check all the other headers:</p>
<TABLE>
<TR><TD>Header Name</TD><TD>Header Value</TD></TR>
<%
Enumeration headerNames = request.getHeaderNames();
while(headerNames.hasMoreElements()) {
  String headerName = (String)headerNames.nextElement();
  out.println("<TR><TD>" + headerName);
  out.println("</TD><TD>" + request.getHeader(headerName) + "</TD>");
}
%>
</TABLE>
<p>If you believe that the country,region,city,lat,long detected is wrong, please let me know in the comments.</p>
<p>For more information on Google App Engine, check out some other <a href="http://www.rominirani.com/category/cloud-computing/google-app-engine/">articles</a>.</p>
</body>
</html>