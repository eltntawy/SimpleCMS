<%-- 
    Document   : index
    Created on : 29-Dec-2013, 20:46:53
    Author     : Mohamed
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <c:import url="${pageContext.request.contextPath}/resources/Header.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Header.jsp" %> --%>
<jsp:include page="../resources/Header.jsp" />

<!-- Example row of columns -->
<div class="row">
	<div class="span4">
		<p>
			<a class="btn" href="ArticleView">View articles &raquo;</a>
		</p>
		<c:choose>

			<c:when test="${sessionScope.user ne null}">
				<p>
					<a class="btn" href="ArticleCreate">Create new articles &raquo;</a>
				</p>
			</c:when>
		</c:choose>
	</div>
	<div class="span4"></div>
</div>

<!--             <hr> -->

<%-- <c:import url="${pageContext.request.contextPath}/resources/Footer.jsp"></c:import> --%>
<%-- <%@include file="${pageContext.request.contextPath}/resources/Footer.jsp" %> --%>
<jsp:include page="../resources/Footer.jsp" />

