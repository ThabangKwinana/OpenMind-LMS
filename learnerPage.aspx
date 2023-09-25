<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="learnerPage.aspx.cs" Inherits="OpenMind.learnerPage" %>
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
                                     <img width="150" height="150" src="imgs/learner.png" />
                                 </center>
                             </div>
                        </div>

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Learner</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <hr/>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="AnnouncementsBtn" runat="server" Text="View Announcements" OnClick="AnnouncementsBtn_Click" />
                                 </div>
                                 <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="GradeBookBtn" runat="server" Text="View Gradebook" OnClick="GradeBookBtn_Click" />
                                 </div>
                                 <hr/>
                             </div>
                         </div>
                       </div>
                     </div>
                 <br />
                 <br />
                 <div class="row">
                 <div class="col-12" align ="right">
                    <a href="homepage.aspx">Logout </a><br /><br />
                 </div>
              </div>
                </div>
            </div>
        </div>
</asp:Content>
