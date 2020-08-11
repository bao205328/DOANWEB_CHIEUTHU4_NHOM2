<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="login.ascx.cs" Inherits="Nhom3.AdminControls.login" %>
<script runat="server">

    protected void bntLogin_Click(object sender, EventArgs e)
    {
       if (txtuser.Text.Trim().Equals(""))
            {
                Label1.Text = "Tên đăng nhập không thể bỏ trống";
                txtuser.Focus();
                return;
            }
            if (txtpass.Text.Trim().Equals(""))
            {
                Label1.Text = "Mật khẩu không thể bỏ trống";
                txtpass.Focus();
                return;
            }
        
            DataAccess.users_info us;
            us = DataAccess.users_info.Checkuser(txtuser.Text.Trim());
            if (us.username.ToString() != null)
            {
                if (txtpass.Text == us.password.ToString())
                {
                    if (us.status==true)
                    {
                        Session["admin"] = us.id;
                        Session["username"] = us.username;
                        Session["name"] = us.fullname;
                        Session["role"] = us.rolecode;
                        
                        Response.Redirect("admin.aspx");
                    }
                    else
                    {
                        Label1.Text = "Tài khoản của bạn đã bị khóa";
                    }
                }
                else
                {
                    Label1.Text = "Mật khẩu không chính xác";
                }
            }
            else
            {
                Label1.Text = "Tên đăng nhập này không tồn tại";
            }
        }
</script>

<div id="loginpanelwrap">
    <div class="loginheader">
        <div class="logintitle">
            <a href="#">Đăng nhập Admin</a></div>
    </div>
    <div class="loginform">
        <div class="loginform_row">
            <label>
                Username:</label>
            <asp:TextBox ID="txtuser" runat="server" CssClass="loginform_input"></asp:TextBox>
        </div>
        <div class="loginform_row">
            <label>
                Password:</label>
            <asp:TextBox ID="txtpass" runat="server" CssClass="loginform_input" TextMode="Password"></asp:TextBox>
        </div>
        <div class="loginform_row">
            <asp:Button ID="bntLogin" runat="server" Text="Login" CssClass="loginform_submit"
                OnClick="bntLogin_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Style="color: #FF0000"></asp:Label>
        </div>
        <div class="clear">
        </div>
    </div>
</div>
