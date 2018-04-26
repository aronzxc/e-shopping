<h1 class="my-4">Categories</h1>
<div class="list-grp">

	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" class="list-grp-item" id="a_${category.name}"><span>${category.name}</span></a>
	</c:forEach>
</div>