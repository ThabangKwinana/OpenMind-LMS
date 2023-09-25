<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="MathsMarksManagement.aspx.cs" Inherits="OpenMind.MathsMarksManagement" %>
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
                                     <img width="150" height="150" src="imgs/marks.jpg" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Learner Maths Marks</h3>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         

                          <div class="row">
                             <div class="col-1" align ="right">
                               <label>Learner ID:</label>
                             </div>

                             <div class="col-2" align ="left">
                                 <asp:TextBox ID="learnerID" runat="server"></asp:TextBox>
                             </div>

                             
                             <div class="col-6">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary"  ID="searchBtn" runat="server" Text="Seach Learner" OnClick="searchBtn_Click"/>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                 <asp:GridView class="table table-striped table-bordered" ID="mathsMarksGd" runat="server"></asp:GridView>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdMarkBtn" runat="server" Text="Update" OnClick="UpdMarkBtn_Click"  />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="DelMarkBtn" runat="server" Text="Delete" OnClick="DelMarkBtn_Click"  />
                                 </div>
                             </div>

                               <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="displayBtn" runat="server" Text="Display All" OnClick="displayBtn_Click"/>
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
              <div class="row">
                    <a href="teacherPage.aspx">Back to teacher page </a><br /><br />
                 <div class="col-12" align ="right">
                    <a href="homepage.aspx">Logout </a><br /><br />
                 </div>
              </div>
             </div>
     </div>
</asp:Content>
