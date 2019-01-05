<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - HTML header for main home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.dspace.org/dspace-tags.tld" prefix="dspace" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.util.List"%>
<%@ page import="java.util.Enumeration"%>
<%@ page import="org.dspace.app.webui.util.JSPManager" %>
<%@ page import="org.dspace.core.ConfigurationManager" %>
<%@ page import="org.dspace.app.util.Util" %>
<%@ page import="javax.servlet.jsp.jstl.core.*" %>
<%@ page import="javax.servlet.jsp.jstl.fmt.*" %>

<%
    String title = (String) request.getAttribute("dspace.layout.title");
    String navbar = (String) request.getAttribute("dspace.layout.navbar");
    boolean locbar = ((Boolean) request.getAttribute("dspace.layout.locbar")).booleanValue();

    String siteName = ConfigurationManager.getProperty("dspace.name");
    String feedRef = (String)request.getAttribute("dspace.layout.feedref");
    boolean osLink = ConfigurationManager.getBooleanProperty("websvc.opensearch.autolink");
    String osCtx = ConfigurationManager.getProperty("websvc.opensearch.svccontext");
    String osName = ConfigurationManager.getProperty("websvc.opensearch.shortname");
    List parts = (List)request.getAttribute("dspace.layout.linkparts");
    String extraHeadData = (String)request.getAttribute("dspace.layout.head");
    String extraHeadDataLast = (String)request.getAttribute("dspace.layout.head.last");
    String dsVersion = Util.getSourceVersion();
    String generator = dsVersion == null ? "DSpace" : "DSpace "+dsVersion;
    String analyticsKey = ConfigurationManager.getProperty("jspui.google.analytics.key");
%>

<!DOCTYPE html>
<html>
    <head>
        <title><%= siteName %> - The largest repository on Hinduism</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="Generator" content="<%= generator %>" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" type="image/x-icon"/>
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/jquery-ui-1.10.3.custom/redmond/jquery-ui-1.10.3.custom.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap.min.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/bootstrap-theme.min.css" type="text/css" />
        <link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/ecommons.css" type="text/css" />
        <!--link rel="stylesheet" href="<%= request.getContextPath() %>/static/css/bootstrap/dspace-theme.css" type="text/css" /-->
<%
    if (!"NONE".equals(feedRef))
    {
        for (int i = 0; i < parts.size(); i+= 3)
        {
%>
        <link rel="alternate" type="application/<%= (String)parts.get(i) %>" title="<%= (String)parts.get(i+1) %>" href="<%= request.getContextPath() %>/feed/<%= (String)parts.get(i+2) %>/<%= feedRef %>"/>
<%
        }
    }
    
    if (osLink)
    {
%>
        <link rel="search" type="application/opensearchdescription+xml" href="<%= request.getContextPath() %>/<%= osCtx %>description.xml" title="<%= osName %>"/>
<%
    }

    if (extraHeadData != null)
        { %>
<%= extraHeadData %>
<%
        }
%>
        
        <script type='text/javascript' src="<%= request.getContextPath() %>/static/js/jquery/jquery-1.10.2.min.js"></script>
        <script type='text/javascript' src='<%= request.getContextPath() %>/static/js/jquery/jquery-ui-1.10.3.custom.min.js'></script>
        <script type='text/javascript' src='<%= request.getContextPath() %>/static/js/bootstrap/bootstrap.min.js'></script>
        <script type='text/javascript' src='<%= request.getContextPath() %>/static/js/holder.js'></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/utils.js"></script>
        <script type="text/javascript" src="<%= request.getContextPath() %>/static/js/choice-support.js"> </script>
        <dspace:include page="/layout/google-analytics-snippet.jsp" />

    <%
    if (extraHeadDataLast != null)
    { %>
        <%= extraHeadDataLast %>
    <%
    }
    %>
    

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="<%= request.getContextPath() %>/static/js/html5shiv.js"></script>
  <script src="<%= request.getContextPath() %>/static/js/respond.min.js"></script>
<![endif]-->
    </head>

    <%-- HACK: leftmargin, topmargin: for non-CSS compliant Microsoft IE browser --%>
    <%-- HACK: marginwidth, marginheight: for non-CSS compliant Netscape browser --%>
    <body>

<!-- #### brand at the topmost -->
<div class="cornell-brand">
  <div class="container">
   <div class="row">

    <!-- #### university logo -->
    <div class="col-xs-6">
     <a href="https://nithyanandahinduuniversity.exphosted.com/"><img src=
     "<%= request.getContextPath() %>/image/nhu-logo-header.png"></a>
    </div>

    <!-- #### mobile buttons for user, login, search and menu -->
    <div class="col-xs-6 mobile-buttons">
     <button data-target="#nav-collapse" data-toggle="collapse" class="navbar-toggle"
     type="button">
	   <span class="sr-only">Toggle navigation</span>
	    <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
	 </button>
     <ul class="nav nav-pills visible-xs">
      <li>
        <form method="get" action="<%= request.getContextPath() %>/password-login" style="display: inline">
	     <button class="navbar-toggle navbar-link">
		   <b aria-hidden="true" class="visible-xs glyphicon glyphicon-user"></b>
	     </button>
		</form>
      </li>
     </ul>
    </div>

   </div>
  </div>
 </div>
 <!-- #### end brand at the topmost -->

<header>
 <div class="row">
  <div role="navigation" class="navbar navbar-default navbar-static-top">
   <div class="container">

    <div class="col-sm-6 col-sm-push-6 mobile-nav">
     <div id="nav-collapse" class="navbar-collapse collapse">
      <div class="navbar-header pull-right">

      <!-- #### search -->
       <div class="header-search">
        <form action="<%= request.getContextPath() %>/simple-search" id="ds-search-form" class="" method="get"
         name="ds-search-form">
         <fieldset>
          <div class="input-group">
           <input name="query" class="ds-text-field form-control" type="text" placeholder="Search">
		   <span class="input-group-btn"><button class="ds-button-field btn btn-primary" title="Go">
		    <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		   </button></span>
          </div>
         </fieldset>
        </form>
       </div>

       <!-- #### menu buttons -->
       <ul class="nav navbar-nav">

        <li class="dropdown">
         <a data-toggle="dropdown" class="dropdown-toggle" role="button" href="#" id="browse-dropdown-toggle">
         Browse<b class="caret"></b></a>
         <ul data-no-collapse="true" aria-labelledby="browse-dropdown-toggle" role="menu"
         class="dropdown-menu">
          <li><a href="<%= request.getContextPath() %>/community-list">Communities &amp; Collections</a></li>
          <li><a href="<%= request.getContextPath() %>/browse?type=dateissued">Issue Date</a></li>
          <li><a href="<%= request.getContextPath() %>/browse?type=author">Authors</a></li>
          <li><a href="<%= request.getContextPath() %>/browse?type=title">Titles</a></li>
          <li><a href="<%= request.getContextPath() %>/browse?type=subject">Subjects</a></li>
          <li><a href="<%= request.getContextPath() %>/browse?type=type">Types</a></li>
         </ul>
        </li>

        <li class="dropdown">
         <a data-toggle="dropdown" class="dropdown-toggle" role="button" href="#" id="about-dropdown-toggle">
         About<b class="caret"></b></a>
         <ul data-no-collapse="true" aria-labelledby="about-dropdown-toggle" role="menu"
         class="dropdown-menu">
          <li><a href="<%= request.getContextPath() %>/about">About Nithyananda Library</a></li>
          <li><a href="<%= request.getContextPath() %>/founder">Founder</a></li>
          <li><a href="<%= request.getContextPath() %>/vision">Vision and Mission</a></li>
         </ul>
        </li>

        <li class="dropdown">
         <a data-toggle="dropdown" class="dropdown-toggle" role="button" href="#" id="about-dropdown-toggle">
         Projects<b class="caret"></b></a>
         <ul data-no-collapse="true" aria-labelledby="about-dropdown-toggle" role="menu"
         class="dropdown-menu">
          <li><a href="<%= request.getContextPath() %>/digitization">Digitization</a></li>
          <li><a href="<%= request.getContextPath() %>/preservation">Preservation</a></li>
          <li><a href="<%= request.getContextPath() %>/digitalcollection">Digital Collection</a></li>
          <li><a href="<%= request.getContextPath() %>/cataloging">Cataloging</a></li>
         </ul>
        </li>

        <li class="login hidden-xs"><a href="<%= request.getContextPath() %>/password-login"><span class="hidden-xs">
        Login</span></a></li>

       </ul>

      </div>
     </div>
    </div>

    <!-- #### Jnanalaya page big header -->
    <div class="col-sm-6 col-sm-pull-6">
     <div class="navbar-header">
      <img src="<%= request.getContextPath() %>/image/swamiji_70px.png" style="position: relative;top: 25px;">
      <a class="navbar-brand" href="<%= request.getContextPath() %>"><%= siteName %></a>
      <div class="tagline">The largest repository on Sanatana Hinduism</div>
      <div class="navbar-header visible-xs hidden-sm hidden-md hidden-lg">
       <ul class="nav nav-pills"></ul>
      </div>
     </div>
    </div>

   </div>
  </div>
 </div>
</header>


<main id="content" role="main">
<!-- div class="container banner">
    <div class="row">
        <div class="col-md-9 brand">
            <h1><fmt:message key="jsp.layout.header-default.brand.heading" /></h1>
            <fmt:message key="jsp.layout.header-default.brand.description" /> 
        </div>
        <div class="col-md-3"><img class="pull-right" src="<%= request.getContextPath() %>/image/logo.gif" alt="DSpace logo" />
        </div>
    </div>
</div>
<br/ -->
                <%-- Location bar --%>
<%
    if (locbar)
    {
%>
<!-- div class="container">
    <dspace:include page="/layout/location-bar.jsp" />
</div -->
<%
    }
%>


        <%-- Page contents --%>
<div class="container">
<%--
<% if (request.getAttribute("dspace.layout.sidebar") != null) { %>
    <div class="row">
    <div class="col-md-9">
<% } %>
--%>
