<%@ Page Language="C#" MasterPageFile="~/Members/MembersMasterPage.master" AutoEventWireup="true" CodeFile="frmMemberExperienceMaster.aspx.cs" Inherits="Members_frmMemberExperienceMaster" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .tableData
        {
            text-align: left;
            font-weight: bold;
            font-size: x-large;
        }
        .style5
        {
            text-align: left;
            font-weight: bold;
            font-size: smaller;
            width: 132px;
            height: 20px;
            color: White;
            background-color: #089663;
        }
        .style6
        {
            width: 132px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
            <asp:AsyncPostBackTrigger ControlID="btnClear" EventName="Click" />
        </Triggers>
        <ContentTemplate>
            <center style="height: auto">
            <asp:Panel ID="mainPanel" runat="server">
                <br />
                <br />
                <span class="style1">Give Your Experience Details For Activities<br />
                </span>
                <br />
                <table class="tableData" style="border: 2px solid #003000; width: 345px; height: 185px;"
                    cellpadding="1" cellspacing="1">
                    <tr>
                        <td class="style5" valign="top" >
                            Village Name</td>
                        <td class="tableData">
                            <asp:DropDownList ID="ddlVillagename" runat="server" Height="16px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ControlToValidate="ddlVillagename" 
                                InitialValue="--Select One--" ID="RequiredFieldValidator2" runat="server" 
                                ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="tableData">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            Activity Name</td>
                        <td class="tableData">
                            <asp:DropDownList ID="ddlActivityName" runat="server" Height="16px" Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td> <asp:RequiredFieldValidator ControlToValidate="ddlActivityName" 
                                InitialValue="--Select One--" ID="RequiredFieldValidator3" runat="server" 
                                ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                            </td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="tableData">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            Your Experience
                        </td>
                        <td class="tableData">
                            <asp:TextBox ID="txtDesc" runat="server" Height="79px" TextMode="MultiLine" 
                                Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtDesc" ErrorMessage="*" ForeColor="White"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            &nbsp;</td>
                        <td class="tableData">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style5" valign="top">
                            Give your Rating</td>
                        <td class="tableData">
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
                                RepeatDirection="Horizontal">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:CheckBoxList>
                        </td>
                        <td>
                            &nbsp;</td>
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
                        <td style="text-align: right" class="style6">
                            <asp:Button ID="btnSubmit" runat="server" Height="26px" 
                                OnClick="btnSubmit_Click" Text="Submit" Width="69px" />
                        </td>
                        <td style="text-align: right">
                            <asp:Button ID="btnClear" runat="server" CausesValidation="false" Height="25px" 
                                OnClick="btnClear_Click" Text="Clear" Width="70px" />
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
                        <div id="Progress" runat="server" style="background-color: Gray; font-weight: bold; font-family: Verdana; font-size: medium;width:300px;height:auto;vertical-align:middle">
                        <center>
                            Data Inserting..<img src="../Images/Process.gif" height="100px" width="100px" />
                        </center>
                        </div>
                        <cc1:AlwaysVisibleControlExtender TargetControlID="Progress"  HorizontalSide="Center" VerticalSide="Middle" ID="AlwaysVisibleControlExtender1" runat="server">
                        </cc1:AlwaysVisibleControlExtender>
                    </ProgressTemplate>
                </asp:UpdateProgress>
        </ContentTemplate>
 </asp:UpdatePanel>
</asp:Content>

