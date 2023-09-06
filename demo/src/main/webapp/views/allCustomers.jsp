<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>All Customers</title>

    <!-- Bootstrap CSS  -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
  </head>

  <style>
        a{
            color: white;
        }
        a:hover {
            color: white;
            text-decoration: none;
        }
    </style>
  <body>
   <h1>Customer List screen</h1>

<form:form>

            <table class="table table-bordered">
            	<tr>
            		<th>First Name</th>
            		<th>Last Name</th>
            		<th>City</th>
            		<th>State</th>
            		<th>Email</th>
                <th>Phone</th>
                <th>Action</th>
            	</tr>

            	<c:forEach var="customer" items="${customerList}">
                    <tr>
                		<td>${customer.firstName}</td>
                		<td>${customer.lastName}</td>
                    <td>${customer.address}</td>
                		<td>${customer.city}</td>
                        <td>${customer.state}</td>
                        <td>${customer.email}</td>
                        <td>${customer.phone}</td>
                		<td><button type="button" class="btn btn-success">
                		    <a href="/${customer.id}">Edit</a>
                		</button></td>
                		<td><button type="button" class="btn btn-danger">
                			<a href="/deleteCustomer/${customer.id}">Delete</a>
                		</button></td>
                	</tr>

            	</c:forEach>

            </table>

        </form:form>

          <button type="button" class="btn btn-primary">
        	<a href="/addCustomers">Add New Customer</a>
        </button>

  </body>
</html>
