<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8");%>


<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<div style="width:400px; height:50; border:1px solid red;">
<span style="display: ;"  id="value">${value}</span></div><br>
<span style="display: ;" id="answer">${answer }</span><br>

<table border="1" align="center" width="80%">
   <tr>
      <td colspan="7">
         <h2>계산기</h2>
      </td>
   </tr>
   
   <tr>   
      <td colspan="7">

         
         
         <input type="text" name="text" id="search_date_s" value="${search_date_s }">
         ~
         <input type="text" name="text" id="search_date_e" value="${search_date_e }">
         <br>
         <input type="checkbox" name="search_date_check" id="search_date_check" value="O" onclick="checkboxChk();">
         <span style="color:blue; font-size: 9px;">(날짜 검색시 체크)</span>
         &nbsp;
         <input type="button" value="검색" onclick="search();">
      </td>
   </tr>
  
  <table border="1">
   <tr>
      <td onclick="search();" id="search_date_s">7</td>
      <td onclick="search();"><input type="text" id="search_date_s" value="7">8</td>
      <td onclick="search();"><input type="text" id="search_date_s" value="7">9</td>
      <td onclick="search();"><input type="text" id="search_date_e" value="7">+</td>
   </tr>
   <tr>
      <td onclick="search();"><button type="button" id="" value="4" onclick="">4</button></td>
      <td onclick="search();"><button type="button" id="" value="5" onclick="">5</button></td>
      <td onclick="search();"><button type="button" id="" value="6" onclick="">6</button></td>
      <td onclick="search();"><button type="button" id="" value="-" onclick="">-</button></td>
   </tr>
   <tr>
      <td onclick="search();"><button type="button" id="" value="1" onclick="">1</button></td>
      <td onclick="search();"><button type="button" id="" value="2" onclick="">2</button></td>
      <td onclick="search();"><button type="button" id="" value="3" onclick="">3</button></td>
      <td onclick="search();"><button type="button" id="" value="*" onclick="">*</button></td>
   </tr>
   <tr>
      <td onclick="search();"><button type="button" id="" value="C" onclick="">C</button></td>
      <td onclick="search();"><button type="button" id="" value="0" onclick="">0</button></td>
      <td onclick="search();"><button type="button" id="" value="=" onclick="">=</button></td>
      <td onclick="search();"><button type="button" id="" value="/" onclick="">/</button></td>
   </tr>
</table>
    	
    	</td>
   </tr>
   

</table>

<script>
   function search() {
      
      $("#span_search_date_s").text($("#search_date_s").val());
      $("#span_search_date_e").text($("#search_date_e").val())
      
      GoList();
   }
   
   function checkboxChk() {
      if($("input:checkbox[id=search_date_check]").is(":checked") == true) {
         $("#span_search_date_check").text($("#search_date_check").val());
         $("#span_search_date_s").text($("#search_date_s").val());
         $("#span_search_date_e").text($("#search_date_e").val());
      } else {
         $("#span_search_date_check").text('');
         $("#span_search_date_s").text("");
         $("#span_search_date_e").text("");
         $("#search_date_s").text("");
         $("#search_date_e").text("");

      }
   }
</script>