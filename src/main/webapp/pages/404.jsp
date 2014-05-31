<%-- 
    Document   : 404
    Created on : 01-Jan-2014, 17:31:49
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- <jsp:include page="${pageContext.request.contextPath}/resources/Header.jsp"></jsp:include> --%>
<jsp:include page="../resources/Header.jsp"/> 

    <div class="container-fluid text-center " alt="center">
        <div class="span3">
            <img alt="center" src="${pageContext.request.contextPath}/resources/img/404.png" class="img-polaroid img-rounded text-center" />
    </div>
    <h2 class="text-error text-center ">Error please try again...!</h2>

</div>
    <br>
<table border="1" class="table table-bordered table-hover table-striped">
    <thead>
        <tr>
            <th>Error Info</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td class="text-info">Requested URI</td>
            <td>${pageContext.errorData.requestURI}</td>
        </tr>
        <tr>
            <td class="text-info">Error Code</td>
            <td>${pageContext.errorData.statusCode}</td>
        </tr>
    </tbody>
</table>

<br><br><br>

<jsp:include page="../resources/Footer.jsp"/> 

<%-- <jsp:include page="${pageContext.request.contextPath}/resources/Footer.jsp"></jsp:include> --%>
