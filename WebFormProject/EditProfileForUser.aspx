<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="EditProfileForUser.aspx.cs" Inherits="WebFormProject.EditProfileForUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form1" runat="server">
        
        <div class="container" style="margin-top: 60px; margin-bottom: 60px;">
                
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Name" runat="server" Text="Name" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Enter Your Name"></asp:TextBox>
                    </div>
                </div>
                    
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Email" runat="server" Text="Email" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Enter Your Email"></asp:TextBox>
                    </div>
                </div>
                
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Address" runat="server" Text="Address" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtAddress" runat="server" class="form-control" placeholder="Enter Your Address"></asp:TextBox>
                    </div>
                </div>
                    
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Password" runat="server" Text="Password" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtPass" runat="server" class="form-control" placeholder="Enter PassWord"></asp:TextBox>
                    </div>
                </div>
                    
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label ID="Label5" runat="server" Text="Confirm-Password" Font-Bold="True" Font-Size="Larger"></asp:Label>
                        <asp:TextBox ID="txtConPass" runat="server" class="form-control" placeholder="Enter PassWord again" ></asp:TextBox>
                    </div>
                </div>
                    
            
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Confirm" Font-Bold="True" Font-Size="Larger" OnClick="Button1_Click" />
                    
                
        </div>
            
    </form>
</asp:Content>
