<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Being Java Guys | User Details</title>
</head>
<body>
 <center>

  <div style="color: teal; font-size: 30px">Being Java Guys | User
   Details</div>

  <c:if test="${!empty employeeList}">
   <table border="1" bgcolor="black" width="600px">
    <tr
     style="background-color: teal; color: white; text-align: center;"
     height="40px">
     
     <td>First Name</td>
     <td>Last Name</td>
     <td>Email</td>
     <td>Phone</td>
     <td>Edit</td>
     <td>Delete</td>
    </tr>
   <c:forEach items="${employeeList}" var="emp">
   
     <tr style="background-color: white; color: black; text-align: center;"height="30px">
      
      <td><c:out value="${emp.firstName}" />
      </td>
      <td><c:out value="${emp.lastName}" />
      </td>
      <td><c:out value="${emp.email}" />
      </td>
      <td><c:out value="${emp.phone}" />
      </td>
      <td><a href="edit?id=${emp.id}">Edit</a></td>
      <td><a href="delete?id=${emp.id}">Delete</a></td>
     </tr>
    </c:forEach>
   </table>
  </c:if>


  <a href="form">Click Here to add new User</a>
 </center>
</body>
</html>