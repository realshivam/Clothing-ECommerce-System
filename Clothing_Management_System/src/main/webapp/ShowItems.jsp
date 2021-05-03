<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
      <%@page import="com.trishul.IndividualItem.IndividualItem"%>


     <%@page import="java.util.ArrayList"%>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">



</head>
<body class='bg-gray-800'>


	<!-- component -->
<div class="text-gray-900 bg-gray-800">
    <div class="p-4 flex">
        <h1 class="text-3xl" style="color:white;">
            The Stock
        </h1>
    </div>
    <div class="px-3 py-4 flex justify-center">
        <table class="w-full text-md bg-white shadow-md rounded mb-4">
            <tbody>
                <tr class="border-b">
                    <th class="text-left p-3 px-5">Brand</th>
                    <th class="text-left p-3 px-5">Color</th>
                    <th class="text-left p-3 px-5">in Stock</th>
                    <th class="text-left p-3 px-5">Price</th>
                   
                    <th></th>
                </tr>
                
                <% ArrayList<IndividualItem>arr=new ArrayList<IndividualItem>();
	 
	 		arr=(ArrayList<IndividualItem>)request.getAttribute("data");
	 
	 
	for(IndividualItem d : arr){%>
                
                <tr class="border-b hover:bg-orange-100 bg-gray-100">
                    <td class="p-3 px-5"><input type="text" value="<%=d.getBrand()%>" class="bg-transparent"></td>
                    <td class="p-3 px-5"><input type="text" value="<%=d.getColor()%>" class="bg-transparent"></td>
                     <td class="p-3 px-5"><input type="text" value="<%=d.getInstock()%>" class="bg-transparent"></td>
                      <td class="p-3 px-5"><input type="text" value="<%=d.getPrice()%>" class="bg-transparent"></td>
                      <%if(session.getAttribute("user").toString().equals("Customer"))
					{ %>
                    <td class="p-3 px-5 flex justify-end"><button type="button" class="mr-3 text-sm bg-blue-500 hover:bg-blue-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline"><a href="ReduceStock?itemname=<%=d.getBrand()%>">Purchase</a></button></td>
                	<%}
                      else{%>
                    	  
                     	   <td class="p-3 px-5 flex justify-end"><button type="button" class="mr-3 text-sm bg-blue-500 hover:bg-blue-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline"><a href="ReduceStock?itemname=<%=d.getBrand()%>">Edit</a></button><button type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline"><a href="ReduceStock?itemname=<%=d.getBrand()%>">Delete</a></button></td>
                      <%}%>
                	
                	
                </tr>
                
       <%}%>
            </tbody>
            
        </table>
    </div>
</div>
	

	

</body>
</html>