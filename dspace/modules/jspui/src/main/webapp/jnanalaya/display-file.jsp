<%--

    Copyright Nithyananda Hindu University 2019

--%>
<%--
  - Reads file with fileName from Dspace install dir/config folder
   and displays it, eg about.html, license
--%>

<%@ page import="org.jnanalaya.app.util.FileUtil"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%
    String fileName = config.getInitParameter("fileName");
    String textFromFile = FileUtil.readFile(fileName);
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/jquery-ui-1.10.3.custom/redmond/jquery-ui-1.10.3.custom.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap-theme.min.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/ecommons.css" type="text/css" />
     </head>

<body>
    <dspace:layout locbar="nolink" titlekey="About">
      <div class="about" role="main">
        <div class="row primary-wrapper" id="maincontent">
          <%= textFromFile %>
        </div>
      </div>
    </dspace:layout>
</body>