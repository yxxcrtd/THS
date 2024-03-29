<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/pages/common/ajaxMsg.jsp"%>
<%@ include file="/pages/common/context.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>产品类型属性分类维护</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="${ctx}/js/common.js"></script>
<script src="${ctx}/pages/product/productType/licence_list.js"></script>
<script src="${ctx}/pages/product/productType/license_edit.js"></script>
</head>
<body>
	<div class="clearfix">
		<div id="page-content" class="clearfix">
			<!-- ------------------导航页面部分开始----------------------------- -->
			<div class="row-fluid">
				<div class="page-header position-relative">
					<h1>
						产品类型属性分类管理<small> <i class="icon-double-angle-right"></i> <c:if test="${form.id==null||form.id=='0'||form.id==''}">
			    	新增授权信息
			    </c:if> <c:if test="${form.id!=null&&form.id!='0'&&form.id!=''}">
			    	修改授权信息
			    </c:if>
						</small>
					</h1>
				</div>
				<!-- ------------------导航页面部分结束----------------------------- -->
				<div class="row-fluid">
					<!-- ------------------表单部分开始----------------------------- -->
					<div class="table-header on">
						基本信息
					</div>
					<form:form id="pTypePropClassifyForm" commandName="form" class="form-horizontal">
					<div class="on-down">
						<div class="control-group">
							<label class="control-label" for="form-field-1">产品许可类型：</label>
							<div class="controls">
								<form:select id="licenseType" path="productLicense.licenseType" class="span6">
									<option value="0">----选择-----</option>
									<form:options items="${form.typeList}" itemLabel="name" itemValue="id"/>
								</form:select>
							</div>
						</div>
						<div class="control-group" id="nameDiv">
							<label class="control-label" for="form-field-1">名称：</label>
							<div class="controls">
								<form:input path="productLicense.licenseName" id="name" class="span6" onblur="Editorial.ProductType.Licence.licenceName();"/>
								<span id="nameSpan" class="help-inline"></span>
							</div>
						</div>
						<%--<div class="control-group">--%>
							<%--<label class="control-label" for="form-field-1">开始时间：</label>--%>
							<%--<div class="controls">--%>
								<%--<form:input path="productLicense.licenseStartOn" id="licenseStartOn" class="span6" />--%>
							<%--</div>--%>
						<%--</div>--%>
						<%--<div class="control-group" id="orderDiv">--%>
							<%--<label class="control-label" for="form-field-1">结束时间：</label>--%>
							<%--<div class="controls">--%>
								<%--<form:input path="productLicense.licenseEndOn" id="licenseEndOn" />--%>
								<%--<span id="orderSpan" class="help-inline"></span>--%>
							<%--</div>--%>
						<%--</div>--%>
						<div class="control-group" id="licenseMaxDiv">
							<label class="control-label" for="form-field-1">并发数：</label>
							<div class="controls">
								<form:input path="productLicense.licenseMax" id="licenseMax" class="span6" onblur="Editorial.ProductType.Licence.licenseMax();"/>
								<span id="licenseMaxSpan" class="help-inline"></span>
							</div>
						</div>
                        <div class="control-group">
                            <label class="control-label" for="form-field-1">产品许可类型：</label>
                            <div class="controls">
                                <form:select id="licenseMode" path="productLicense.licenseMode" class="span6">
                                    <option value="0">----选择-----</option>
                                    <form:options items="${form.modeList}" itemLabel="name" itemValue="id"/>
                                </form:select>
                            </div>
                        </div>
						<form:hidden path="tid" id="tid" />
					</div>	
						<!-- ------------------表单部分结束----------------------------- -->
						<!-- ------------------表单按钮部分开始----------------------------- -->
						<div class="form-actions" style="text-align: center; padding-left: 0px;">
							<button class="btn btn-success" id="save" type="submit">
								<i class="icon-save bigger-110"></i> 保存
							</button>
							&nbsp; &nbsp; &nbsp;
							<button class="btn btn-inverse" type="reset" id="reset">
								<i class="icon-undo bigger-110"></i> 清空
							</button>
						</div>
						<!-- ------------------表单按钮部分结束----------------------------- -->
                        <form:hidden path="productLicense.licenseId"/>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
