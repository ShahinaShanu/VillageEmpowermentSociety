<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true"
    CodeFile="frmMemberRegistration.aspx.cs" Inherits="frmMemberRegistration" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="~/UserControls/BrowseImage.ascx" TagName="BrowseImage" TagPrefix="Uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .tableData
        {
            text-align: left;
            font-weight: bold;
            font-size: small;
        }
        .style5
        {
            text-align: left;
            font-weight: bold;
            font-size: small;
            width: 90px;
            height: 101px;
            color: White;
            background-color: #089663;
        }
        .style6
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:PostBackTrigger ControlID="Browseimg" />
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="btnClear" EventName="Click" />
        </Triggers>
        <ContentTemplate>
            <center style="height: auto">
                <asp:Panel ID="mainPanel" runat="server">
                    <br />
                    <br />
                    <span class="style1">Donor&nbsp; Registration
                        <br />
                    </span>
                    <br />
                    <table class="tableData" style="border: 2px solid #003000; width: 345px; height: 185px;"
                        cellpadding="1" cellspacing="1">
                        <tr>
                            <td class="tableData">
                                <span class="style6">First Name </span>
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtFirstName" ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="tableData">
                                <span class="style6">Middle Name</span> 
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtMName" ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="tableData">
                                <span class="style6">Last Name</span> 
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtLName" ID="RequiredFieldValidator3"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="tableData">
                               <span class="style6"> MailId</span> 
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtMailId" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtMailId" ID="RequiredFieldValidator4"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtMailId" ErrorMessage="Invalid MailId" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    ForeColor="White"></asp:RegularExpressionValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="tableData">
                            </td>
                            <td colspan="2" align="left">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="tableData">
                               <span class="style6"> Contact No</span> 
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtContactNo" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtContactNo" ID="RequiredFieldValidator5"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="tableData">
                                <span class="style6">Address</span> 
                            </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtAddress" ID="RequiredFieldValidator6"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td class="style5" colspan="3">
                                <Uc1:BrowseImage ID="Browseimg" runat="server" DefaultImageUrl="~/UserControls/images/NoImage.jpg" />
                            </td>
                        </tr>
                         <tr>
                            <td class="tableData">
                               <span class="style6"> User Name</span>  </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtUserName" ID="RequiredFieldValidator7"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                         <tr>
                            <td class="tableData">
                               <span class="style6"> Password</span>  </td>
                            <td class="tableData">
                                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" 
                                    ></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator8"
                                    runat="server" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3">
                                &nbsp;&nbsp;&nbsp; * are mandatory
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right">
                                <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="26px" OnClick="btnSubmit_Click"
                                    Width="69px" />
                            </td>
                            <td style="text-align: right">
                                <asp:Button ID="btnClear" runat="server" Text="Clear" Height="25px" OnClick="btnClear_Click"
                                    Width="70px" CausesValidation="false" />
                            </td>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <br />
                    <br />
                    <asp:Label ID="lblMsg" runat="server" ForeColor="#FF3000"></asp:Label>
                </asp:Panel>
            </center>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div id="Progress" runat="server" style="background-color: White; font-weight: bold;
                        font-family: Verdana; font-size: medium; width: 200px; height: auto">
                        <center>
                            Data Inserting..<img src="Images/1asp017.gif" height="100px" width="100px" />
                        </center>
                    </div>
                    <cc1:AlwaysVisibleControlExtender TargetControlID="Progress" ID="AlwaysVisibleControlExtender1"
                        runat="server" HorizontalSide="Center" VerticalSide="Middle">
                    </cc1:AlwaysVisibleControlExtender>
                </ProgressTemplate>
            </asp:UpdateProgress>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
