<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityQuestionmaster.aspx.cs" Inherits="frmActivityQuestionmaster" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
            <center style="height: auto">
            <asp:Panel ID="mainPanel" runat="server">
                <br />
                <br />
                <span class="style1">Raise Your Question On Activities here..
                <br />
                </span>
                <br />
                <table class="tableData" style="border: 2px solid #003000; width: 345px; height: 185px;"
                    cellpadding="1" cellspacing="1">
                   
                    
                    <tr>
                        <td class="style5" valign="top">
                            Activity Name</td>
                        <td class="tableData">
                            <asp:DropDownList ID="ddlActivityName" runat="server" Height="16px" 
                                Width="200px">
                            </asp:DropDownList>
                        </td>
                        <td> <asp:RequiredFieldValidator ControlToValidate="ddlActivityName" InitialValue="--Select One--" ID="RequiredFieldValidator3" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
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
                            Question Description</td>
                        <td class="tableData" valign="top" >
                            <asp:TextBox ID="txtDesc" runat="server" Height="130px" TextMode="MultiLine" 
                                Width="200px"></asp:TextBox>
                        </td>
                        <td valign="top">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtDesc" runat="server" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td colspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Label ID="LblText" runat="server" Text="* are mandatory" ForeColor="Red"></asp:Label>
                            </td>
                    </tr>
                    <tr>
                        <td class="style6" style="text-align: right">
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
                            Data Inserting..<br />
                            <img src="../Images/Process.gif" height="100px" width="100px" />
                        </center>
                        </div>
                        <cc1:AlwaysVisibleControlExtender TargetControlID="Progress"  HorizontalSide="Center" VerticalSide="Middle" ID="AlwaysVisibleControlExtender1" runat="server">
                        </cc1:AlwaysVisibleControlExtender>
                    </ProgressTemplate>
                </asp:UpdateProgress>
        
            </ContentTemplate>
        </asp:UpdatePanel>
    </center>
</asp:Content>

