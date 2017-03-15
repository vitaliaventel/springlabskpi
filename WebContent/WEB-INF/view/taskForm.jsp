<%@ page language="java" contentType="text/html;  charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<!-- Page content -->
<div class="w3-content w3-padding" style="max-width:1564px">

<!-- Page content -->

    
  <div class="w3-container w3-padding-8 w3-lab62" id="lab62">
  <h3 class="w3-border-bottom w3-border-light-grey w3-padding-8" id="lab62">Laboratory work 6.2</h3>
    <p><b>Задание 2.</b> Задание реализовать, используя карты (например <b>HashMap</b>, <b>TreeMap</b>). Создать класс, содержащий необходимые поля, затем добавлять экземпляры класса в коллекцию, и создавать ключ по тому полю, по которому необходимо проводить поиск.</p>
    <p>Один тестовый вопрос представляет собой класс <b>Task</b> со следующими полями: вопрос, пять вариантов ответа, номер правильного ответа, начисляемые баллы за правильный ответ. Для моделирования набора тестовых вопросов реализовать класс <b>TestContent</b>, содержащий массив тестовых вопросов. Реализовать методы добавления и удаления тестовых вопросов, а также метод доступа к тестовому заданию по его порядковому номеру в списке. В массиве не должно быть повторяющихся вопросов. Реализовать операцию слияния двух тестовых наборов, операции пересечения и вычисления разности. Реализовать операцию генерации конкретного объекта <b>Test</b> объемом не более к вопросов из объекта типа <b>TestContent</b>.</p>  

    
   <form class="w3-padding-16" action="createTaskContent" method="POST">
    <fieldset>
          <legend>Current task content: ${contentName }</legend>  
          <p><label>Name</label><input class="w3-input" type="text" name="tcName"/></p>
          <p><button class="w3-button w3-black w3-section" type="submit" name="tc" value="New">New</button>  <button class="w3-button w3-black w3-section" type="submit" name="tc" value="Show all">Show all</button></p>
        </fieldset>
	</form>
	
	<form class="w3-padding-16" action="createTest" method="POST">
    <fieldset>
          <legend></legend>  
          <p><label>Test size</label><input class="w3-input" type="number" name="testSize" min="1" max="1000000" step="1"/></p>
          <p><button class="w3-button w3-black w3-section" type="submit" value="Create test">Create test</button></p>
        </fieldset>
	</form>

 
	    <form:form class="w3-padding-16" action="createTask" modelAttribute="task">
        <fieldset>
          <legend>Task form</legend>  
          <p><label>Question</label><form:input class="w3-input" path="question" type="text"/></p>
          <p><label>First answer</label><form:input class="w3-input" path="answer1" type="text"/></p>
          <p><label>Second answer</label><form:input class="w3-input" path="answer2" type="text"/></p>
          <p><label>Third answer</label><form:input class="w3-input" path="answer3" type="text"/></p>
          <p><label>Fourth answer</label><form:input class="w3-input" path="answer4" type="text"/></p>
          <p><label>Fifth answer</label><form:input class="w3-input" path="answer5" type="text"/></p>
          <p><label>Correct answer number</label><form:input class="w3-input" path="correctAnswer" type="number" min="1" max="5" step="1"/></p>
          <p><label>Mark</label><form:input class="w3-input" path="mark" type="number" min="1" max="10" step="1"/></p>
          <p><form:button class="w3-button w3-black w3-section" type="submit" name="taskButton" value="Create">Create</form:button> <form:button class="w3-button w3-black w3-section" type="submit" name="taskButton" value="Delete">Delete</form:button></p>
        </fieldset>
        </form:form>
    </div>
  </div>
   
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-16">
  <p>&#169; BAND 3 </br> kyiv / ukraine</p>
</footer>

</div>
</body>
</html>
  