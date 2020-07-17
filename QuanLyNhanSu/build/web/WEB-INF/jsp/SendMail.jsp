<%-- 
   
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"  >
        <title>Demo</title>
    </head>
    <body>
        <h2>Send Email Success</h2>
        <ul>
            <li>From: ${mail.from}</li>
            <li>To: ${mail.to}</li>
            <li>Subject: ${mail.subject}</li>
            <li>Body: ${mail.body}</li>
          
        </ul>
    </body>
</html>
