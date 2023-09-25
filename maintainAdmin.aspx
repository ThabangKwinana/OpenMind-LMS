<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="maintainAdmin.aspx.cs" Inherits="OpenMind.maintainAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
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
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="AdminGridView" runat="server"></asp:GridView>
                             </div>
                         </div>

                         <br />
                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="addBtn" runat="server" Text="Add" OnClick="addBtn_Click"  />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdBtn" runat="server" Text="Update" OnClick="UpdBtn_Click" />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="DelBtn" runat="server" Text="Delete" OnClick="DelBtn_Click"  />
                                 </div>
                             </div>
                         </div>

                         </div>
                     </div>
                </div>
             <div class="row">
                     <a href="AdminPage.aspx">Back to admin page </a><br /><br />
                 <div class="col-12" align ="right">
                    <a href="homepage.aspx">Logout </a><br /><br />
                 </div>
              </div>
            </div>
        </div>
</asp:Content>
