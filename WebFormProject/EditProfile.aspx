<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebFormProject.EditProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <div class="container" style="margin-top: 60px; margin-bottom: 60px;">

            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label1" runat="server" Text="Enter your data" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </div>
            </div>


            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label2" runat="server" Text="New Quation" Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:TextBox ID="txtQuation" runat="server" class="form-control" placeholder="Enter New Quation"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label6" runat="server" Text="New Answer" Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:TextBox ID="txtAnswer" runat="server" class="form-control" placeholder="Enter New Answer"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label3" runat="server" Text="New User Name" Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:TextBox ID="txtUser" runat="server" class="form-control" placeholder="Enter New UserName"></asp:TextBox>
                </div>
            </div>

            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label7" runat="server" Text="Old password" Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter Old Pass"></asp:TextBox>
                </div>
            </div>
            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="Label4" runat="server" Text="New password" Font-Bold="True" Font-Size="Larger"></asp:Label>
                    <asp:TextBox ID="txtNewPass" runat="server" TextMode="Password" class="form-control" placeholder="Enter New Pass"></asp:TextBox>
                </div>
            </div>


            <asp:Button ID="Button1" runat="server" Text="Confirm" OnClick="Button1_Click" class="btn btn-primary" Font-Bold="True" Font-Size="Larger" />

            <div class="row">
                <div class="form-group col-md-6">
                    <asp:Label ID="lblError" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="Red"></asp:Label>
                </div>
            </div>

        </div>
    </form>
</asp:Content>


<%--<div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Product Name</label>
                                    <asp:TextBox ID="pname" class="form-control" placeholder="enter product name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputState">Category</label>

                                    <asp:DropDownList ID="listCategory" class="form-control" runat="server">

                                        <asp:ListItem Enabled="True" Selected="True">Choose...</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Product Discription</label>
                                <asp:TextBox ID="pdiscription" class="form-control" placeholder="discripe your product" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Choose Image</label>
                                <br />
                                <asp:FileUpload ID="upimg" runat="server" />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputCity">Price</label>
                                    <asp:TextBox ID="pprice" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Promosion</label>
                                    <asp:TextBox ID="ppromosion" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputZip">Quantity</label>
                                    <asp:TextBox ID="pquantity" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>--%>
