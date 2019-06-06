<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/pages/common/context.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>后台管理</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="${ctx}/js/common.js"></script>
<script src="${ctx}/pages/product/copyRight/edit.js"></script>
</head>

<body>
	<div class="clearfix">
		<%@ include file="/pages/common/ajaxMsg.jsp"%>
		<div id="page-content" class="clearfix">
			<div class="row-fluid">
				<!-- ------------------导航页面部分开始----------------------------- -->
				<div class="page-header position-relative">
					<h1>
						版权信息 <small> <i class="icon-double-angle-right"></i> <c:if
								test="${form.id==null||form.id=='0'||form.id==''}">
			    	新建
			    </c:if> <c:if test="${form.id!=null&&form.id!='0'&&form.id!=''}">
			    	修改
			    </c:if>
						</small>
					</h1>
				</div>
				<!-- ------------------导航页面部分结束----------------------------- -->
				<div class="row-fluid">
					<div class="table-header on">
						基本信息
					</div>
					<form:form id="copyRightForm" commandName="form"
						class="form-horizontal">
					<div class="on-down">
						<!-- ------------------表单部分开始----------------------------- -->
						<div class="control-group" >
							<label class="control-label" for="form-field-1">合同编号：</label>
							<div class="controls">
								<form:input path="copyRight.contractNum" id="contractNum" placeholder="合同编号"  class="span6" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="form-field-1">签约对象：</label>
							<div class="controls">
								<form:input path="copyRight.signedTarget" id="signedTarget" placeholder="签约对象" class="span6" />
							</div>
						</div>
						<div class="control-group" >
							<label class="control-label" for="form-field-1">对象类型：</label>
							<div class="controls">
								<form:input path="copyRight.targetType" id="targetType" placeholder="编号"  class="span6" />
							</div>
						</div>
						<div class="control-group">
							<label class="control-label" for="form-field-1">版权类型：</label>
							<div class="controls">
								<form:input path="copyRight.type" id="type" placeholder="数据字典名称" class="span6" />
							</div>
						</div>
						<form:hidden path="id" id="id" />
						<form:hidden path="productId" id="productId" />
					</div>	
						<!-- ------------------表单部分开始----------------------------- -->
						<!-- ------------------表单按钮部分开始----------------------------- -->
						<div class="form-actions" style="text-align: center; padding-left:0px;">
							<button class="btn btn-success" type="submit" id="save">
								<i class="icon-save bigger-110"></i> 保存
							</button>
							&nbsp; &nbsp; &nbsp;
							<button class="btn btn-inverse" type="reset">
								<i class="icon-undo bigger-110"></i> 清空
							</button>
						</div>
						<!-- ------------------表单按钮部分结束----------------------------- -->
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
