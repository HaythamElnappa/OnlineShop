<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="ProductView.aspx.cs" Inherits="WebFormProject.ProductView" %>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <form id="form1" runat="server">
        <div style="margin-top: 60px; margin-bottom: 60px;">
            <div class="row">
                <div class="col-3 egg1" style="left: 16px; top: 1px">
                    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                        <a class="nav-link active" id="v-pills-products-tab" data-toggle="pill" href="#v-pills-products" role="tab" aria-controls="v-pills-products" aria-selected="true">Products
                        </a>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        &nbsp;<a class="nav-link " id="v-pills-AddProduct-tab" data-toggle="pill" href="#v-pills-AddProduct" role="tab" aria-controls="v-pills-AddProduct" aria-selected="false">Add Product</a>
                        <a class="nav-link " id="v-pills-EditProduct-tab" data-toggle="pill" href="#v-pills-EditProduct" role="tab" aria-controls="v-pills-EditProduct" aria-selected="false">Edit Product</a>
                        <a class="nav-link " id="v-pills-RemoveProduct-tab" data-toggle="pill" href="#v-pills-RemoveProduct" role="tab" aria-controls="v-pills-RemoveProduct" aria-selected="false">Remove Product</a>
                        <a class="nav-link " id="v-pills-Search-tab" data-toggle="pill" href="#v-pills-Search" role="tab" aria-controls="v-pills-Search" aria-selected="false">Search</a>

                    </div>
                </div>
                <div class="col-9">
                    <div class="tab-content" id="v-pills-tabContent">

                        <%--___________________________________________________________________________________________________________________________--%>


                        <div class="tab-pane fade show active" id="v-pills-products" role="tabpanel" aria-labelledby="v-pills-products-tab" style="height:400px; overflow:scroll">

                            <asp:GridView class="table" ID="gridAllproduct" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </div>
                        
                        <%--_______________________________________________________________________________________________________________________--%>

                        <div class="tab-pane fade" id="v-pills-AddProduct" role="tabpanel" aria-labelledby="v-pills-AddProduct-tab">

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Product Name</label>
                                    <asp:TextBox ID="pname" class="form-control" placeholder="enter product name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">

                                    <label for="inputAddress">Choose Image</label>
                                    <br />
                                    <asp:FileUpload ID="upimg" runat="server" />

                                </div>
                                <%--____________________________--%>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Product Discription</label>
                                <asp:TextBox ID="pdiscription" class="form-control" placeholder="discripe your product" runat="server"></asp:TextBox>
                            </div>

                            <asp:updatepanel runat="server">
                                <ContentTemplate>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputState">Category</label>

                                    <asp:DropDownList ID="listCategory" class="form-control" runat="server" OnSelectedIndexChanged="listCategory_SelectedIndexChanged" AutoPostBack="True">

                                        <asp:ListItem Enabled="false" Selected="True" Value="Choose..."> Choose...</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div id="divCategory" runat="server" class="form-group col-md-6" visible ="false">
                                    <label for="inputAddress">New Category</label>
                                    <asp:TextBox ID="txtNewCategory" class="form-control" placeholder="Enter New Category Name" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                                    </ContentTemplate>
                                </asp:updatepanel>
                            <%--__________________________________--%>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputCity">Price</label>
                                    <asp:TextBox type="number" ID="pprice" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Promosion</label>
                                    <asp:TextBox type="number" ID="ppromosion" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputZip">Quantity</label>
                                    <asp:TextBox type="number" ID="pquantity" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <asp:Button ID="btnAdd" runat="server" class="btn btn-primary" ValidationGroup="addProduct" Text="Add Product" OnClick="btnAdd_Click" />

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="pname" ErrorMessage="Product name is required" ForeColor="Red" ValidationGroup="addProduct">Product name is required</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="upimg" ErrorMessage="Img field is required" ForeColor="Red" ValidationGroup="addProduct">Img field is required </asp:RequiredFieldValidator>
                            <br />                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="pdiscription" ErrorMessage="Img field is required" ForeColor="Red" ValidationGroup="addProduct">discription Field is rquired </asp:RequiredFieldValidator>
                            <br />                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="pprice" ErrorMessage="Price is required" ForeColor="Red" ValidationGroup="addProduct">Price is required </asp:RequiredFieldValidator>
                            <br />                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ppromosion" ErrorMessage="Promission field is required" ForeColor="Red" ValidationGroup="addProduct">Promission field is required </asp:RequiredFieldValidator>
                            <br />                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="pquantity" ErrorMessage="Quantity is required" ForeColor="Red" ValidationGroup="addProduct">Quantity is required </asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="listCategory" ErrorMessage="Quantity is required" ForeColor="Red" InitialValue="Choose..." ValidationGroup="addProduct">category is required </asp:RequiredFieldValidator>
                            
                            
                        </div>
                        <%--_______________________________________________________________________________________________________________________--%>
                        <div class="tab-pane fade" id="v-pills-EditProduct" role="tabpanel" aria-labelledby="v-pills-EditProduct-tab">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Category</label>

                                            <asp:DropDownList ID="listCategoryedite" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="listCategoryedite_SelectedIndexChanged">

                                                <asp:ListItem Enabled="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>

                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Name</label>

                                            <asp:DropDownList ID="listProductedite" class="form-control" runat="server">

                                                <asp:ListItem Enabled="True" Selected="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                            <hr style="border-top: 3px double #ced4da;" />

                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Product Name</label>
                                    <asp:TextBox ID="txtpname" class="form-control" placeholder="enter product name" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputState">Category</label>

                                    <asp:DropDownList ID="listCategoryedite2" class="form-control" runat="server">

                                        <asp:ListItem Enabled="True" Selected="True">Choose...</asp:ListItem>
                                    </asp:DropDownList>

                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Product Discription</label>
                                <asp:TextBox ID="Txtpdisc" class="form-control" placeholder="discripe your product" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label for="inputAddress">Choose Image</label>
                                <br />
                                <asp:FileUpload ID="imgp" runat="server" />
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <label for="inputCity">Price</label>
                                    <asp:TextBox ID="Txtpprice" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputCity">Promosion</label>
                                    <asp:TextBox ID="txtppromosion" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group col-md-2">
                                    <label for="inputZip">Quantity</label>
                                    <asp:TextBox ID="txtpquantity" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <asp:Button ID="btnEditProduct" runat="server" class="btn btn-primary" Text="Edit Product" OnClick="btnEditProduct_Click" ValidationGroup="editeGroup" />
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" ControlToValidate="txtpname" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup">name required</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" ControlToValidate="Txtpdisc" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup"> disc is requried</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ForeColor="Red" ControlToValidate="imgp" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup">img is requred</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ForeColor="Red" ControlToValidate="Txtpprice" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup">price is requried</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ForeColor="Red" ControlToValidate="txtppromosion" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup">promossion is requred</asp:RequiredFieldValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ForeColor="Red" ControlToValidate="txtpquantity" ErrorMessage="RequiredFieldValidator" ValidationGroup="editeGroup"> quatntity is requred</asp:RequiredFieldValidator>

                        </div>

                        <%--_______________________________________________________________________________________________________________________--%>

                        <div class="tab-pane fade" id="v-pills-RemoveProduct" role="tabpanel" aria-labelledby="v-pills-RemoveProduct-tab">

                            <label for="inputState">Select The Product </label>
                            <hr style="border-top: 3px double #ced4da;" />

                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Category</label>

                                            <asp:DropDownList ID="listCategoryRemove" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="listCategoryRemove_SelectedIndexChanged">

                                                <asp:ListItem Enabled="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Name</label>

                                            <asp:DropDownList ID="listproductRemove" class="form-control" runat="server">

                                                <asp:ListItem Enabled="True" Selected="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>

                            <asp:Button ID="Button1" runat="server" class="btn btn-primary" Text="Remove Product" OnClick="btnRemoveProduct_Click" />


                        </div>
                        <%--_______________________________________________________________________________________________________________________--%>
                        <div class="tab-pane fade" id="v-pills-Search" role="tabpanel" aria-labelledby="v-pills-Search-tab">

                            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                <ContentTemplate>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Category</label>

                                            <asp:DropDownList ID="listCategorySearch" class="form-control" runat="server" AutoPostBack="True" OnSelectedIndexChanged="listCategorySearch_SelectedIndexChanged">

                                                <asp:ListItem Enabled="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <label for="inputState">Select Product Name</label>

                                            <asp:DropDownList ID="listProductSearch" class="form-control" runat="server">

                                                <asp:ListItem Enabled="True" Selected="True">Choose...</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>

                                    <asp:Button ID="Button2" runat="server" style="margin-bottom:20px" class="btn btn-primary" Text="search" OnClick="btnSearch_Click" />

                                    <asp:GridView class="table" runat="server" ID="gridsearch" CellPadding="4" ForeColor="#333333" GridLines="None">
                                        <AlternatingRowStyle BackColor="White" />
                                        <EditRowStyle BackColor="#2461BF" />
                                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                        <RowStyle BackColor="#EFF3FB" />
                                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                    </asp:GridView>

                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-8">
                                                <h1 id="des" runat="server" class="pt-3 display-4"></h1>
                                                <p id="pdes" runat="server" class="py-4"></p>
                                            </div>
                                            <div class="col-md-4">
                                                <asp:Image ID="imgproduct" runat="server" />
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>


                        </div>

                        <%--_______________________________________________________________________________________________________________________--%>
                    </div>
                </div>
            </div>

        </div>
    </form>

    

</asp:Content>

