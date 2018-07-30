<html>

<head><title>Student Confirmation Title</title></head>

<body>

	<h3>OK, The Name is confirmed</h3>

	The student is confirmed : ${param.firstName} ${param.lastName}

	<br/><br/>
	Favorite Programming Language : <br/>
	<!-- display list of "favoriteLanguage" -->
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			
			for (String tempLang : langs) {
			    out.println("<li>" + tempLang + "</li>");
			}
		%>	
	</ul>
</body>

</html>