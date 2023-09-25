<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="subjectReport.aspx.cs" Inherits="OpenMind.subjectReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="row">
             <div class="col-md-6 mx-auto">
                 <div class="card">
                     <div class="card-body">

                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150" height="150" src="imgs/teacher.jpg" />
                                 </center>
                             </div>
                        </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Select Subject</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <hr/>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="EngBtn" runat="server" Text="English Report" OnClick="EngBtn_Click"/>
                                 </div>
                                 <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="MathsBtn" runat="server" Text="Maths Report" OnClick="MathsBtn_Click"/>
                                 </div>
                                 <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="PhysicsBtn" runat="server" Text="Physics Report" OnClick="PhysicsBtn_Click"/>
                                 </div>
                                 
                             </div>
                         </div>
                         <hr />
                       </div>
                     </div>
                 <br />
                 <br />
                    <a href="teacherPage.aspx">Back to teacher page </a><br /><br />
                </div>
            </div>
        </div>
</asp:Content>
