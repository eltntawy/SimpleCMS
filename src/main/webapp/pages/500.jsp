<%-- 
    Document   : error
    Created on : 01-Jan-2014, 16:58:44
    Author     : Mohamed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- <jsp:include page="${pageContext.request.contextPath}/resources/Header.jsp"></jsp:include> --%>
<jsp:include page="../resources/Header.jsp"/> 

    <div class="container-fluid controls-row">
        <div class="span3">
            <img alt="center" src="${pageContext.request.contextPath}/resources/img/error.png" class="img-polaroid img-circle text-center" />
    </div>
    <h2 class="text-error text-center te">Error please try again...!</h2>
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
            <td class="text-info">Error in your request</td>
            <td>${pageContext.errorData.statusCode}</td>
        </tr>
        <tr>
            <td class="text-info">Exception in your request</td>
            <td>${pageContext.exception.message}</td>
        </tr>
    </tbody>
</table>

<br><br><br>

<jsp:include page="../resources/Footer.jsp"/> 
<%-- <jsp:include page="${pageContext.request.contextPath}/resources/Footer.jsp"></jsp:include> --%>