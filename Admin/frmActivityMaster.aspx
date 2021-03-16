<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmActivityMaster.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="ActivityId" 
        DataSourceID="ObjectDataSource1" EmptyDataText="No Data Found To Display">
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            <asp:BoundField DataField="ActivityId" Visible="false" HeaderText="ActivityId" 
                InsertVisible="False" ReadOnly="True" SortExpression="ActivityId" />
            <asp:BoundField DataField="ActivityName" HeaderText="Name" 
                SortExpression="ActivityName" />
            <asp:BoundField DataField="ActivityAbbr" HeaderText="Abbreviation" 
                SortExpression="ActivityAbbr" />
            <asp:BoundField DataField="ActivityDesc" HeaderText="Description" 
                SortExpression="ActivityDesc" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetActivityMasterData" 
        TypeName="DataSet1TableAdapters.tbl_ActivityMasterTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_ActivityId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="ActivityAbbr" Type="String" />
            <asp:Parameter Name="ActivityDesc" Type="String" />
            <asp:Parameter Name="Original_ActivityId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="ActivityName" Type="String" />
            <asp:Parameter Name="ActivityAbbr" Type="String" />
            <asp:Parameter Name="ActivityDesc" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        DataKeyNames="ActivityId" DataSourceID="ObjectDataSource1" DefaultMode="Insert" 
        Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="ActivityId" HeaderText="ActivityId" 
                InsertVisible="False" ReadOnly="True" SortExpression="ActivityId" />
            <asp:BoundField DataField="ActivityName" HeaderText="Name" 
                SortExpression="ActivityName" />
            <asp:BoundField DataField="ActivityAbbr" HeaderText="Abbreviation" 
                SortExpression="ActivityAbbr" />
            <asp:BoundField DataField="ActivityDesc" HeaderText="Description" 
                SortExpression="ActivityDesc" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    </center>
</asp:Content>

