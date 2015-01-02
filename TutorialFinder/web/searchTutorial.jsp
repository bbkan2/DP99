<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Search Tutorial</title>
</head>
<body>
<s:form action="tutorials/getTutorial">
	<s:textfield label="Enter the language you want to search for" key="language" />
	<s:submit />
</s:form>
</body>
</html>