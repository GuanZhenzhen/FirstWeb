<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>动态随机生成表格</title>
    <link rel="stylesheet" href="Bootstrap/css/bootstrap.min.css"/>
    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet" href="Bootstrap/css/bootstrap-theme.min.css"/>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script type="text/javascript" src="jQuery/jquery-3.2.1.min.js"></script>
    <script type="text/javascript" src="jQuery/jquery.dataTables.min.js"></script>
    <link  rel="Stylesheet" href="Css/jquery.dataTables.min.css"/>
    <script type="text/javascript" src="Bootstrap/js/bootstrap.min.js"></script>


    <style>
        table {
            border-collapse: collapse;
            margin-top: 60px;
        }
        
        table,
        td {
            border: 2px solid powderblue;
        }
        
        td {
            height: 30px;
            width: 200px;
            padding: 20px;
            word-break: keep-all;
        }
        
        tr td:hover {
            background-color: gray;
        }
        
        nav {
            background-color: powderblue;
        }
        
        h1 {
            color: black;
            margin-top: -5px;
        }
        /* div的横向滚动条 */
        
        #div1 {
            overflow-x: auto;
            overflow-y: hidden;
        }
        
        .button {
            text-align: center;
            height: 40px;
            width: 70px;
            border-radius: 25px 5px 25px 5px;
            background-color: greenyellow;
        }
    </style>
    
    <!-- 
    <script type="text/javascript">
        $(document).ready(function () {
            $("#datatable").DataTable({
                "bPaginate": true,      //翻页功能
                "bLengthChange": true,  //改变每页显示数据量
                "bFilter": true,        //过滤功能
                "bSort": false,         //排序功能
                "bInfo": true,          //页脚信息
                "bAutoWidth": true       //自动宽度

            });
        });
        
    </script> -->

     <script type="text/javascript">
         function table() {

             var line = Math.random() * 40 + 1;
             var linenum = Math.floor(line + 10);  //获得表格行数
             var column = Math.random() * 400 + 1;
             var columnnum = Math.floor(column + 100);  //获得表格列数
             // alert(linenum);
             // alert(columnnum);
             $("#table1").empty();
             var data = $("<table border=\" 1 \">" + "<caption>" + "表格标题" + "</caption>");

             data.appendTo($("#table1"));

             var head = $("<tr>");
             for (var i = 1; i <= columnnum; i++) {
                 var th = $("<th>");
                 th.html("第" + i + "列");
                 head.append(th);

             }
             data.append(head);

                 for (var j = 1; j <= linenum; j++) {
                     var tr = $("<tr>");
                     tr.appendTo(data);
                     for (var i = 1; i <= columnnum; i++) {
                         var td = $("<td>" + "第" + j + "行，第" + i + "列" + "</td>");
                         td.appendTo(tr);
                     }
                 }

             //$("#table1").append("</table>");

         }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <p>动态随机生成表格</p>
                    </a>
                </div>
            </div>
        </nav>
        <div id="table">
            <div id="div1">
                <div id="table1"></div>
            </div>
            <br/><br/><br/><br/>
            <input name="" type="button" value="生成" class="button" onclick="table()" />
        </div>
    </div>
    </form>
</body>
</html>
