<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/7/6
  Time: 11:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script type="text/javascript">
      function reloadCode() {
          var time = new Date().getTime();
          document.getElementById("imagecode").src="<%=request.getContextPath()%>/servlet/ImageServlet?d=" + time;
      }
    </script>
  </head>
  <body>
  <form action="<%=request.getContextPath()%>/servlet/LoginServlet" method="get">
    验证码：<input type="text" name="checkcode" />
    <img alt="验证码" id="imagecode" src="<%=request.getContextPath()%>/servlet/ImageServlet">
    <a href="javascript:reloadCode();">看不清楚</a>
    <input type="submit" value="提交">
  </form>
  </body>
</html>
