<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>EL연산</h1>
	<h3>1. 산술 연산</h3>
	<p>
		* 스크립틀릿을 사용한 연산
		10 + 3 = <%= (int)request.getAttribute("big") + (int)request.getAttribute("small")%> <br><br>
		
		* EL을 사용한 연산 <br>
		10 + 3 = ${big + small} <br>
		10 - 3 = ${big - small} <br>
		${big} x ${small} = ${big * small} <br>
		10 / 3 = ${big / small} <br>
		10 div 3 = ${big div small} <br>
		10 % 3 = ${big % small} <br>
		10 mod 3 = ${big mod small} <br> 
	</p>
	
	<hr>
	
	<h3>2. 숫자간 대소 비교</h3>
	<p>
		10 > 3 : ${big > small} 또는 ${big gt small} <br>
		10 < 3 : ${big < small} 또는 ${big lt small} <br>
		13 >= 3 : ${big >= small} 또는 ${big ge small} <br>
		13 <= 3 : ${big <= small} 또는 ${big le small} <br>
	</p>
	
	<hr>
	<h3>3. 동등비교 연산</h3>
	<p>
		* 스크립틀릿 방식 <br>
		<%
			String sOne = (String) request.getAttribute("sOne");		
			String sTwo = (String) request.getAttribute("sTwo");		
		%>
		sOne과 sTwo가 일치합니까? <%= sOne.equals(sTwo)%> <br>
		sOne과 sTwo가 일치합니까? <%= sOne == sTwo%>
	</p>
	
	<p>
		* EL연산 <br>
		10과 3이 일치합니까? ${big == small} 또는 ${big eq small} <br>
		big과 10이 일치합니까? ${big == 10} , ${big eq small} <br>
		
		sOne과 sTwo가 일치합니까? ${sOne eq sTwo} , ${sOne == sTwo} <br>
		<!-- EL에서 ==비교는 자바의 equals()방식으로 동작한다. -->
		sOne과 sTwo가 일치하지 않습니까? ${sOne ne sTwo} , ${sOne != sTwo} <br>
		sOne에 저장된 값이 "안녕"과 일치합니까? ${sOne == "안녕"} , ${sOne == '안녕'} <br>
	</p>
	
	<hr>
	
	<h3>4. 객체가 null인지, 또는 List가 비어있는지 체크할 수 있는 연산자</h3>
	<p>
		pTwo가 null입니까? ${pTwo == null} 또는 ${empty pTwo} <br>
		pOne이 null입니까? ${pOne eq null} 또는 ${empty pOne} <br>
		
		lOne이 비어있습니까? ${empty lOne} <br>
		lTwo가 비어있습니까? ${empty lTwo} <br>
	</p>
	
	<hr>
	
	<h3>5. 논리연산자 </h3>
	<p>
		AND연산 : ${true && true} , ${true and true} <br>
		OR 연산 : ${false || true} , ${true or false} <br>
	</p>
	
	<script>
	// jsp페이지 내부에서 템플릿 문법을 사용하고자 한다면
	// 방법 1. 페이지 지시어에 isElIgnored설정을 추가
	// 방법 2. 템플릿문법 앞에ㅐ \(이스케이프) 기호를 주기
		var name = "무혁";
		console.log('제 이름은' + name+"입니다.");
		console.log(`제 이름은 \${name}입니다.`);
	</script>
	
	<h1>JSP Action Tag</h1>
	<p>
		XML기술을 이용하여 JSP문법을 확장시켜 새로운 기술을 제공하는 태그듣
		1. 표준 액션 태그 <br>
		 - 별도의 설치 없이 JSP에서 바로 사용가능한 태그들 <br>
		 
		2. 커스텀액션 태그 <br>
		 - 별도의 추가 설치가 필요한 태그들로, 라이브러리 설치 후 각 jsp에 taglib지시어를 추가해야 한다.
		 - 종류별로 다양한 기능을 제공한다. 
	</p>
	<h3>1. 표준 액션 태그</h3>
	<a href="/jsp/action/standard/01_include.jsp">01_jsp:include</a> <br>
	<a href="/jsp/action/standard/02_forward.jsp">02_forward</a>
	
</body>
</html>