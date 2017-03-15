<%@ page language="java" contentType="text/html;  charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lab 1 [Task 1]</title>
    <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>
  
<body>
<div class="page-wrap">
  
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-wide w3-padding-8 w3-card-2">
    <a href="${pageContext.request.contextPath}" class="w3-margin-left w3-bar-item w3-button"><b>BAND</b> 3</a>
    <!-- Float links to the right. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
      <a href="${pageContext.request.contextPath}#projects" class="w3-bar-item w3-button">Projects</a>
      <a href="${pageContext.request.contextPath}#about" class="w3-bar-item w3-button">About</a>
      <a href="${pageContext.request.contextPath}#contact" class="w3-bar-item w3-button w3-margin-right">Contact</a>
    </div>
  </div>
</div>

<!-- Header -->
<header class="w3-header-page w3-header-lab62"  id="home">
 
</header>

<div class="w3-padding-8">
     <h3>All questions:</h3>
 				 <table class="w3-table">
					<thead>
						<tr>
							<th>Question</th>
							<th>Answer1</th>
							<th>Answer2</th>
							<th>Answer3</th>
							<th>Answer4</th>
							<th>Answer5</th>
							<th>Correct answer</th>
							<th>Mark</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${taskList}" var="task">
							<tr>
								<td><c:out value="${task.question}" /></td>
								<td><c:out value="${task.answer1}" /></td>
								<td><c:out value="${task.answer2}" /></td>
								<td><c:out value="${task.answer3}" /></td>
								<td><c:out value="${task.answer4}" /></td>
								<td><c:out value="${task.answer5}" /></td>
								<td><c:out value="${task.correctAnswer}" /></td>
								<td><c:out value="${task.mark}" /></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
      </div>
   
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>&#169; BAND 3 </br> kyiv / ukraine</p>
</footer>

</div>
</body>
</html>