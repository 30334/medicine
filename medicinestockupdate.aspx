﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="medicinestockupdate.aspx.cs" Inherits="medicinestockupdate" Title="Untitled Page" %>

<%@ Register src="NavigateLinks.ascx" tagname="NavigateLinks" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100%;
        }
        .style7
        {
            width: 137px;
            height: 46px;
        }
        .style8
        {
            height: 46px;
        }
        .style9
        {
            width: 70px;
            height: 46px;
        }
        .style11
        {
            width: 57px;
            height: 46px;
        }
        .style12
        {
            width: 55px;
            height: 46px;
        }
        .style13
        {
            width: 47px;
            height: 46px;
        }
        .style14
        {
            width: 69px;
        }
        .style15
        {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="height: 337px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table class="style4">
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td colspan="6" style="text-align: right">
            <uc1:NavigateLinks ID="NavigateLinks1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                &nbsp;</td>
            <td colspan="6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:GridView ID="GridView1" runat="server" style="margin-left: 161px" 
                    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
                    AutoGenerateColumns="False" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" 
                    onrowdeleting="GridView1_RowDeleting">
                <Columns>
                <asp:TemplateField HeaderText="Medicine" >
                <EditItemTemplate>
                <asp:TextBox ID="txt1" runat="server" Text='<%#Bind("MedicineName") %>'>
                </asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                <asp:Label ID="lbl1" runat="server" Text='<%#Eval("MedicineName") %>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                
                <asp:TemplateField HeaderText="Dosage">
                <EditItemTemplate>
                <asp:TextBox ID="txt2" runat="server" Text='<%#Bind("Dosage") %>'>
                </asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                <asp:Label ID="lbl2" runat="server" Text='<%#Eval("Dosage") %>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                <asp:TemplateField HeaderText="Stock">
                <EditItemTemplate>
                <asp:TextBox ID="txt3" runat="server" Text='<%#Bind("Stock") %>'>
                </asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                <asp:Label ID="lbl3" runat="server" Text='<%#Eval("Stock") %>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
                
                
                <asp:TemplateField HeaderText="ID" Visible="false">
                
                <ItemTemplate>
                <asp:Label ID="lbl4" runat="server" Text='<%#Eval("Sno") %>'>
                </asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                
               
                
                
                </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td rowspan="3" class="style14">
                &nbsp;</td>
            <td colspan="6" class="style15">
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style9">
                Medicine&nbsp;
            </td>
            <td align="center" class="style7">
                <asp:TextBox ID="TextBox2" runat="server" Width="121px"></asp:TextBox>
            </td>
            <td class="style11">
                Dosage</td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style13">
                Stock</td>
            <td class="style8">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button1" runat="server" Text="Add New Medicine" Width="117px" 
                    onclick="Button1_Click" />
                </td>
        </tr>
    </table>
</asp:Content>

