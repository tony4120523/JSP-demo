<html>

<body>
<%!
	String MakeItLower(String data) {
    	return data.toLowerCase();
	}
%>

The Lower Case Of "Hello World" : <%= MakeItLower("Hello World") %>
</body>

</html>