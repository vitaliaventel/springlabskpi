<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
         <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lab 1 [Task 1] Results</title>
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

<header class="w3-header-page w3-header-lab61"  id="home">
  <div class="bunny"></div>
</header>

<!-- Page content -->
<div class="w3-container w3-padding-8 w3-lab61" id="lab61">
  <h3 class="w3-border-bottom w3-border-light-grey w3-padding-8">Laboratory work 6.1</h3>
  <p><b>Задание 1.</b>Для всех заданий написать функцию, принимающую обычный массив в качестве аргумента и возвращающий коллекцию, как результат. Исходный массив заполнить случайными числами в диапазоне от -50 до +50. Вычесть из каждого числа наибольшее число (далее «максимум»).</p>
  
      <form class="w3-padding-16" >
      <label>Entry storage</label><input class="w3-input" type="text" value="${theEntryStorage}" readonly}>
     <label>Max value</label><input class="w3-input" type="text" value="${maxValue}" readonly}>
    <label>No max value storage</label> <input class="w3-input" type="text" value="${noMaxStorage }" readonly}>
    </form>
    
</div>  
   
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>&#169; BAND 3 </br> kyiv / ukraine</p>
</footer>

</div>
</body>
</html>