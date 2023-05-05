<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Index</title>

	<style>
		body {	 
			background: pink;
		}
		
		table, th, td {
			border: 2px solid black;
			border-collapse: collapse;
			width: 60%;
		}
						
		th, td {
			background-color: #96D4D4;
			height: 50px;
		}
		
		th{	
			width: 50%;	
		}
	</style>
	
</head>
	<body>
	<br>
			<h1 style="color: #0000CD; text-align: center">Pagination Application</h1>	
	<br>		
			<form action="./controller" method="get">
				<table align="center" >
					<tr>
						<th > <h3>Enter Page Size </h3></th>					
						<td align="center">
							<input type='number' name='pageSize' id='pageSize' />
						</td>					
					<tr>
					<tr>					
						<td colspan="2" align="center">
							<input type='submit' value='generatereport' name='s1'/>
						</td>				
					<tr>						
				</table>
			</form>	
	</body>
	
</html>