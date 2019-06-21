<%@ Page Title="" Language="C#" MasterPageFile="~/Login MasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebFormProject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<section>
        <div class="container my-5">
            <div class="row">
                <div class="col-12 col-md-6 ">
                    <div class="card border border-dark shadow-lg"style="background-color:rgba(0,0,0,.7);color:rgba(255,255,255,.7); border-radius:5%">
                        <div class="card-body">
                            <h2 class="display-4" style="font-weight:bold;color:rgba(255,255,255,.7);">Sign Up</h2>
                            <hr class="mb-5">
                            <form class="px-3" id="registerForm" runat="server">
                                <div class="form-group">
                                    <label for="txtFirstName">First Name<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtFirstName" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtFirstName" ErrorMessage="(Not Valid)" Font-Size="Large" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"></asp:RegularExpressionValidator>
                                    </label>
                                   &nbsp;<asp:TextBox ID="txtFirstName"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="First Name" runat="server" MaxLength="30" ForeColor="#F8F8F8"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtLastName">Last Name</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtLastName" ErrorMessage="(Not Valid)" Font-Size="Large" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"></asp:RegularExpressionValidator>
&nbsp;<asp:TextBox ID="txtLastName"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="Last Name" runat="server" MaxLength="30" ForeColor="#F8F8F8"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtUserName">User Name<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUserName" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtUserName" ErrorMessage="(Not Valid)" Font-Size="Large" ForeColor="Red" ValidationExpression="^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$"></asp:RegularExpressionValidator>
                                    </label>
                                   &nbsp;<asp:TextBox ID="txtUserName"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="User Name" runat="server" MaxLength="35" ForeColor="#F8F8F8"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="txtEmail">Email<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="(Not Valid)" Font-Size="Large" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </label>
                                   &nbsp;<asp:TextBox ID="txtEmail"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="Email" runat="server" TextMode="Email" ForeColor="#F8F8F8"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="txtRegisterPassword">Password<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtRegisterPassword" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </label>
                               &nbsp;<asp:TextBox ID="txtRegisterPassword"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="Password" runat="server" TextMode="Password" ForeColor="#F8F8F8"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="txtRetypePassword">Re-type Password<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtRetypePassword" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </label>
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtRegisterPassword" ControlToValidate="txtRetypePassword" ErrorMessage="Not the same like Password" Font-Size="Large" ForeColor="Red"></asp:CompareValidator>
&nbsp;<asp:TextBox ID="txtRetypePassword"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="Re-type Password" runat="server" TextMode="Password" ForeColor="#F8F8F8"></asp:TextBox>

                                </div>
                                <div class="form-group">
                                    <label for="txtAddress">Address<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtAddress" ErrorMessage="(required *)" Font-Size="Large" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </label>
                                 &nbsp;<asp:TextBox ID="txtAddress"  style="background-color:rgba(0,0,0,.3)" class="form-control border border-dark" placeholder="Address" runat="server" ForeColor="#F8F8F8"></asp:TextBox>
                                </div>
                                <asp:Button ID="btnRegister" class="btn btn-info btn-lg" runat="server" Text="Sign up" OnClick="btnRegister_Click" />
                            &nbsp;
                                <asp:Label ID="lblMessage" runat="server" Font-Size="Large" ForeColor="Red" style="background-color: #D9ECFF !important"></asp:Label>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
