<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	//대상.html()
	var h=$('h1').html();
	alert(h);
	//대상.html(태그)
	//div태그에 '<h1>html 내용</h1>'
	$('div').html('<h1>html 내용</h1>');
	//배열적용
	// '<h1>html 내용-0</h1>'
	// '<h1>html 내용-1</h1>'
	// '<h1>html 내용-2</h1>'
	$('div').html(function(index){
		return '<h1>html 내용-'+index+'</h1>';
	});
	//대상.html(index,html)
	//h1태그 대상의 0번째 태그내용을 가져와서 html변수에 저장한 후 html변수내용을 변경해서 h1태그 0번째에 저장
	//내용변경 *head-0*
	$('h1').html(function(index,html){
		alert(html);
		return "*"+html+"*";
	});
});
</script>
</head>
<body>
<h1>WebContent/j1/test5.jsp</h1>

<div>0</div>
<div>1</div>
<div>2</div>

<h1>head-0</h1>
<h1>head-1</h1>
<h1>head-2</h1>
</body>
</html>