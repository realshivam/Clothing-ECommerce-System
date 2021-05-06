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
<%
	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("login.jsp");		
		}
		
		
	
	%>	


<!-- component -->
<script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
<div class="w-full text-gray-700 bg-gray-800 dark-mode:text-gray-200 dark-mode:bg-gray-900">
  <div x-data="{ open: false }" class="flex flex-col max-w-screen-xl px-4 mx-auto md:items-center md:justify-between md:flex-row md:px-6 lg:px-8">
    <div class="p-4 flex flex-row items-center justify-between">
      <a href="#" class="text-lg font-semibold tracking-widest text-gray-100 uppercase rounded-lg dark-mode:text-white focus:outline-none focus:shadow-outline">Clothing Management System</a>
      <button class="md:hidden rounded-lg focus:outline-none focus:shadow-outline" @click="open = !open">
        <svg fill="currentColor" viewBox="0 0 20 20" class="w-6 h-6">
          <path x-show="!open" fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM9 15a1 1 0 011-1h6a1 1 0 110 2h-6a1 1 0 01-1-1z" clip-rule="evenodd"></path>
          <path x-show="open" fill-rule="evenodd" d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z" clip-rule="evenodd"></path>
        </svg>
      </button>
    </div>
    <nav :class="{'flex': open, 'hidden': !open}" class="flex-col flex-grow pb-4 md:pb-0 hidden md:flex md:justify-end md:flex-row">

      <a class="px-10 py-2 mt-2 text-sm font-semibold bg-transparent rounded-lg dark-mode:bg-transparent text-gray-100 dark-mode:hover:bg-gray-600 dark-mode:focus:bg-gray-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 md:mt-0 md:ml-4 hover:text-gray-900 focus:text-gray-900 hover:text-gray-200 focus:bg-gray-200 focus:outline-none focus:shadow-outline" href="Buy">Home</a>
      
      <div @click.away="open = false" class="relative" x-data="{ open: false }">
       <a href="Logout"> <button @click="open = !open" class="px-6 py-2 mt-2 text-sm font-semibold text-gray-900 bg-gray-200 rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-gray-600 dark-mode:focus:bg-gray-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 md:mt-0 hover:text-gray-900 focus:text-gray-900 hover:bg-gray-200 focus:bg-gray-200 focus:outline-none focus:shadow-outline">
          <span>Log out</span>
          <svg fill="currentColor" viewBox="0 0 20 20" :class="{'rotate-180': open, 'rotate-0': !open}" class="inline w-4 h-4 mt-1 ml-1 transition-transform duration-200 transform md:-mt-1"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button></a>
       
      </div>    
    </nav>
  </div>
</div>


	<!-- component -->
<div class="text-gray-900 bg-gray-800">
    <div class="p-4 flex">
        <h1 class="text-3xl" style="color:white;">
            Cart
        </h1>
    </div>
    <div class="px-3 py-4 flex justify-center">
        <table class="w-full text-md bg-white shadow-md rounded mb-4">
            <tbody>
                <tr class="border-b">
                    <th class="text-left p-3 px-5">Brand</th>
                    <th class="text-left p-3 px-5">Color</th>
                    <th class="text-left p-3 px-5">Price</th>
                   
                    <th></th>
                </tr>
                
                <% ArrayList<IndividualItem>arr=new ArrayList<IndividualItem>();
	 		
	 		arr=(ArrayList<IndividualItem>)request.getAttribute("purchased");
	 
	 
	for(IndividualItem d : arr){%>
                <form action="EditItem" method="post">
                <tr class="border-b hover:bg-orange-100 bg-gray-100">
                    <td class="p-3 px-5"><input type="text" value="<%=d.getBrand()%>" name='brand'" class="bg-transparent"></td>
                    <td class="p-3 px-5"><input type="text" value="<%=d.getColor()%>" name='color'" class="bg-transparent"></td>
                      <td class="p-3 px-5"><input type="text" value="<%=d.getPrice()%>" name='price'" class="bg-transparent"></td>
                    
                    	  
                     	   <td class="p-3 px-5 flex justify-end"><button type="button" class="text-sm bg-red-500 hover:bg-red-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline"><a href="DeleteItem?itemname=<%=d.getBrand()%>">Delete</a></button></td>
                     
                	
                	
                </tr>
               </form> 
       <%}%>
       
            </tbody>
            
        </table>
    </div>
</div>
	

	

</body>
</html>