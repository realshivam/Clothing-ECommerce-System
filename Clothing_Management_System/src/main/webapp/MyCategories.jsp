<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body class="bg-gray-900">

<%
			ArrayList<String>arr=new ArrayList<String>();
			arr=(ArrayList<String>)request.getAttribute("arr");
			
			for(int i=0;i<arr.size();i++)
			{%>
			
	<!-- component -->
<div class="container flex mx-auto w-full items-center justify-center">

   <ul class="flex flex-col  p-4">
    <a href="ShowItem?category=<%=arr.get(i)%>">
        <li class="border-gray-400 flex flex-row mb-2">
          <div class="select-none cursor-pointer bg-gray-200 rounded-md flex flex-1 items-center p-4  transition duration-500 ease-in-out transform hover:-translate-y-4 hover:shadow-lg">
            <div class="flex flex-row rounded-md w-10 h-10 bg-gray-300 justify-center items-center mr-4">💧</div>
            <div class="flex pl-1 mr-16">
              <div class="font-medium"><%=arr.get(i)%></div>
             
            </div>
            
          </div>
        </li>
         <a>   
           
    </ul>
    
  </div>
		<%} arr.clear(); %>	

</body>
</html>