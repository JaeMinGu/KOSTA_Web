<%@ page contentType="text/html; charset=EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>fmt</title>
</head>
<body>

	<fmt:formatNumber value="1700600" />
	<!-- 1,700,600 -->

	<fmt:formatNumber value="1700600" type="number" />
	<!-- 1,700,600 -->

	<fmt:formatNumber value="1700600" type="number" groupingUsed="false" />
	<!-- 1700600 -->

	<fmt:formatNumber value="1700600" type="currency" groupingUsed="true" />
	<!-- ��1,700,600 -->

	<fmt:formatNumber value="1670400" type="currency" currencySymbol="&" />
	<!-- &1,670,400 -->

	<fmt:formatNumber value="0.5" type="percent" />
	<!-- 50% -->

	<fmt:formatNumber value="999" minIntegerDigits="5" minFractionDigits="2" />
	<!-- 00,999.00 -->

	<fmt:formatNumber value="9876543.61" pattern=".000" />
	<!-- 9876543.610 -->

	<fmt:formatNumber value="9876543.612345" pattern="#,#00.0#" />
	
	
	<jsp:useBean id="now" class="java.util.Date"/>
	<c:out value="${now}"/> <!-- Wed Apr 22 17:14:22 KST 2015 -->
	
	<fmt:formatDate value="${now}" type="date"/>
	<!-- 2015. 4. 22 -->
	
	<fmt:formatDate value="${now}" type="time"/>
	<!-- ���� 5:14:22 -->
	
	<fmt:formatDate value="${now}" type="both"/>
	<!-- 2015. 4. 22 ���� 5:14:22 -->
	
	<fmt:formatDate value="${now}" type="both" dateStyle="default" timeStyle="default"/>
	<!-- 2015. 4. 22 ���� 5:14:22-->
	
	<fmt:formatDate value="${now}" type="both" dateStyle="short" timeStyle="short"/>
	<!-- 15. 4. 22 ���� 5:14 -->
	
	<fmt:formatDate value="${now}" type="both" dateStyle="medium" timeStyle="medium"/>
	<!-- 2015. 4. 22 ���� 5:14:22 -->
	
	<fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long"/>
	<!-- 2015�� 4�� 22�� (��) ���� 5�� 14�� 22�� -->
	
	<fmt:formatDate value="${now}" type="both" dateStyle="full" timeStyle="full"/>
	<!-- 2015�� 4�� 22�� ������ ���� 5�� 14�� 22�� KST -->
	
	<fmt:formatDate value="${now}" type="both" pattern="yyyy��MM��dd�� HH��mm��ss�� E����"/>
	<!-- 2015��04��22�� 17��14��22�� �ݿ��� -->

</body>
</html>






