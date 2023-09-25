<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="updateTeachers.aspx.cs" Inherits="OpenMind.updateTeachers" %>
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
                                     <img width="150" height="150px" src="imgs/teacher.jpg" />
                                 </center>
        
                             </div>
                         </div>
                      <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Manage Teacher Details</h3>
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
                                     <asp:TextBox CssClass="form-control" ID="teacherFirstNameTxtBox" 
                                         runat="server" placeholder="First Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="FnameRequired" runat="server" ControlToValidate="teacherFirstNameTxtBox" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teacherLastNameTxtBox" 
                                         runat="server" placeholder="Last Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="teacherLastNameTxtBox" ErrorMessage="Please enter surname" ForeColor="Red"></asp:RequiredFieldValidator>
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
                               <label>Teacher ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teacherIdTxtBox" 
                                         runat="server" placeholder="Teacherr ID" TextMode="SingleLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredLearnerID" runat="server" ControlToValidate="teacherIdTxtBox" ErrorMessage="Please enter teacher's id" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                    <asp:Button class="btn btn-primary btn-block"  ID="UpdTeacherBtn" runat="server" Text="Update" OnClick="UpdTeacherBtn_Click"/>
                               </div>
                         </div>

                     </div>
                 </div>
                <a href="maintainTeachers.aspx">Back to manage page </a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
