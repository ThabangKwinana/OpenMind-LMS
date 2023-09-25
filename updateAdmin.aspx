﻿<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="updateAdmin.aspx.cs" Inherits="OpenMind.updateAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150" height="150px" src="imgs/admin.png" />
                                 </center>
        
                             </div>
                         </div>

                         <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Manage Admin Details</h3>
                                 </center>
        
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>First Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="adminFirstNameTxtBox" 
                                         runat="server" placeholder="First Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="FnameRequired" runat="server" ControlToValidate="adminFirstNameTxtBox" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="adminLastNameTxtBox" 
                                         runat="server" placeholder="Last Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="adminLastNameTxtBox" ErrorMessage="Please enter surname" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                 <span class="badge badge-pill badge-info">Update Password</span>
                                  </center>
                             </div>
                         </div>

                         <br/>
                         <div class="row">
                             <div class="col-md-6">
                               <label>Admin ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="adminIdTxtBox" 
                                         runat="server" placeholder="Admin ID" TextMode="SingleLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredAdminID" runat="server" ControlToValidate="adminIdTxtBox" ErrorMessage="Please enter admin's id" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                             
                              <div class="col-md-6">
                               <label>New Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="newPassTxtBox" 
                                         runat="server" placeholder="New Password" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="newPassRequired" runat="server" ControlToValidate="newPassTxtBox" ErrorMessage="Please create new password" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Confirm Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="conPassTxtBox" 
                                         runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                     <asp:CompareValidator ID="comparePasswords" runat="server" ControlToCompare="newPassTxtBox" ControlToValidate="conPassTxtBox" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdBtn" runat="server" Text="Update" OnClick="UpdBtn_Click"/>
                                 </div>
                         </div>

                     </div>
                 </div>
                <a href="maintainAdmin.aspx">Back to manage page </a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
