﻿<%@ Page Title="Management – Insert and Update Reviews" Language="vb" AutoEventWireup="false" MasterPageFile="~/Master Page/Management.Master" CodeBehind="AddEditReview.aspx.vb" Inherits="Site.AddEditReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />

            <asp:TemplateField HeaderText="Title" SortExpression="Title">

                <EditItemTemplate>

                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </EditItemTemplate>

                <InsertItemTemplate>

                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Title") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Summary" SortExpression="Summary">

                <EditItemTemplate>

                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>

                </EditItemTemplate>

                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Summary") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>
                </InsertItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Summary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Body" SortExpression="Body">
                <EditItemTemplate>

                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>

                </EditItemTemplate>

                <InsertItemTemplate>

                    <asp:TextBox ID="TextBox3" TextMode="MultiLine" Width="500" Height="100" runat="server" Text='<%# Bind("Body") %>'></asp:TextBox>

                </InsertItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Body") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Genreld" SortExpression="Genreld">

                <EditItemTemplate>

                     <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("Genreld") %>'></asp:DropDownList>

                </EditItemTemplate>

                <InsertItemTemplate>

                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="GenresDataSource" DataTextField="Name" DataValueField="Id" 
                        SelectedValue='<%# Bind("Genreld") %>'></asp:DropDownList>

                </InsertItemTemplate>

                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Genreld") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:CheckBoxField DataField="Authorized" HeaderText="Authorized" SortExpression="Authorized" />
            <asp:BoundField DataField="UpdateDateTime" HeaderText="UpdateDateTime" SortExpression="UpdateDateTime" Visible="False" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ngoviethai_WebGameConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Id], [Title], [Summary], [Body], [Genreld], [Authorized], [UpdateDateTime]) VALUES (@Id, @Title, @Summary, @Body, @Genreld, @Authorized, @UpdateDateTime)" SelectCommand="SELECT [Id], [Title], [Summary], [Body], [Genreld], [Authorized], [UpdateDateTime] FROM [Review] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Summary] = @Summary, [Body] = @Body, [Genreld] = @Genreld, [Authorized] = @Authorized, [UpdateDateTime] = @UpdateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Id" Type="Int32" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Genreld" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Summary" Type="String" />
            <asp:Parameter Name="Body" Type="String" />
            <asp:Parameter Name="Genreld" Type="Int32" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="UpdateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="GenresDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ngoviethai_WebGameConnectionString1 %>" SelectCommand="SELECT [Id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
</asp:Content>
