<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	List<Map<String, String>> flist = (List) request.getAttribute("flist");
%>

<!DOCTYPE  HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <base href="<%=basePath%>">
        <title>Display Password</title>
     
    </head>
    <body>
        <%
            if( flist.size()>0)
        {
        %>
     
         <script type="text/javascript">
        alert(" Your password is <%=flist.get(0).get("C_Password")%>");
        window.location = 'Login_Page.jsp';
        </script> 

               

        <%
                }
        %>
    </body>
</html>