<%@ Page Title="" Language="C#" MasterPageFile="~/Login MasterPage.Master" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="WebFormProject.NewPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form runat ="server" id ="f2">
    <table>
       <tr>
           <td>
               <asp:Label ID="lblNewPassword" runat="server" Text="Enter new password"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtNewPassword" runat="server" TextMode ="Password"></asp:TextBox>
           </td>
           <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtNewPassword" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:RequiredFieldValidator>
           </td>
       </tr>
       <tr>
           <td>
               <asp:Label ID="lblConfirmNewPassword" runat="server" Text="Confirm new password"></asp:Label>
           </td>
           <td>
               <asp:TextBox ID="txtConfirmNewPassword" runat="server" TextMode ="Password"></asp:TextBox>
           </td>
           <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtConfirmNewPassword" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:RequiredFieldValidator>
               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="not match" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmNewPassword" Font-Bold="True" Font-Size="Larger" ForeColor="Blue"></asp:CompareValidator>
           </td>
       </tr>
       <tr>
           <td colspan ="2">
               <asp:Button ID="btnConfirm" runat="server" Text="Confirm" OnClick="btnConfirm_Click" />
           </td>
       </tr>
   </table>
       </form>
</asp:Content>
