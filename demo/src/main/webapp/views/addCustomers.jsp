<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Customers</title>

    <!-- Bootstrap CSS  -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
      crossorigin="anonymous"
    />
  </head>


  <body>
   <h1>Add Customer</h1>

<form:form action="/saveCustomer" method="post" modelAttribute="customer">

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="firstName">First Name</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="firstName" id="firstName"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="lastName">Last Name</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="lastName" id="lastName"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="address">address</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="address" id="address"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="city">city</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="city" id="city"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="state">state</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="state" id="state"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="email">email</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="email" id="email"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="phone">phone</label>
            		<div class="col-md-6">
            		    <form:input type="text" path="phone" id="phone"
            		        class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div>

            <%-- <div class="row">
            	<div class="form-group col-md-12">
            		<label class="col-md-3" for="year">Year</label>
            		<div class="col-md-6">
            			<form:input type="number" path="year" id="year"
            				class="form-control input-sm" required="required" />
            		</div>
            	</div>
            </div> --%>

            <div class="row p-2">
            	<div class="col-md-2">
            		<button type="submit" value="Register" class="btn btn-success">Save</button>
            	</div>
            </div>

        </form:form>

  </body>
</html>
