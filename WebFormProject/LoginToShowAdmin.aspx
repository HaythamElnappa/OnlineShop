<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="LoginToShowAdmin.aspx.cs" Inherits="WebFormProject.LoginToShowAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin:60px auto; width:70%">
        <form id="form1" class="px-4 py-3" runat="server">


            <div class="form-group">
                <label for="exampleDropdownFormPassword1">User Name</label>
                <asp:TextBox ID="txtUser" class="form-control" placeholder="Enter UserName" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="exampleDropdownFormPassword1">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" class="form-control" placeholder="Password" TextMode="Password"></asp:TextBox>

            </div>

            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Login" Font-Bold="True" Font-Size="Larger" />

            <div class="dropdown-divider"></div>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ForgetPassword.aspx" Font-Bold="True" class="dropdown-item">Forget password ?</asp:HyperLink>

            <div class="form-group">
                <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Bold="True" Font-Size="Larger"></asp:Label>
            </div>


        </form>
    </div>
</asp:Content>


