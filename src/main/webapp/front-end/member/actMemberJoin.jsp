<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.act.model.*"%>


				<!-- 揪團申請加入中 -->
<html>
<head>
<meta charset="UTF-8">
  	<meta http-equiv="X-UA-Compatible" content="IE=edge">
  	<meta name="viewport" content="width=device-width, initial-scale=1.0">
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  	<link rel="stylesheet" href="./css/header.css">
	<link rel="website icon" href="./images/bgremove_Logo.jpg">
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.2/font/bootstrap-icons.css"
    integrity="sha384-b6lVK+yci+bfDmaY1u0zE8YYJt0TZxLEAFyYSLHId4xoVvsrQu3INevFKo+Xir8e" crossorigin="anonymous">
 	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
 	<title>7 Tour | 旅遊規劃</title>
	<style>
		.container{
			/*整個頁面*/
			display : flex;
			flex-direction : column;
			justify-content: space-between; 
			flex-wrap: wrap;
		}
		.location{
			margin-top:50px;
			width: 900px;
			display: table-cell;
  			vertical-align: middle;
  			/*文字水平置中*/
			text-align: center;
		}
		.clearfix:after {
        	content:"";
        	display:table;
        	clear:both;
    	}
    	a {
 			 color: black;
 			 text-decoration: none;
		}
		#actContent{
			display: flex;
			justify-content:space-around;
			flex-wrap : wrap;
			
		}
		.card{
			margin-bottom: 50px;
		}
		.Bottom distance::after{
			width: 100%;
			height: 50px;
		 	content:"";
  			display: block;
  			clear:both;
		}
		.row{
			text-align: center;
		}
	</style>
	<body>
		<c:import url="/front-end/header.jsp" ></c:import>
	  					 <!-- content -->
	  					
  <main>
  <div class="container py-4">
    <header class="pb-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center text-dark text-decoration-none">
      </a>
    </header>

    <div class="p-5 mb-4 bg-light rounded-3">
    
  
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">揪團內容</h1>
        	<table>
        		<tr>
				<th>揪團封面</th>
        		<th>揪團標題</th>
				<th>當前參與人數</th>
				<th>揪團人數上限</th>
				<th>報名開始時間</th>
				<th>報名結束時間</th>
				<th>行程開始時間</th>
				<th>行程結束時間</th>
				<th>揪團活動內容</th>
        	</tr>
        	     <td> <img src="<%=request.getContextPath()%>/back-end/act/act.do?action=showFirstImages&activityId=${actVO.activityId}" style="width:200px"/></td> 
        	     
        	     <td> <p class="col-md-8 fs-4">${actVO.activityTitle}</p></td> 
        	     <td> <p class="col-md-8 fs-4">${actVO.currentNumber}</p></td> 
        	     <td><p class="col-md-8 fs-4">${actVO.maxPeople}</p></td> 
        	     <td> <p class="col-md-8 fs-4">${actVO.registrationTime}</p></td> 
        	     <td><p class="col-md-8 fs-4">${actVO.registrationEnd}</p></td> 
        	     <td> <p class="col-md-8 fs-4">${actVO.tripStart}</p></td> 
        	     <td><p class="col-md-8 fs-4">${actVO.tripEnd}</p></td> 
        	     <td> <p class="col-md-8 fs-4">${actVO.activityContent}</p></td> 

        </table>
  

      </div>
   
    </div>


  </div>
</main>
<!-- content end -->

<!-- Button Modal 互動視窗-->
	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
		<button type="button" class="btn btn-primary" >申請加入中</button>	
	</div>


	<!-- include footer -->
			<c:import url="/front-end/footer.jsp" ></c:import>

	</body>
</head>