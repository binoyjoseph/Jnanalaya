<%--

    The contents of this file are subject to the license and copyright
    detailed in the LICENSE and NOTICE files at the root of the source
    tree and available online at

    http://www.dspace.org/license/

--%>
<%--
  - Footer for home page
  --%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page contentType="text/html;charset=UTF-8" %>

<%@ page import="java.net.URLEncoder" %>
<%@ page import="org.dspace.app.webui.util.UIUtil" %>

<%
    String sidebar = (String) request.getAttribute("dspace.layout.sidebar");
%>

            <%-- Right-hand side bar if appropriate --%>
<%
    if (sidebar != null)
    {
%>
	</div>
	<div class="col-md-3">
                    <%= sidebar %>
    </div>
    </div>       
<%
    }
%>
</div>
</main>
            <%-- Page footer --%>

<div class="ecommons-footer">
  <div class="container">
	<div class="row">
	  <div class="col-sm-3 nav-list">
		<h5>
		  Explore Nithyananda Library
		</h5>
		<ul class="nav">
		  <li><a href="<%= request.getContextPath() %>/">Home</a></li>
		  <li><a href="<%= request.getContextPath() %>/community-list">Browse Communities &amp; Collections</a></li>
		  <li><a href="<%= request.getContextPath() %>/browse?type=dateissued">Browse by Issue Date</a></li>
		  <li><a href="<%= request.getContextPath() %>/browse?type=author">Browse by Author</a></li>
		  <li><a href="<%= request.getContextPath() %>/browse?type=title">Browse by Title</a></li>
		  <li><a href="<%= request.getContextPath() %>/browse?type=subject">Browse by	Subject</a></li>
		  <li><a href="<%= request.getContextPath() %>/browse?type=type">Browse by Type</a></li>
		</ul>
	  </div>
	  <div class="col-sm-3 nav-list">
		<h5>
		  About Nithyananda Library
		</h5>
		<ul class="nav">
		  <li><a href="<%= request.getContextPath() %>/about">About</a></li>
		  <li><a href="<%= request.getContextPath() %>/founder">Founder</a></li>
		  <li><a href="<%= request.getContextPath() %>/vision">Vision and Mission</a></li>
		  <li><a href="<%= request.getContextPath() %>/statistics">Statistics</a></li>
		  <li><a href="<%= request.getContextPath() %>/feedback">Contact Us</a></li>
		</ul>
	  </div>
	  <div class="col-sm-3 nav-list">
		<h5>
		  Projects
		</h5>
		<ul class="nav">
		  <li><a href="<%= request.getContextPath() %>/digitization">Digitization</a></li>
		  <li><a href="<%= request.getContextPath() %>/preservation">Preservation</a></li>
		  <li><a href="<%= request.getContextPath() %>/digitalcollection">Digital Collection</a></li>
          <li><a href="<%= request.getContextPath() %>/cataloging">Cataloging</a></li>
		</ul>
	  </div>
	  <div class="col-sm-3 nav-list">
        <h5>
          Donate
        </h5>
        <ul class="nav">
          <li><a href="<%= request.getContextPath() %>/submit">Submit your work</a></li>
          <li><a href="<%= request.getContextPath() %>/howtosubmit">How to submit</a></li>
        </ul>
		<h5>
		  My Account
		</h5>
		<ul class="nav">
		  <li class="login-link"><a href="<%= request.getContextPath() %>/password-login">Login</a></li>
		</ul>
	  </div>
	</div>
  </div>
</div>

<footer>
  <div class="container">
  <div class="row">
	<div class="col-md-3">
	  <a href="https://nithyanandahinduuniversity.exphosted.com/"><img class="cul-logo img-responsive"
	  alt="Nithyananda Hindu University" src="<%= request.getContextPath() %>/image/nhu-logo-footer.png"></a>
	</div>
	<div class="col-md-9 cul-menu">
	  <h3>
		Contact us
	  </h3>
	  <ul class="nav footer-nav">
		<li><a href="#">Ask a Librarian</a></li>
	  </ul>
	  <h3>
		Library Resources
	  </h3>
	  <ul class="nav footer-nav">
		<li><a href="http://nithyanandajnanalaya.org/">Nithyananda Jnanalaya</a></li>
		<li><a href="http://satsang.nithyanandajnanalaya.org/">Ask the Avatar</a></li>
		<li><a href="http://grantha.nithyanandajnanalaya.org/">OPAC</a></li>
		<li><a href="https://nithyanandahinduuniversity.exphosted.com/">Nithyananda Hindu University</a></li>
		<li><a href="http://nithyanandatruth.org/">Nithyananda Truth</a></li>
		<li><a href="http://nithyananda.org/">Official Home Page </a></li>
	  </ul>
	</div>
  </div>
  <div class="row footer-copyright">
	<div class="col-sm-12">
	  <p>
		&copy; 2019 Nithyananda Hindu University, 9720 Central Avenue, Montclair CA – 917633
	  </p>
	</div>
  </div>
  </div>
  <a class="hidden" href="/htmlmap">&nbsp;</a>
  <p>
    &nbsp;
  </p>
</footer>

    </body>
</html>
