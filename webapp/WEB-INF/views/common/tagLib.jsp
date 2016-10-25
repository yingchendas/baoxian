<%--
  Created by IntelliJ IDEA.
  User: Mr.wanG
  Date: 2016/8/24
  Time: 9:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" trimDirectiveWhitespaces="true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="my" uri="/WEB-INF/my.tld" %>
<c:set var="path" value="${pageContext.request.contextPath}" scope="page"/>

<c:set var="ctxCommon" value="${pageContext.request.contextPath}/common"/>
<c:set var="ctxCss" value="${pageContext.request.contextPath}/common/ui/css"/>
<c:set var="ctxMinCss" value="${pageContext.request.contextPath}/common/ui/mincss"/>
<c:set var="ctxImg" value="${pageContext.request.contextPath}/common/ui/images"/>
<c:set var="ctxMinJs" value="${pageContext.request.contextPath}/common/ui/minjs"/>
<c:set var="ctxJs" value="${pageContext.request.contextPath}/common/ui/js"/>
<c:set var="ctxWeuiCss" value="${pageContext.request.contextPath}/common/weui/dist/style"/>
