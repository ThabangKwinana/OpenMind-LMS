<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="deleteAdmin.aspx.cs" Inherits="OpenMind.deleteAdmin" %>
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
                                     <img width="150" height="150px"  src="imgs/admin.png" />
                                 </center>
                                     
                             </div>
                                </div>
                        
                          <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h3>Delete Admin's Details</h3>
                                 </center>
                                    
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                              <div class="col-md-5">
                               <label>Admin ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="adminIDTxtBox" 
                                         runat="server" placeholder="Admin ID" TextMode="SingleLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="adminIDValidator" runat="server" ControlToValidate="adminIDTxtBox" ErrorMessage="Please Enter The Admin ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>
                         <br />
                           <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="dltAdmnBtn" runat="server" Text="Delete" OnClick="dltAdmnBtn_Click"/>
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
                 <a href="maintainAdmin.aspx">Back to manage page </a><br /><br />
            </div>
        </div>
    </div>
</asp:Content>
