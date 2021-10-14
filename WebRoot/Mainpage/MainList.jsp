<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Top.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>	
		#div-1{
			margin-left: 68px;
		}
	
		
	</style>

  </head>
  
  <body>
  <jsp:include page="../Top.jsp"></jsp:include>
  
    <!-- banner广告位 -->
    <div class="banner container">
    	<!-- banner侧边栏 -->
         <ul class="circle">
             <li></li>
             <li></li>
             <li></li>
             <li></li>
             <li></li>
             <li></li>

         </ul> 
    	 <div class="banner-aside">
    	 	<ul>
    	 		<li><a href="">手机 电话卡 <span>></span></a></li>
    	 		<li><a href="">电视 盒子   <span>></span></a></li>
    	 		<li><a href="">笔记本 平板 <span>></span></a></li>
    	 		<li><a href="">家电 插线板 <span>></span></a></li>
    	 		<li><a href="">出行 穿戴   <span>></span></a></li>
    	 		<li><a href="">智能 路由器 <span>></span></a></li>
    	 		<li><a href="">电源 配件   <span>></span></a></li>
    	 		<li><a href="">健康 儿童   <span>></span></a></li>
    	 		<li><a href="">耳机 音箱   <span>></span></a></li>
    	 		<li><a href="">生活 箱包   <span>></span></a></li>
    	 	</ul>          
    	 </div>
    </div>
    <div class="banner-footer container">
<!--         <div class="bafter-hd">
            <h4>精品推荐</h4>
            <a href="">查看全部</a>
        </div> -->

         <!-- /*广告位底部-左边广告 开始*/ -->
        <div class="bafter-bd">
            <ul>  
                <li class="icon01 icon"><a class="icon" href="" ></a> </li>
                <li class="icon02 icon" ><a  class="icon" href=""></a></li>
                <li  class="icon03 icon" ><a class="icon"  href=""></a></li>
                <li  class="icon04 icon" ><a  class="icon" href=""></a></li>
                <li  class="icon05 icon" ><a class="icon" href=""></a></li>
                <li  class="icon06 icon" ><a  class="icon" href=""></a></li>    
            </ul>
        </div>
       <!--   /*广告位底部-左边广告 结束*/ -->
       <!-- 广告位底部——右边广告 开始 -->
       <div class="bafter-right">
           <ul>
               <li><a href="#"><img src="images/b1.png"></a></li>
               <li><a href=""><img src="images/b2.png"></a></li>
               <li><a href=""><img src="images/b3.png"></a></li>
           </ul>
           
       </div>
      
    </div>
     <!--  广告位底部——右边广告 结束 -->
     
          
     <!-- 小米闪购结束 -->
     <!-- 黑鲨游戏手机 开始 -->
     <div class="heisha container">
         <img src="images/c1.png">
     </div>
     <!-- 黑鲨游戏手机 结束 -->
     
     
			
	
     <div class="f5-bd ">
         <div class="shouji-hd">
            <h4>手机</h4>
            <p><a href="">查看全部 <i>></i></a></p>
        </div>
        <!-- /*手机广告位*/ -->
        <div class="shouji-banner container">
            
           <ul>
           <div class="shouji-aside" style="margin-top: 30px;">
                <img src="images/d1.png">
            </div>
           			<s:forEach var="i" items="${list}" > 
		          		<li style="display: table-cell;">
           			<div style="margin-left: 10px; margin-top: 30px;width: 188px;margin-right: 47px;">
		          			<!--   <a href=""><img src="images/MianLIst/e1.png"></a> -->   
		          				 <a href="/Shop_front/mainpage/detaillist?id=${i.goodsID}&MemberID=${memberID}"><img src="/Shop_front/article/filess/${i.goodsUrl}" style="width: 234px;height: 230px;"/></a> 
		                        <h5>
		                           <a href="/Shop_front/mainpage/detaillist?id=${i.goodsID}&MemberID=${memberID}">${i.goodsName}</a>
		                        </h5>
		                        <p>${i.goodsIntroduce}</p>
		                        <p class="migou-p">
		                           <span class="migou-span">${i.marketPrice}元 </span><del></del>
		                        </p>                      
          		
           </s:forEach>
           </div>
          		</li><br/>
          		
           <s:forEach var="i" items="${list1}" end="3">
           			<li style="display: table-cell;">
           			<div style="margin-left:10px">
		          			<a href="/Shop_front/mainpage/detaillist?id=${i.goodsID}&MemberID=${memberID}"><img src="/Shop_front/article/filess/${i.goodsUrl}" style="width: 234px;height: 230px;"/></a> 
		                        <h5>
		                           <a href="/Shop_front/mainpage/detaillist?id=${i.goodsID}&MemberID=${memberID}">${i.goodsName}</a>
		                        </h5>
		                        <p>${i.goodsIntroduce}</p>
		                        <p class="migou-p">
		                           <span class="migou-span">${i.marketPrice}元 </span><del></del>
		                        </p>                      
          		</li>
           </s:forEach>
            </div>
           </ul>
            
            	
            <%-- <div class="shouji-top">
                <ul>
                    <li>
                        <a href=""><img src="images/e1.png"></a>
                        <h5>
                           <a href="">小米8 青春版 4GB+64GB</a>
                        </h5>
                        <p>潮流镜面渐变色， 2400自拍旗舰</p>
                        <p class="migou-p">
                           <span class="migou-span">1399元 </span><del></del>
                        </p>                      
                    </li>
                    <li>
                        <a href=""><img src="images/e2.png"></a>
                        <h5>
                           <a href="">小米8 屏幕指纹版，8GB+64GB</a>
                        </h5>
                        <p>全球首款压感屏幕指纹，双屏GPS超级呃呃呃</p>
                        <p class="migou-p">
                           <span class="migou-span">3599元 </span><del></del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e3.png"></a>
                        <h5>
                           <a href="">小米8 SE 4GB+64GB</a>
                        </h5>
                        <p>AI超感光双摄 三星 AMOLED 屏幕人人人那边</p>
                        <p class="migou-p">
                           <span class="migou-span">1499元 </span><del>1799元 </del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e4.png"></a>
                        <h5>
                           <a href="">小米MIX 2S 8GB+256GB</a>
                        </h5>
                        <p>骁龙845 年度旗舰处理器 艺术般的体验凤飞飞 </p>
                        <p class="migou-p">
                           <span class="migou-span">3399元 </span><del>3999元 </del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e5.png"></a>
                        <h5>
                           <a href="">小米6S 128GB+256GB</a>
                        </h5>
                        <p>轻薄美观的拍照手机</p>
                        <p class="migou-p">
                           <span class="migou-span">1649元 </span><del>1999元 </del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e6.png"></a>
                        <h5>
                           <a href="">小米MIX 3 64GB+128GB</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">1699元 </span><del></del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e7.png"></a>
                        <h5>
                           <a href="">红米6 Pro 64GB+128GB</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">869元 </span><del>99元 </del>
                        </p>  
                    </li>
                    <li>
                        <a href=""><img src="images/e8.png"></a>
                        <h5>
                           <a href="">红米6A 2GB+16GB</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">569元 </span><del>599元 </del>
                        </p>  
                    </li>
                </u>
            </div>       
        </div> --%>
   <div class="mi-pic-tv container">
         <img src="images/f1.png">
     </div>
     <div class="mi-tv container">
        <div class="box-hd">
            <h2>家电</h2>
            <ul>
                <li><a href="">热门</a></li>
                <li><a href="">电视影音</a></li>
                <li><a href="">电脑</a></li>
                <li><a href="">家居</a></li>
            </ul>
        </div>
        <div class="box-bd container">
            <div class="box-bd-top">
                <ul>
                    <li>
                        <a href=""><img src="images/f2.png"></a>
                        
                    </li>
                    <li>
                        <a href=""><img src="images/f3.png"></a>
                        <h5>
                           <a href="">小米电视4A 43英寸青春版</a>
                        </h5>
                        <p>全高清屏幕 人工智能语言</p>
                        <p class="migou-p">
                           <span class="migou-span">1499元 </span><del>1799元 </del>
                        </p>                        
                        
                    </li>
                    <li>
                        <a href=""><img src="images/f4.png"></a>
                        <h5>
                           <a href="">小米电视4C 50英寸</a>
                        </h5>
                        <p>4K HDR / 人工智能语言</p>
                        <p class="migou-p">
                           <span class="migou-span">3699元 </span><del>3999元 </del>
                        </p>                         
                    </li>
                    <li>
                        <a href=""><img src="images/f5.png"></a>
                        <h5>
                           <a href="">15.6"笔记本 I5 4GMX110</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">4199元 </span><del> </del>
                        </p> 
                    </li>
                    <li>
                        <a href=""><img src="images/f6.png"></a>
                        <h5>
                           <a href="">13.3" 小米笔记本 Air 四核 I7 8G</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">59999元 </span><del></del>
                        </p> 
                    </li>

                </ul>
            </div>
            <div class="box-bd-bottom">
               <div class="box-bd-top">
                <ul>
                    <li>
                        <a href=""><img src="images/g1.png"></a>
                        
                    </li>
                    <li>
                        <a href=""><img src="images/g2.png"></a>
                        <h5>
                           <a href="">小米电视4A 43英寸青春版</a>
                        </h5>
                        <p>全高清屏幕 人工智能语言</p>
                        <p class="migou-p">
                           <span class="migou-span">1499元 </span><del>1799元 </del>
                        </p>                        
                        
                    </li>
                    <li>
                        <a href=""><img src="images/g3.png"></a>
                        <h5>
                           <a href="">小米电视4C 50英寸</a>
                        </h5>
                        <p>4K HDR / 人工智能语言</p>
                        <p class="migou-p">
                           <span class="migou-span">3699元 </span><del>3999元 </del>
                        </p>                         
                    </li>
                    <li>
                        <a href=""><img src="images/g4.png"></a>
                        <h5>
                           <a href="">15.6"笔记本 I5 4GMX110</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">4199元 </span><del> </del>
                        </p> 
                    </li>
                  </ul>
                  <div class="box-bd-r">
                      <ul>
                          <li>
                              <a href=""><img src="images/g5.png"></a>
                        <h5>
                           <a href="">小米净水器</a>
                        </h5>
                        <p></p>
                        <p class="migou-p">
                           <span class="migou-span">4199元 </span><del> </del>
                        </p>
                          </li>
                          <li>
                              <a href=""><img src="images/g6.png"></a>
                        <h5>
                           <a href="">浏览更多</a>
                        </h5>
                        <p>热门</p>
                        <p class="migou-p">
                           <span class="migou-span"> </span><del> </del>
                        </p>                             
                          </li>
                      </ul>
                  </div>
               </div>
            </div>

        </div> 
<jsp:include page="../Bottom.jsp"></jsp:include>
</body>
</html>