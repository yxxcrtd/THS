<div class="taxonomy">
	<div id="complex">
		<a href="javascript:;" class="nowBuy">复合出版物合集</a>
	</div>
	
	<ul class="classUl" id="menu">
		<#if propTypeList??>
			<#list propTypeList as c>
				<li>
					<#if ("" == c.parentId)>
						<a href="index?c=${c.id!}" value="${c.id!}">【${c.name!}】</a>
					</#if>
					<ul></ul>
				</li>
			</#list>
		</#if>
	</ul>
</div>