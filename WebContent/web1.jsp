<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
<script src="webcam.js"></script>

    <div id="my_camera" style="width:320px; height:240px;"></div>
    <div id="my_result"></div>
	<form id="myform" method="post" action="TestServlet">
        <input id="mydata" type="hidden" name="mydata" value=""/>
    </form>
    <script language="JavaScript">
        Webcam.attach( '#my_camera' );

        function take_snapshot() {
            Webcam.snap( function(data_uri) {
            	var raw_image_data = data_uri.replace(/^data\:image\/\w+\;base64\,/, '');

                document.getElementById('mydata').value = raw_image_data;
                document.getElementById('myform').submit();
            } );
        }
    </script>

    <a href="javascript:void(take_snapshot())">Take Snapshot</a>
</body>
</html>