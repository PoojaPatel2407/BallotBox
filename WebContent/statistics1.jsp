<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
import="java.sql.DriverManager, java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet, java.sql.SQLException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="./jquery-1.12.0.min.js"></script>
<script src="./js/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<sql:setDataSource
    var="mydb"
    driver="com.mysql.jdbc.Driver"
    url="jdbc:mysql://localhost/mydb"
    user="root" password=""
/>
<sql:query var="liberalcount" dataSource="${mydb}">
	SELECT question1, count(question1) FROM Voter_Survey where question1 like 'liberal' group by question1
</sql:query>

<title>Administration Statistics</title>
<script type="text/javascript">
$(function () {
    $(document).ready(function () {
        $('#container').highcharts({
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                type: 'pie'
            },
            title: {
                text: 'Voter Party Affiliations'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
            },
            plotOptions: {
                pie: {
                    allowPointSelect: true,
                    cursor: 'pointer',
                    dataLabels: {
                        enabled: false
                    },
                    showInLegend: true
                }
            },
            series: [{
                name: 'Parties',
                colorByPoint: true,
                data: [{
                    name: 'Conservative',
                    y: 10.00
                }, {
                    name: 'Liberal',
                    y: 50.00,
                    sliced: true,
                    selected: true
                }, {
                    name: 'Moderate',
                    y: 20.00
                }, {
                    name: 'Progressive',
                    y: 20.00
                }]
            }]
        });
    });
});
</script>
</head>
<body>
<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
</body>
</html>