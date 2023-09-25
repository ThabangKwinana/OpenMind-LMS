<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="registerLearner.aspx.cs" Inherits="OpenMind.registerLearner" %>
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
                                     <img width="150" height="150px" src="imgs/learner.png" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Register Learner</h3>
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
                                     <asp:TextBox CssClass="form-control" ID="learnerFirstNameTxtBox" 
                                         runat="server" placeholder="First Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="firstName" runat="server" ControlToValidate="learnerFirstNameTxtBox" ErrorMessage="Please enter name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Last Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerLastNameTxtBox" 
                                         runat="server" placeholder="Last Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="lastName" runat="server" ControlToValidate="learnerLastNameTxtBox" ErrorMessage="Please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>ID Number</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnIdNumTextBx" 
                                         runat="server" placeholder="ID Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="idNum" runat="server" ControlToValidate="learnIdNumTextBx" ErrorMessage="Please enter ID number" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Email Address</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnEmailTxtBox" 
                                         runat="server" placeholder="Email Address"></asp:TextBox>
                                     <asp:RegularExpressionValidator ID="emailAddress" runat="server" ControlToValidate="learnEmailTxtBox" ErrorMessage="email not valid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Class Teacher(ID)</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="classTeacherTxtBox" 
                                         runat="server" placeholder="Teacher ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="teachID" runat="server" ControlToValidate="classTeacherTxtBox" ErrorMessage="Enter teacher ID" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                     <asp:RequiredFieldValidator ID="passwordCreate" runat="server" ControlToValidate="passwordTxtBox" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Confirm Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="confirmPassTxtBox" 
                                         runat="server" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                     <asp:CompareValidator ID="passwordConfirm" runat="server" ControlToCompare="passwordTxtBox" ControlToValidate="confirmPassTxtBox" ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="regLearnerBtn" runat="server" Text="Register Learner" OnClick="regLearnerBtn_Click" />
                                 </div>

                             </div>
        
                         </div>

                     </div> 
                 </div>

                 <a href="maintainLearners.aspx">Back to manage page</a><br /><br />
             </div>
        </div>
    </div>


</asp:Content>
