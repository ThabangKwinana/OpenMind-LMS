<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="registerTeacher.aspx.cs" Inherits="OpenMind.registerTeacher" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
             <div class="col-md-8 mx-auto">
                 
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
                                    <h3>Register Teacher</h3>
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
                                     <asp:TextBox CssClass="form-control" ID="teachFirstNameTxtBox" 
                                         runat="server" placeholder="First Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredFname" runat="server" ControlToValidate="teachFirstNameTxtBox" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teachLastNameTxtBox" 
                                         runat="server" placeholder="Last Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredLname" runat="server" ControlToValidate="teachLastNameTxtBox" ErrorMessage="Please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>ID Number</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teachIdTextBx" 
                                         runat="server" placeholder="ID Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredIDnum" runat="server" ControlToValidate="teachIdTextBx" ErrorMessage="Please enter ID number" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Email Address</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teachEmailTxtBox" 
                                         runat="server" placeholder="Email Address"></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="validateEmail" runat="server" ControlToValidate="teachEmailTxtBox" ErrorMessage="email invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Subject Teaching</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="subjectTeachTxtBox" 
                                         runat="server" placeholder="Subject"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="subjectRequired" runat="server" ControlToValidate="subjectTeachTxtBox" ErrorMessage="Please enter the subject teaching" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         
                         <div class="row">
                             
                             <div class="col">
                                 <center>
                                 <span class="badge badge-pill badge-info">Create Username & Password</span>
                                  </center>
                             </div>
                            
                         </div>

                         <div class="row">

                             <div class="col-md-6">
                               <label>Create Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="passwordTxtBox" 
                                         runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="passwordRequired" runat="server" ControlToValidate="passwordTxtBox" ErrorMessage="Please create password" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Confirm Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="confirmPassTxtBox" 
                                         runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                     <asp:CompareValidator ID="comparePasswords" runat="server" ControlToCompare="passwordTxtBox" ControlToValidate="confirmPassTxtBox" ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="regTeachBtn" runat="server" Text="Register Teacher" OnClick="regTeachBtn_Click" />
                                 </div>

                             </div>
        
                         </div>

                     </div> 
                 </div>

                 <a href="maintainTeachers.aspx">Back to manage page </a><br /><br />
             </div>
        </div>
    </div>

</asp:Content>
