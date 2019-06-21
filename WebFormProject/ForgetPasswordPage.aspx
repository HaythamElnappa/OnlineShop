<%@ Page Title="" Language="C#" MasterPageFile="~/Login MasterPage.Master" AutoEventWireup="true" CodeBehind="ForgetPasswordPage.aspx.cs" Inherits="WebFormProject.ForgetPasswordPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form runat="server" id="f1">
   <table>
       <tr>
           <td>
               <asp:Label ID="lblMail" runat="server" Text="Enter your email"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
           <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="*" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" ValidationGroup="g1"></asp:RequiredFieldValidator>    
               <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Error email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True" ForeColor="Blue" ValidationGroup="g1"></asp:RegularExpressionValidator>      
           </td>
       </tr>
       <tr>
           <td colspan ="2">
               <asp:Button ID="btnEmail" runat="server" Text="Enter" OnClick="btnEmail_Click" ValidationGroup="g1" />
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="lblConfirm" runat="server" Text="Enter the code that is send in your email" Visible ="false"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtConfirm" runat="server" Visible ="false" ></asp:TextBox>
           </td>
           <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtConfirm" Font-Bold="True" Font-Size="Larger" ForeColor="Blue" ValidationGroup="g2"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr>
           <td colspan ="2">
               <asp:Button ID="btnConfirm" runat="server" Text="Enter" Visible="False" OnClick="btnConfirm_Click" ValidationGroup="g2" />
           </td>
       </tr>
       <tr>
           <td colspan ="2">
               <asp:Label ID="lblError" runat="server" Visible="False"></asp:Label>

           </td>
       </tr>
   </table>

    </form>
</asp:Content>
