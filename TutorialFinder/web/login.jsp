<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
</head>
<body>
<s:form action="login">
<!-- because modeldriven user, key can be directly the var of user -->
	<s:textfield label="Login ID" key="userId" />
	<s:password label="Passowrd" key="password" />
	<s:submit />
</s:form>
</body>
</html>