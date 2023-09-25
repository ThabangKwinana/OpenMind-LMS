<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="learnerlogin.aspx.cs" Inherits="OpenMind.learnerlogin" %>
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
                                     <img width="150" height="150" src="imgs/learner.png" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />
                         
            

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Learner Login</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <label>Learner ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerIdTxtBox" 
                                         runat="server" placeholder="Learner ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredL_ID" runat="server" ControlToValidate="learnerIdTxtBox" ErrorMessage="Please enter learner id" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>

                                  <label>Learner Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerPasswordTxtBox" 
                                         runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="requiredPassWord" runat="server" ControlToValidate="learnerPasswordTxtBox" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="loginBtn" runat="server" Text="Login" OnClick="loginBtn_Click" />
                                 </div>

                             </div>
        
                         </div>

                     </div> 
                 </div>

                 <a href="homepage.aspx">Back to home </a><br /><br />
             </div>
        </div>
    </div>
</asp:Content>
