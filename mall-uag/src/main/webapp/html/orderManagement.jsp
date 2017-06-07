<%@ page contentType="text/html;charset=utf-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8" />
		<title>后台管理系统-订单管理</title>
		<meta name="Description" content="" />
		<meta name="Keywords" content="" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<meta name="renderer" content="webkit|ie-comp|ie-stand" />
		<link rel="icon" href="/images/headIco.png" type="image/x-ico" />
		<link rel="stylesheet" type="text/css" href="/css/reset.css" />
		<link rel="stylesheet" type="text/css" href="/css/style.css" />
		<link rel="stylesheet" type="text/css" href="/css/common.css" />
	</head>

	<body>
		<div id="wrap">
			<div id="left">
				<h1></h1>
				<div class="leftNavi">
					<dl>
						<dt>会员管理</dt>
						<dd onclick="window.location.href='memberManagement.html'">会员管理</dd>
						<dd onclick="window.location.href='inviteCode.html'">邀请码管理</dd>
					</dl>
					<dl>
						<dt>类目管理</dt>
						<dd onclick="window.location.href='categoryFirst.html'">一级类目管理</dd>
						<dd onclick="window.location.href='categorySecond.html'">二级类目管理</dd>
						<dd onclick="window.location.href='categoryThird.html'">三级类目管理</dd>
					</dl>
					<dl>
						<dt>机型管理</dt>
						<dd onclick="window.location.href='newCarType.html'">新增机型</dd>
						<dd onclick="window.location.href='carManagement.html'">机型管理</dd>
					</dl>
					<dl>
						<dt>商品管理</dt>
						<dd onclick="window.location.href='newProduct.html'">新增商品</dd>
						<dd onclick="window.location.href='groundingProduct.html'">已上架商品</dd>
						<dd onclick="window.location.href='prepareProduct.html'">待发布商品</dd>
					</dl>
					<dl>
						<dt class="leftNaviOn">订单管理</dt>
						<dd class="leftNaviOns">订单管理</dd>
					</dl>
					<dl>
						<dt>基础设置</dt>
						<dd onclick="window.location.href='carBrandSetting.html'">机型品牌管理</dd>
						<dd onclick="window.location.href='productBrandSetting.html'">商品品牌管理</dd>
						<dd onclick="window.location.href='metadataSetting.html'">元数据管理</dd>
						<dd onclick="window.location.href='appImgSetting.html'">APP展示图片管理</dd>
					</dl>
				</div>
			</div>
			<div id="right">
				<div class="exit">
					<div class="exitBot">
						<img src="/images/exit.png" />
					</div>
				</div>
				<div class="rightPos">
					<a class="rightPosTit" href="javascript:;">用户中心</a> >
					<a class="rightPosCld" href="javascript:;">订单管理</a>>
					<a class="rightPosCld" href="javascript:;">订单管理</a>
				</div>
				<div class="main">
					<div class="mainTitle boxSizing borBot1">
						<h2 class="boxSizing borBot2">订单管理</h2>
					</div>
					<div class="mainOperation">
						<div class="mainOperationInput">
							<span><input type="text" name="" id="" value="" placeholder="请输入订单编号" class="inputText1 inputTex marR1 orderNum"/></span>
							<span><input type="text" name="" id="" value="" placeholder="请输入商品标题" class="inputText1 inputTex marR1 orderTitle"/></span>
							<span>
								<input type="text" name="" id="" value="" placeholder="请输入品牌" class="inputText1 inputTex marR1 orderBrand pattern_productbrand"/>
								<div id="pattern_productbrand" class="pattern_name"></div>
							</span>
							<span><input type="text" name="" id="" value="" placeholder="请输入邀请码" class="inputText1 inputTex marR1 orderCode"/></span>
							<span><input type="text" name="" id="" value="" placeholder="请输入注册买家手机号" class="inputText1 inputTex marR1 orderTel"/></span>
							<span>
								<input class="datainp inputTex inputText6 start_date" id="dateFrom" type="text" placeholder="创建开始时间" value=""  readonly>
								到
								<input class="datainp inputTex inputText6 marR1 end_date" id="dateTo" type="text" placeholder="创建结束时间" value=""  readonly>
							</span>
							<span>区间查询：
								<input type="text" name="" id="" value="" placeholder="输入买家邀请码" class="inputText1 inputTex marR1 orderCodeStart" maxlength="10"/>
								<input type="text" name="" id="" value="" placeholder="输入买家邀请码" class="inputText1 inputTex marR1 orderCodeEnd" maxlength="10"/>
							</span>
							<span>
								<input type="hidden" name="page_now" id="page_now" value="1"/>
		                    	<input type="hidden" name="page_limit" id="page_limit" value="15"/>
		                    	<input type="button" name="" id="query_btn" value="查 询" class="inputBot1 marL1" style="display:none"/>
								<input type="button" name="" id="" value="搜  索" class="inputBot1 searchLists marL1" onclick="searchOnclick(0)"/>
							</span>
							<span><input type="button" name="" id="" value="清 除" class="inputBot1 marL1 clearInput"/></span>
							<span><input type="button" name="" id="" value="导 出" class="inputBot1 export_client_excel"/></span>
						</div>
					</div>
					<div class="add">
						<span class="resultNum">共搜索到<label id="total_num"></label>条数据</span>
					</div>
					<div class="mainLists">
						<div class="list">
							<table border="1" cellspacing="" cellpadding="" id="orderGrid">	
							</table>
						</div>
						<div class="page">
							
						</div>
					</div>
					<div class="shade">
						<div class="shadeCon">
							<div class="shadeMain">								
							</div>
						</div>
						
					</div>
					<div class="shadeImg">
						<div class="shadeWord">
							<div class="shadeMain">
								<h4 class="borBot2 cor2">查看图片</h4>
								<div class="showImage"></div>
								<div class="shadeBotPos">
									<span class="shadeBot inviteCancle" id="closeImg">关闭</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script src="/plugin/jedate/jedate.js" type="text/javascript" charset="utf-8"></script>
	<script type="text/javascript">
		jeDate({
			dateCell: "#dateFrom",
			format: "YYYY年MM月DD日 hh:mm:ss",
			isinitVal: false,
			isTime: true,
		});
		jeDate({
			dateCell: "#dateTo",
			format: "YYYY年MM月DD日 hh:mm:ss",
			isinitVal: false,
			isTime: true,
		});

		function getNowFormatDate() {
			var date = new Date();
			var seperator1 = "-";
			var seperator2 = ":";
			var month = date.getMonth() + 1;
			var strDate = date.getDate();
			if(month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if(strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate +
				" " + date.getHours() + seperator2 + date.getMinutes() +
				seperator2 + date.getSeconds();
			return currentdate;
		};
	</script>
	<script src="/js/jquery-1.12.1.min.js" type="text/javascript" charset="utf-8"></script>
	<script src="/js/main.js" type="text/javascript" charset="utf-8"></script>
	<script src="/js/common/common.js" type="text/javascript" charset="utf-8"></script>
	<script src="/js/common/goodsBrandData.js" type="text/javascript" charset="utf-8"></script>
	<script src="/js/htmlOss.js" type="text/javascript" charset="utf-8"></script>
	<script src="/js/order/order.js" type="text/javascript" charset="utf-8"></script>

</html>