<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmVillageMaster.aspx.cs" Inherits="Admin_frmVillageMaster" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<br />
Manage Villages
<br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AutoGenerateColumns="False" DataKeyNames="VillageId" 
        DataSourceID="ObjectDataSource1" EmptyDataText="No Data Items">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="VillageId" Visible="false" HeaderText="VillageId" 
                InsertVisible="False" ReadOnly="True" SortExpression="VillageId" />
            <asp:BoundField DataField="VillageName" HeaderText="Name" 
                SortExpression="VillageName" />
            <asp:BoundField DataField="VillageAbbr" HeaderText="Abbreviation" 
                SortExpression="VillageAbbr" />
            <asp:BoundField DataField="VillageArea" HeaderText="Area" 
                SortExpression="VillageArea" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        DeleteMethod="Delete" InsertMethod="Insert" 
        OldValuesParameterFormatString="original_{0}" 
        SelectMethod="GetVillageMasterData" 
        TypeName="DataSet1TableAdapters.tbl_VillageMasterTableAdapter" 
        UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_VillageId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="VillageName" Type="String" />
            <asp:Parameter Name="VillageAbbr" Type="String" />
            <asp:Parameter Name="VillageArea" Type="String" />
            <asp:Parameter Name="Original_VillageId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="VillageName" Type="String" />
            <asp:Parameter Name="VillageAbbr" Type="String" />
            <asp:Parameter Name="VillageArea" Type="String" />
        </InsertParameters>
    </asp:ObjectDataSource>
    <br />
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" 
        AutoGenerateRows="False" DataKeyNames="VillageId" 
        DataSourceID="ObjectDataSource1" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="VillageId" HeaderText="VillageId" 
                InsertVisible="False" ReadOnly="True" SortExpression="VillageId" />
                
            <asp:BoundField DataField="VillageName" HeaderText="VillageName" 
                SortExpression="VillageName" />
                 <asp:BoundField DataField="VillageAbbr" HeaderText="VillageAbbr" 
                SortExpression="VillageAbbr" />
            <asp:BoundField DataField="VillageArea" HeaderText="VillageArea" 
                SortExpression="VillageArea" />
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <br />
</asp:Content>

