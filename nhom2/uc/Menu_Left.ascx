<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Menu_Left.ascx.cs" Inherits="Nhom3.uc.Menu_Left" %>
<div id="wp-pos-left">
    <%--chen vao day--%>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</div>
<%--thống kê truy cập--%>
<div class="box-cyan icon-24-disc wp-modulecontainer"><div class="wp-modulecontainer_inner"><h3 class="wp-moduletitle">

<span class="wp-moduleicon">THỐNG KÊ TRUY CẬP</span></h3>

			<div class="wp-modulecontent">
            <p align=center>Số lượt truy cập: <%= Application["DaTruyCap"].ToString() %></p>
            <p align=center>Số người Online: <%= Application["DangTruyCap"].ToString() %></p>
            </div></div></div>
<%--end thống kê truy cập--%>


<div class="box-white icon-24-megaphone wp-modulecontainer">
    <div class="wp-modulecontainer_inner">
        <h3 class="wp-moduletitle">
            <span class="wp-moduleicon">HỖ TRỢ TRỰC TUYẾN</span></h3>
        <div class="wp-modulecontent">
            <%--hổ trợ trực tuyến--%>
                 <div class="zalo-share-button" data-href="" data-oaid="579745863508352884" data-layout="2" data-color="blue" data-customize=false></div>
            <script src="https://sp.zalo.me/plugins/sdk.js"></script>

            <div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-layout="box_count" data-size="large"><a target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=https%3A%2F%2Fdevelopers.facebook.com%2Fdocs%2Fplugins%2F&amp;src=sdkpreparse" class="fb-xfbml-parse-ignore">Chia sẻ</a></div>
            <div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" nonce="wHMSRi7n"></script>
            </div>
        </div>
    </div>
</div>




<div class="clearbreak"></div>


</div></div>





<a href="default.aspx?page=cart">
    <%-- giỏ hàng--%>
    <div class="cart_right">
        <p>
            <span id="cart_right_product_count">
                <%=this.item.Count %></span> Sản phẩm
        </p>
        <p>
            <span class="text_bold"><span id="cart_right_total">
                <%=this.tong %></span> đ</span>
        </p>
    </div>
</a>

