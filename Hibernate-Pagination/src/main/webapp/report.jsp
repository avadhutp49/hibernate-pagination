<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Report</title>
	<style>
			body {
 				 background: #ffc1c1;
			}
			table, th, td {
			  border: 2px solid black;
			  border-collapse: collapse;
			}						
			th, td {
			  background-color: #96D4D4;
			  height: 50px;
			}
	</style>
</head>
	<body>
		<center>
				<h1 style="color: blue; text-align: center">Database Report</h1>	
			<c:choose>
 				<c:when test="${ policiesList ne null || !empty policiesList}">
					<table border = '1'>
						<tr style="font-size:25px">						
							<th style="width:15%">PolicyId</th>
							<th style="width:20%">PolicyName</th>
							<th style="width:20%">PolicyType</th>
							<th style="width:20%">Company</th>
							<th style="width:10%">Tenure</th>
						</tr>
						<c:forEach var="dto" items="${policiesList}">
						<tr style="font-size:20px" align="center">
							<td>${dto.policyId}</td>
							<td>${dto.policyName}</td>
							<td>${dto.policyType}</td>
							<td>${dto.company}</td>
							<td>${dto.tenure}</td>
						</tr>					
						</c:forEach>
					</table>
				</c:when>
			</c:choose>
		<br>
		<h3>
		<c:if test="${pageNo>1 }">
			<b> <a style="text-decoration: none;" href='./controller?pageNo=${pageNo-1}&s1=link'>Previous</a> &nbsp;&nbsp;
			</b>
		</c:if>

		<c:forEach var='i' begin='1' end='${pagesCount}' step="1">
			<b> <a style="text-decoration: none;" href='./controller?pageNo=${i}&s1=link'>[${i}]</a> &nbsp;&nbsp;
			</b>
		</c:forEach>
		
		<c:if test="${pageNo<pagesCount }">
			<b> <a style="text-decoration: none;" href='./controller?pageNo=${pageNo+1}&s1=link'>Next</a> &nbsp;&nbsp;
			</b>
		</c:if>
				
		<h2 style='text-align: center;'>
			<a style="text-decoration: none;" href='./index.jsp'>Home</a>
		</h2>
		
		</center>
		</h3>
	</body>
</html>