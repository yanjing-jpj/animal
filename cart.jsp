<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>
 <div class="wrap">

<s:action name="header" executeResult="true"/>

<div class="main">
    <div class="content">
    	<div class="login_panel"  style="width:600px">	
        	<span style="color:red;"><s:actionmessage/></span>
        	
        	<s:if test="#session.indent != null">
        	
				<h3>我的购物车</h3>
				
				<table class="cart_table">
				
					<s:iterator value="#session.indent.itemList">
						<tr class="cart_title">
							<td>
								<a href="detail.action?productid=${product.id}">
									<img src="../${product.cover}" class="cart_thumb" border="0"/>
								</a>
							</td>
							<td>${product.name}</td>
							<td>￥${product.price}</td>
							<td>x ${amount}</td>
							<td>￥${total}</td>
							<td>
								<a href="javascript:buy(${product.id});">[添加]</a>
								<a href="javascript:lessen(${product.id});">[减少]</a>
								<a href="javascript:deletes(${product.id});">[删除]</a>
							</td>
						</tr>			
					</s:iterator>
					
	          		<tr>
			            <td colspan="4" class="cart_total"><span class="red">总价: </span></td>
			            <td><s:property value="#session.indent.total"/></td>
	          		</tr>
	        	</table>
        	
	            <div class="buttons">
	            	<div style="float:right; padding-top: 20px">
	            		<button class="grey" onclick="location.href='save.action'">提交订单</button>
	            	</div>
	            </div>
	            
            </s:if>
            
            <div class="clear"></div>
		</div>
       <div class="clear"></div>
    </div>
 </div>

<jsp:include page="footer.jsp"/>

</div>

</body>
</html>
