BMEP.Dic = function() {
	this.editor = null;
	this.artDialog = null;
	this.oTable1 = null;
};

BMEP.Dic.addObj = function(dicClassId) {
	var url = $('#ctx').val() + "/pages/dic/form/edit?dicClassId=" + dicClassId;
	var commonModalCss = {
		"width" : "500px",
		"height" : "300px"
	};
	var commonModalBodyCss = {
		"max-height" : "800px"
	};
	openCommonModalInFrame(url, commonModalCss, commonModalBodyCss);
};

BMEP.Dic.modObj = function(id) {
	var url = $('#ctx').val() + "/pages/dic/form/edit?id=" + id+"&dicClassId=" + $("#bdic_id").val();
	var commonModalCss = {
			"width" : "500px",
			"height" : "300px"
	};
	var commonModalBodyCss = {
		"max-height" : "800px"
	};
	openCommonModalInFrame(url, commonModalCss, commonModalBodyCss);
};

BMEP.Dic.delObj = function(id) {
		openConfirmModalInFrame("您确定数据字典吗？",function(){
		var url = $('#ctx').val() + "/pages/dic/form/delete?id=" + id+"&dicClassId="+ $("#bdic_id").val();
		$.ajax({
			"dataType" : 'json',
			"type" : "POST",
			"url" : url,
			"cache" : false,
			"success" : function(response) {
				if (response.isSuccess == "true") {
					openSuccessAlertModalInFrame(response.msg);
					refreshFrameDataTableInFrame('BMEP.Dic.oTable1');
				} else {
					openErrorAlertModalInFrame(response.msg);
				}
			},
			"error" : function(response) {
				alert("error");
			}
		});
	},null,null);
};
BMEP.Dic.query = function() {
	// 重新刷新页面Table
	refreshFrameDataTableInFrame('BMEP.Dic.oTable1');
};

BMEP.Dic.retrieveData = function(sSource, aoData, fnCallback) {
	$.ajax({
		"dataType" : 'json',
		"type" : "POST",
		"url" : sSource,
		"cache" : false,
		"data" : aoData,
		"success" : function(response) {
			fnCallback(response);
		},
		"error" : function(response) {
			alert("error");
		}
	});
};

$(function() {

    $(".on").click(function(){
		$(".on-down").slideToggle();
	});
    
	BMEP.Dic.oTable1 = $('#table_report').dataTable({
		"bFilter" : false, // 开关，是否启用客户端过滤器
		"bProcessing" : true, // 当datatable获取数据时候是否显示正在处理提示信息。
		"bAutoWidth" : false, // 自适应宽度
		"sPaginationType" : "full_numbers", // 分页样式
		"bServerSide" : true, // 从服务器端取数据
		"sAjaxSource" : $('#ctx').val() + "/pages/dic/form/manager?dicClassId=" + $("#bdic_id").val(), // mvc后台ajax调用接口。
		"fnServerParams" : function(aoData) {
			aoData.push({
				"name" : "code",
				"value" : $("#query_dic_code").val()
			});
			aoData.push({
				"name" : "name",
				"value" : $("#query_dic_name").val()
			});
		},
		"fnDrawCallback": function(oSettings){
			for(var i=0,iLen=oSettings.aiDisplay.length;i<iLen;i++)
			{
				$('td:eq(0)',oSettings.aoData[ oSettings.aiDisplay[i] ].nTr).html(i+oSettings._iDisplayStart+1);
			}
		},
		"fnServerData" : BMEP.Dic.retrieveData,
		"aoColumns" : [
		   { "sTitle" : "序号",
			 "mDataProp" : "id"
			
		}, {
			"sTitle" : "数据字典编号",
			"mDataProp" : "code"
		}, {
			"sTitle" : "数据字典名称",
			"mDataProp" : "name"
		}, {
			"sTitle" : "操作",
			"mData" : null,
			"aTargets" : [ -1 ],
			// 自定义列的样式
			"fnRender" : function(oObj) {
				var start = '<div class="hidden-phone visible-desktop btn-group">';
				var edit = '<button class="btn btn-mini btn-warning" title="修改" onclick="BMEP.Dic.modObj(\'' + oObj.aData.id + '\')"><i class="icon-edit bigger-120"></i></button>';
				var trash = '<button class="btn btn-mini btn-danger" title="删除" onclick="BMEP.Dic.delObj(\'' + oObj.aData.id + '\')"><i class="icon-trash bigger-120"></i></button>';
				var end = '</div>';
				return start + edit + trash + end;

			}
		} ],

		// 多语言配置
		"oLanguage" : {
			"sProcessing" : "正在加载中......",
			"sLengthMenu" : "每页显示 _MENU_ 条记录",
			"sZeroRecords" : "对不起，查询不到相关数据！",
			"sEmptyTable" : "表中无数据存在！",
			"sInfo" : "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
			"sInfoFiltered" : "数据表中共为 _MAX_ 条记录",
			"sSearch" : "搜索",
			"oPaginate" : {
				"sFirst" : "首页",
				"sPrevious" : "上一页",
				"sNext" : "下一页",
				"sLast" : "末页"
			}
		}

	});
	$('[data-rel=tooltip]').tooltip();
});