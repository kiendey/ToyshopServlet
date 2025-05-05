<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="head.jsp" />
<body>
    <jsp:include page="header.jsp" />
    <div class="sidebar">
        <jsp:include page="sidebar.jsp" />
    </div>
    <main class="content">
        <jsp:include page="${contentPage}" />
    </main>
    <jsp:include page="footer.jsp" />

<jsp:include page="end.jsp" />
</body>
</html>
