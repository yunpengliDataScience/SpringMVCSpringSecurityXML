<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Spring Session Application3 (SpringMVC)</title>

	<link rel="stylesheet" href="<c:url value="${bootstrapCssLocation}"/>">
	<style type="text/css">
		body {
			padding: 1em;
		}
	</style>
</head>
<body>
	<div class="container">
		<h1>Description</h1>
		<p>This Spring MVC application demonstrates shared session attributes</p>

		<h1>Try it</h1>

		<form class="form-inline" role="form" action="saveSessionAttribute" method="post">
			<label for="attributeName">Attribute Name</label>
			<input id="attributeName" type="text" name="attributeName"/>
			<label for="attributeValue">Attribute Value</label>
			<input id="attributeValue" type="text" name="attributeValue"/>
			<input type="submit" value="Set Attribute"/>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		</form>

		<hr/>

		<table class="table table-striped">
			<thead>
			<tr>
				<th>Attribute Name</th>
				<th>Attribute Value</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${sessionScope}" var="attr">
				<tr>
					<td><c:out value="${attr.key}"/></td>
					<td><c:out value="${attr.value}"/></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>
