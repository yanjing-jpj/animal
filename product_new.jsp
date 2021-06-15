<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商城首页</title>
</head>
<body>

<div class="wrap">

<s:action name="header" executeResult="true"/>

	<div class="main">
		<div class="content">
		
			<div class="content_bottom">
			
	    		<div class="heading">
	    		<h3>新品上架</h3>
	    		</div>
				
				<div class="page-no">${pageTool}</div>
				
				<div class="clear"></div>
				
    		</div>
    		
			<div class="section group">
			
				<s:iterator value="newList">
					<div class="grid_1_of_4 images_1_of_4">
						<a href="detail.action?productid=<s:property value="product.id"/>">
							<img src="../<s:property value="product.cover"/>" alt="<s:property value="product.name"/>" width="212px" height="212px" />
						</a>
						<h2><a href="detail.action?productid=<s:property value="product.id"/>"><s:property value="product.name"/></a></h2>
						<p><span class="price">￥<s:property value="product.price"/></span></p>
					    <div class="button">
				     		<s:if test="product.stock>0"><span><a href="javascript:buy(<s:property value="id"/>);">加入购物车</a></span></s:if>
							<s:else><span><a style="background:#ccc;color:red;">库存不足</a></span></s:else>
						</div>
					    <div class="button">
					     	<span><a href="detail.action?productid=<s:property value="product.id"/>" class="details">查看详情</a></span>
					    </div>
					</div>			
				</s:iterator>
				
			</div>
			
    	</div>
	</div>

<jsp:include page="footer.jsp"/>

</div>

</body>
</html>