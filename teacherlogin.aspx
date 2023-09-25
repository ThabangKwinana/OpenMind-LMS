<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="teacherlogin.aspx.cs" Inherits="OpenMind.teacherlogin" %>
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
                                    <h3>Teacher Login</h3>
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
                                 <label>Teacher ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teacherIdTxtBox" 
                                         runat="server" placeholder="Teacher ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="tID_required" runat="server" ControlToValidate="teacherIdTxtBox" ErrorMessage="Please enter teacher id" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>

                                  <label>Teacher Password</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teacherPasswordTxtBox" 
                                         runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="Password_required" runat="server" ControlToValidate="teacherPasswordTxtBox" ErrorMessage="Please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
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
