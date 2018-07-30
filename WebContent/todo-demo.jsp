<%@ page import="java.util.*" %>
<html>

<body>

<!-- Step 1 : Create HTML form -->

<form action="todo-demo.jsp">
	Add new item : <input type="text" name="theItem" /> 
	<input type="submit" value="Submit">
</form>

<!-- Step 2 : Add new item to "TO DO list" -->

<%
	// get the TO DO items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");

	// if the TO DO items doesn't exit, then create the new one
	if (items == null) {
	    items = new ArrayList<String>();
	    session.setAttribute("myToDoList", items);
	}
	
	// see if there is a data to add
	String theItem = request.getParameter("theItem");
	if (theItem != null) {
	    items.add(theItem);
	}

%>


<!-- Step 3 : Display all "TO DO list" item from session -->
<hr>
<b>To Do List Items : </b>

<ol>

<%
	for (String temp : items) {
	    out.println("<li>" + temp + "</li>");
	}
%>

</ol>


</body>

</html>





