<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
 <link href="webjars/bootstrap/4.0.0/css/bootstrap.min.css"
  rel="stylesheet" />
 <script src="webjars/bootstrap/4.0.0/js/bootstrap.min.js"></script>
 <script src="webjars/jquery/3.0.0/jquery.min.js"></script>
</head>

<script type="text/javascript">
function getHistory(key) {
	debugger;
	$("#base").val(key);
	alert($("#base").val());
	$("#converter1").submit();
	$("#converter2").submit();
}
</script>

<style type="text/css">
.button {
    display: block;
    width: 115px;
    height: 38px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
}
</style>


 <form:form  modelAttribute="currencyConversionBean"   method="GET"  action="" id ="converter1" >
 
 <br>
 <br>
 <center>
<table border="1">
  <tr>
    <th>Currency type</th>
    <th>Euro value</th>
    <th>History</th>
  </tr>
  
   <c:forEach items="${currencyMap}" var="currencyMap" varStatus="counter">
                    <tr>
                        <td>${currencyMap.key}</td>
                        <td>${currencyMap.value}</td>
                       <td><a class = "button" href="/${currencyMap.key}/history"> History</a></td>
                    </tr>
                </c:forEach>
  
</table>
</center>
<td>
<br>
<center><a class = "button" href="/history"> All History</a></center>
</form:form>