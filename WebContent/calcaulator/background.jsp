<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>


<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>




newval 누른 버튼의 value값을 저장:  <span style="display: ;" id="newVal">${newVal }</span><br>
inval 인풋의 id값을 변수에 저장:<input type="text" id="inval"><br>
oldval 인풋에 입력된 값 저장: <span style="display: ;" id="oldVal">${oldVal }</span><br>
result 이전값과 현재 누른 값을 저장: <span style="display: ;" id="result">${result }</span><br>
<hr>
a : <span style="display: ;" id="a">${a }</span><br>
b: <span style="display: ;" id="b">${b }</span><br>
c : <span style="display: ;" id="c">${c }</span><br>
d : <span style="display: ;" id="d">${d }</span><br>





<div id ="result" style="border: 1px solid red;">
</div>

    
<table border="1">
	<tr>
      <td width="50px" height="50px" align="center" onclick="cal('7');">7</td>
      <td width="50px" height="50px" align="center" onclick="cal('8');">8</td>
      <td width="50px" height="50px" align="center" onclick="cal('9');">9</td>
      <td width="50px" height="50px" align="center" onclick="cal('+');">+</td>
   </tr>
   <tr>
      <td width="50px" height="50px" align="center" onclick="cal('4');">4</td>
      <td width="50px" height="50px" align="center" onclick="cal('5');">5</td>
      <td width="50px" height="50px" align="center" onclick="cal('6');">6</td>
      <td width="50px" height="50px" align="center" onclick="cal('-');">-</td>
   </tr>
   <tr>
      <td width="50px" height="50px" align="center" onclick="cal('1');">1</td>
      <td width="50px" height="50px" align="center" onclick="cal('2');">2</td>
      <td width="50px" height="50px" align="center" onclick="cal('3');">3</td>
      <td width="50px" height="50px" align="center" onclick="cal('*');">*</td>
   </tr>
   <tr>
      <td width="50px" height="50px" align="center" onclick="cal('C');">C</td>
      <td width="50px" height="50px" align="center" onclick="cal('0');">0</td>
      <td width="50px" height="50px" align="center" onclick="cal('=');">=</td>
      <td width="50px" height="50px" align="center" onclick="cal('/');">/</td>
   </tr>
</table>

<script>
function cal(value1){

	var a;
	var b;
	var c;
	var d;
	
	
	
	
	
	
	  var newVal = value1;//누른 버튼의 value값을 저장
      var $inval = $("#inval");//인풋의 id값을 변수에 저장
      var oldVal = $inval.val(); // 인풋에 입력된 값 저장
      var result = oldVal+newVal; //이전값과 현재 누른 값을 저장
      $inval.val(result);//인풋의 value에 결과값 넣어준다
		
      
      
      
  	$("#newVal").text(newVal);
	$("#oldVal").text(oldVal);
	$("#result").text(result);

	
if(value1=='C'){
		
		$("#newVal").val('');
		$("#inval").val('');
		$("#oldVal").val('');
		$("#result").val('');
	}



if(value1=='+'||value1=='-'||value1=='*'||value1=='/'){
	$("#a").val($("#oldVal").val());

	
	
}










      
/* 	if(value1=='+'||value1=='-'||value1=='*'||value1=='/'){
		
	}else if(value1=='='){
		
	}else if(value1=='C'){
		
		$("#newVal").text(newVal.val());
		$("#oldVal").text(oldVal.val());
		$("#result").text(result.val());
	}else{
		
		$("#a").text(value1);
		$("#b").text($("#a").val());
		
	}
	 */
	
}


</script>   
    
