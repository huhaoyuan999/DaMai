$(function() {
	getCustomerList();
});
var timestamp = new Date().getTime();
function getCustomerList() {
	$
			.ajax({
				url : "getCustomerList",
				data : {
					token : timestamp
				},
				type : "Post",
				dataType : "json",
				success : function(data) {
					var strHtml = "";
					strHtml += "<tr>"
					strHtml += "<th scope=\"col\" class=\"w1\">序号</th>";
					strHtml += "<th scope=\"col\" class=\"w2\">姓名</th>";
					strHtml += "<th scope=\"col\" class=\"w3\">证件类型</th>";
					strHtml += "<th scope=\"col\" class=\"w4\">证件号</th>";
					strHtml += "<th scope=\"col\" class=\"w5\">操作</th></tr>";
					if (data.errorCode == "0000") {
						$("#count").val(data.count);
						if (data.count == 0) {
							$("#noInfo").show();
							$('.m-table').hide();
							strHtml += "<tr><td colspan=\"5\">暂无记录</td></tr>";
							$("#customerInfos").html(strHtml);
							return;
						}
						$("#noInfo").hide();
						$('.m-table').show();
						var count = data.count;
						var customerData = eval(data.body);
						$
								.each(
										customerData,
										function(idx, customerItem) {
											strHtml += "<tr>";
											strHtml += "<td>" + (idx + 1)
													+ "</td>";
											strHtml += "<td>"
													+ customerItem.maskedIdentityName
													+ "</td>";
											if (customerItem.identityType == 1) {
												strHtml += "<td>身份证</td>";
											} else if (customerItem.identityType == 4) {
												strHtml += "<td>护照</td>";
											} else if (customerItem.identityType == 5) {
												strHtml += "<td>港澳通行证</td>";
											} else if (customerItem.identityType == 6) {
												strHtml += "<td>台胞证</td>";
											}

											strHtml += "<td>"
													+ customerItem.maskedIdentityNo
													+ "</td>";
											strHtml += "<td><a href=\"javascript:;\" onclick=\"preDeleteByIdentityHash('"
													+ customerItem.identityHash
													+ "','"
													+ customerItem.maskedIdentityName
													+ "')\">删除</a></td>";
											strHtml += "</tr>";

										});
						$("#customerInfos").html(strHtml);
					} else {
						strHtml += "<tr><td colspan=\"5\">查询失败</td></tr>";
						$("#customerInfos").html(strHtml);
						return;
					}
				},
				error : function() {
					strHtml += "<tr><td colspan=\"5\">查询失败</td></tr>";
					$("#customerInfos").html(strHtml);
					return;
				}
			});
}

function preDeleteByIdentityHash(identityHash, identityName) {
	$('#deleteCustomerName').text(identityName);
	$('#deleteIdentityHash').val(identityHash);
	popFunL('.pop-8');
}

function deleteByIdentityHash() {
	var identityHash = $('#deleteIdentityHash').val();
	$.ajax({
		url : "deleteByIdentityHash",
		data : {
			identityHash : identityHash
		},
		type : "Post",
		dataType : "json",
		success : function(data) {
			if (data.errorCode == "0000") {
				// window.location.reload(true);
				$(".btn04").click();
				getCustomerList();

			} else if (data.errorCode == "0009") {
				popFunL('.pop-11');
			} else {
				popFunL('.pop-10');
			}
		}
	});

}

/**
 * 保存新增观演人
 */
function saveCustomer() {
	if (checkNewCustomer()) {
		// 显示遮罩和旋转。一直
		$(".m-mask").show();
		$("#loadingTips").show();
		var username = $("#username").val();
		var cardType = $("#cardType").val();
		var idNumber = $("#card").val();
		var smsCode = $("#smsCode").val();
		$.ajax({
			url : "saveCustomer",
			data : {
				username : username,
				idNumber : idNumber,
				cardType : cardType,
				smsCode : smsCode,
				token : timestamp
			},
			type : "post",
			dataType : "json",
			success : function(data) {
				$("#loadingTips").hide();
				$("#count").val(data.body);
				if (data.errorCode == "0000") {
					$("#successTips").show();
				} else {
					$("#errorMsg").show();
					$("#errorMsg").find(".t2").text(data.info);
				}
			},
			error : function(data) {
				console.log(data);
				$("#loadingTips").hide();
				$("#networkAnomaly").show();
			}
		});
	}
}

function cancelMask() {
	$(".m-mask").hide();
	$(".m-modal").hide();
	var count = $("#count").val();
	var phone = $("#phone").val();
	if (openSMS == '1' && count < 4) {
		$("#phoneTips").show();// 显示提示
		$("#smsCodes").show();// 显示短信
		$("#phoneNo").text(phone);
	}
}

/**
 * 重新录入观演人
 */
function reEntryCustomer() {
	// 清空
	$("#username").val("");
	$("#card").val("");
	$("#smsCode").val("");
	$("#cardType option[value=1]").attr("selected", "selected");
	// 弹窗关闭
	$(".m-mask").hide();
	$(".m-modal").hide();
	var count = $("#count").val();
	var phone = $("#phone").val();
	if (openSMS == '1' && count < 4) {
		$("#phoneTips").show();// 显示提示
		$("#smsCodes").show();// 显示短信
		$("#phoneNo").text(phone);
	}
}
/**
 * 取消添加
 */
function cancelAdd() {
	$('#createNewCustomer').hide();
	var count = $("#count").val();
	if (count > 0) {
		$("#noInfo").hide();
		$('.m-table').show();
	} else {
		$("#noInfo").show();
		$('.m-table').hide();
	}
    window.location.reload(true);
}