<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-800">

<%
	
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");	
	
		if(session.getAttribute("email")==null)
		{
			response.sendRedirect("login.jsp");		
		}
		
		
	
	%>	

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

      <a class="px-10 py-2 mt-2 text-sm font-semibold bg-transparent rounded-lg dark-mode:bg-transparent text-gray-100 dark-mode:hover:bg-gray-600 dark-mode:focus:bg-gray-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 md:mt-0 md:ml-4 hover:text-gray-900 focus:text-gray-900 hover:text-gray-200 focus:bg-gray-200 focus:outline-none focus:shadow-outline" href="Earnings">Home</a>
      
      <div @click.away="open = false" class="relative" x-data="{ open: false }">
       <a href="Logout"> <button @click="open = !open" class="px-6 py-2 mt-2 text-sm font-semibold text-gray-900 bg-gray-200 rounded-lg dark-mode:bg-gray-700 dark-mode:hover:bg-gray-600 dark-mode:focus:bg-gray-600 dark-mode:focus:text-white dark-mode:hover:text-white dark-mode:text-gray-200 md:mt-0 hover:text-gray-900 focus:text-gray-900 hover:bg-gray-200 focus:bg-gray-200 focus:outline-none focus:shadow-outline">
          <span>Log out</span>
          <svg fill="currentColor" viewBox="0 0 20 20" :class="{'rotate-180': open, 'rotate-0': !open}" class="inline w-4 h-4 mt-1 ml-1 transition-transform duration-200 transform md:-mt-1"><path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 111.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
        </button></a>
       
      </div>    
    </nav>
  </div>
</div>


<form action="DeleteCategory" method="post">
		
		
		
		<div class="flex flex-col max-w-4xl md:h-56 bg-white rounded-lg shadow-lg overflow-hidden md:flex-row my-10">
        <div class="md:flex items-center justify-center md:w-1/2 md:bg-gray-700">
            <div class="py-6 px-8 md:py-0">
                <h2 class="text-gray-700 text-2xl font-bold md:text-gray-100">Click on Delete</h2>
                <p class="mt-2 text-gray-600 md:text-gray-400">to delete a category example : Shirt</p>
            </div>
        </div>
        <div class="flex items-center justify-center pb-6 md:py-0 md:w-1/2 md:border-b-8 border-gray-700">
            <form action="DeleteCategory" method="post">
                <div class="flex flex-col rounded-lg overflow-hidden sm:flex-row">
                    <input class="py-3 px-4 bg-gray-200 text-gray-800 border-gray-300 border-2 outline-none placeholder-gray-500 focus:bg-gray-100" type="text" name="CategoryName" placeholder="Category Name">
                 
                    <input type="submit" class="py-3 px-4 bg-gray-700 text-gray-100 font-semibold uppercase hover:bg-gray-600" value="Delete">
               		
                </div>
            </form>
           <button class="mr-3 text-sm bg-blue-500 hover:bg-blue-700 text-white py-1 px-2 rounded focus:outline-none focus:shadow-outline"><a href="home.jsp">Done</a></button>
        </div>
    </div>

</body>
</html>