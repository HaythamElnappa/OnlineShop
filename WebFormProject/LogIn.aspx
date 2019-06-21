<%@ Page Title="" Language="C#" MasterPageFile="~/Login MasterPage.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="WebFormProject.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <section>
        <div class="container my-2"> 
            <div class="row">
                <div class="col-12 col-md-5">
                    <div class="card border border-dark shadow-lg" style="background-color:rgba(0,0,0,.7);color:rgba(255,255,255,.7)!important;border-radius:5%">
                        <div class="card-body">
                            <h2 class="display-4" style="font-weight:bold;color:rgba(255,255,255,.7);">Log In</h2>
                            <hr class="mb-5">
                            <form class="px-3" id="loginForm" runat="server">
                                <div class="form-group">
                                    <label for="txtLoginEmail" style="font-weight:bold;color:rgba(255,255,255,.7);">E-mail</label>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLoginEmail" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLoginEmail" ErrorMessage="(Not Valid)" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Large" ForeColor="Red"></asp:RegularExpressionValidator>
                                   <asp:TextBox ID="txtLoginEmail" class="form-control border border-dark" placeholder="Email" style="background-color:rgba(0,0,0,.3)" runat="server" ForeColor="WhiteSmoke"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLoginPassword" style="font-weight:bold;color:rgba(255,255,255,.7);">Password</label>
                                 <asp:TextBox ID="txtLoginPassword" class="form-control border border-dark" placeholder="Password" style="background-color:rgba(0,0,0,.3)" runat="server" TextMode="Password" ForeColor="#F8F8F8"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnLogin" class="btn btn-info btn-lg" runat="server" Text="Log in" OnClick="btnLogin_Click" />
                                <asp:Label ID="Label1" runat="server" Font-Size="Large" style="color: #FF0000; background-color: #DDEEFF !important"></asp:Label>
                                <asp:HyperLink ID="ForgetPasswordLinke" runat="server" NavigateUrl="~/ForgetPasswordPage.aspx">Forget password</asp:HyperLink>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
</asp:Content>
