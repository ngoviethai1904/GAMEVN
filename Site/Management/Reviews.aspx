<%@ Page Title="Management Reviews" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Management.Master" CodeBehind="Reviews.aspx.vb" Inherits="Site.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="738px">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReview.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />

            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">

              

                <ItemTemplate>

                    <asp:Label ID="AuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized"))%>'/>

                </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <a href="AddEditReview.aspx">Insert new review</a><asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ngoviethai_WebGameConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Id], [Title], [CreateDateTime], [Authorized]) VALUES (@Id, @Title, @CreateDateTime, @Authorized)" SelectCommand="SELECT [Id], [Title], [CreateDateTime], [Authorized] FROM [Review] WHERE ([Genreld] = @Genreld)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [CreateDateTime] = @CreateDateTime, [Authorized] = @Authorized WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Genreld" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ngoviethai_WebGameConnectionString1 %>" SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>
