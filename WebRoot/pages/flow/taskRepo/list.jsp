<%--
  Created by IntelliJ IDEA.
  User: huangchenxi
  Date: 14-5-22
  Time: 下午4:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/common/taglibs.jsp"%>
<%@ include file="/pages/common/alert.jsp"%>
<%@ include file="/pages/common/context.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>任务仓库</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="${ctx}/js/common.js"></script>
    <script src="${ctx}/pages/flow/taskRepo/list.js"></script>
</head>
<body>
<%@ include file="/pages/common/ajaxMsg.jsp" %>
<form:form id="form" commandName="form" action="manager" class="form-horizontal">
    <form:hidden path="flag" id="flag"></form:hidden>
    <form:hidden path="productType" id="productType"/>
</form:form>
<div class="clearfix">
    <div id="page-content" class="clearfix">
        <div class="row-fluid">
            <!-- ------------------导航页面部分开始----------------------------- -->
            <div class="page-header position-relative" >
                <h1 id="productTitle">
                    流程设计 <small> <i class="icon-double-angle-right"></i>
                    任务仓库
                </small>
                </h1>

            </div>
            <!-- ------------------导航页面部分结束----------------------------- -->
            <div class="row-fluid">
                <!-- ------------------功能页面部分开始----------------------------- -->
                <!-- ------------------功能按钮开始----------------------------- -->
                <div class="ace-thumbnails" id="productAddButton">
                    <button class="btn btn-small btn-primary"
                            onclick="Editorial.Flow.taskRepo.addObj();">
                        <i class="icon-plus-sign bigger-125"></i> 新建任务
                    </button>
                    <button class="btn btn-small btn-primary"
                            onclick="Editorial.Flow.taskRepo.uploadObj();">
                        <i class="icon-arrow-up bigger-125"></i> 导入任务
                    </button>
                    <button class="btn btn-small btn-primary"
                            onclick="Editorial.Flow.taskRepo.saveObj();">
                        <i class="icon-save bigger-125"></i> 保存
                    </button>
                </div>
                <!-- ------------------功能按钮结束----------------------------- -->

                <!-- ------------------功能页面部分结束----------------------------- -->
                <!-- ------------------列表页面部分开始----------------------------- -->

                <div class="table-header"><i class="icon-flag"></i>&nbsp;&nbsp;任务信息列表</div>
                <table id="table_report"
                       class="table table-striped table-bordered table-hover">
                    <thead>
                    <tr>
                        <th width='3%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>

                    </tr>
                    </thead>
                    <tbody align='center'
                           style="line-height: 18px; border: 1px solid #97bbdc;">

                    </tbody>
                    <tfoot>
                    <tr>
                        <th width='3%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                        <th width='15%' align='center'></th>
                    </tr>
                    </tfoot>
                </table>
                <!-- ------------------列表页面部分结束----------------------------- -->
            </div>
        </div>
    </div>
</div>
</body>
</html>