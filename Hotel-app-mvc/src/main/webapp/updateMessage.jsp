<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" http-equiv="Refresh" content="5;url=/find-all">
<title>Insert title here</title>
</head>
<script type="text/javascript">
    var timeleft = 5;
    var downloadTimer = setInterval(function(){
    timeleft--;
    document.getElementById("countdowntimer").textContent = timeleft;
    if(timeleft <= 0)
        clearInterval(downloadTimer);
    },1000);
</script>
<body>
<h2>Item has been successfully Updated</h2>
<p> You will be redirected to the Main page in <span id="countdowntimer">5 </span> Seconds</p>
</body>
</html>