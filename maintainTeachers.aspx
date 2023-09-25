<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="maintainTeachers.aspx.cs" Inherits="OpenMind.maintainTeachers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-md-12">
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
                                   <h3>Teachers Details</h3>
                               </center>
                          </div>
                    </div>

                    <div class="row">
                          <div class="col">
                             <hr/>
                          </div>
                    </div>

                    <div class="row">
                             <div class="col-2" align ="right">
                               <label>Teacher ID:</label>
                             </div>

                             <div class="col-2" align ="left">
                                 <asp:TextBox ID="teacherID" runat="server"></asp:TextBox>
                             </div>

                             
                             <div class="col-6">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary"  ID="searchBtn" runat="server" Text="Search Teacher" OnClick="searchBtn_Click"/>
                                 </div>
                             </div>
                         </div>

                    <div class="row">
                          <div class="col">
                               <asp:GridView class="table table-striped table-bordered" ID="TeachersDetails" runat="server"></asp:GridView>
                          </div>
                    </div>

                    <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="addTeacherBtn" runat="server" Text="Add" OnClick="addTeacherBtn_Click" />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdTeacherBtn" runat="server" Text="Update" OnClick="UpdTeacherBtn_Click" />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="DelTeacherBtn" runat="server" Text="Delete" OnClick="DelTeacherBtn_Click" />
                                 </div>
                             </div>

                            <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="displayBtn" runat="server" Text="Display All" OnClick="displayBtn_Click" />
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
