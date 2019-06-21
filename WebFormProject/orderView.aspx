<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPage.Master" AutoEventWireup="true" CodeBehind="orderView.aspx.cs" Inherits="WebFormProject.orderView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="O_Id" DataSourceID="SqlDataSource1" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="O_Id" HeaderText="O_Id" InsertVisible="False" ReadOnly="True" SortExpression="O_Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="O_State" HeaderText="O_State" SortExpression="O_State" />

            </Columns>
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:Button Text="Confirm" ID="Block" runat="server" CommandName="Edit" />

                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AspProjectConnectionString %>" SelectCommand="select O_Id , Name , Orders.O_State
from Orders , Users
where Orders.User_Id = Users.User_Id"
            ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Orders] WHERE [O_Id] = @original_O_Id AND (([States] = @original_States) OR ([States] IS NULL AND @original_States IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Rate] = @original_Rate) OR ([Rate] IS NULL AND @original_Rate IS NULL)) AND (([Cart_Id] = @original_Cart_Id) OR ([Cart_Id] IS NULL AND @original_Cart_Id IS NULL)) AND (([User_Id] = @original_User_Id) OR ([User_Id] IS NULL AND @original_User_Id IS NULL)) AND (([Driv_Id] = @original_Driv_Id) OR ([Driv_Id] IS NULL AND @original_Driv_Id IS NULL))" InsertCommand="INSERT INTO [Orders] ([States], [Address], [Date], [Rate], [Cart_Id], [User_Id], [Driv_Id]) VALUES (@States, @Address, @Date, @Rate, @Cart_Id, @User_Id, @Driv_Id)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Orders] SET [States] = @States, [Address] = @Address, [Date] = @Date, [Rate] = @Rate, [Cart_Id] = @Cart_Id, [User_Id] = @User_Id, [Driv_Id] = @Driv_Id WHERE [O_Id] = @original_O_Id AND (([States] = @original_States) OR ([States] IS NULL AND @original_States IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Date] = @original_Date) OR ([Date] IS NULL AND @original_Date IS NULL)) AND (([Rate] = @original_Rate) OR ([Rate] IS NULL AND @original_Rate IS NULL)) AND (([Cart_Id] = @original_Cart_Id) OR ([Cart_Id] IS NULL AND @original_Cart_Id IS NULL)) AND (([User_Id] = @original_User_Id) OR ([User_Id] IS NULL AND @original_User_Id IS NULL)) AND (([Driv_Id] = @original_Driv_Id) OR ([Driv_Id] IS NULL AND @original_Driv_Id IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_O_Id" Type="Int32" />
                <asp:Parameter Name="original_States" Type="Int32" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date" />
                <asp:Parameter Name="original_Rate" Type="Int32" />
                <asp:Parameter Name="original_Cart_Id" Type="Int32" />
                <asp:Parameter Name="original_User_Id" Type="Int32" />
                <asp:Parameter Name="original_Driv_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="States" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Rate" Type="Int32" />
                <asp:Parameter Name="Cart_Id" Type="Int32" />
                <asp:Parameter Name="User_Id" Type="Int32" />
                <asp:Parameter Name="Driv_Id" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="States" Type="Int32" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter DbType="Date" Name="Date" />
                <asp:Parameter Name="Rate" Type="Int32" />
                <asp:Parameter Name="Cart_Id" Type="Int32" />
                <asp:Parameter Name="User_Id" Type="Int32" />
                <asp:Parameter Name="Driv_Id" Type="Int32" />
                <asp:Parameter Name="original_O_Id" Type="Int32" />
                <asp:Parameter Name="original_States" Type="Int32" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter DbType="Date" Name="original_Date" />
                <asp:Parameter Name="original_Rate" Type="Int32" />
                <asp:Parameter Name="original_Cart_Id" Type="Int32" />
                <asp:Parameter Name="original_User_Id" Type="Int32" />
                <asp:Parameter Name="original_Driv_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>









    </form>
</asp:Content>
