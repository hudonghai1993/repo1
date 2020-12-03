<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/12/2
  Time: 17:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <div>
    <input type="text" id="texName" onblur="missblue()">
  </div>

  <script type="text/javascript" src="${pageContext.request.contextPath}/static/jquery-3.3.1.min.js"></script>
  <script type="text/javascript">
    function missblue() {
      $.ajax({
        url:"${pageContext.request.contextPath}/ajax/a1",
        data:{"name":$("texName").val()},
        success:function (data,state) {
          console.log(data)
          console.log(state)
        }
      })
    }
  </script>
  </body>
</html>
