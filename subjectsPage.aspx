<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="subjectsPage.aspx.cs" Inherits="OpenMind.subjectsPage" %>
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

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Subjects</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <hr/>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="EngGbBtn" runat="server" Text="English Gradebook" OnClick="EngGbBtn_Click" />
                                 </div>
                                 <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="MathGbBtn" runat="server" Text="Maths Gradebook" OnClick="MathGbBtn_Click" />
                                 </div>
                                 <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col">

                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="PhyGbBtn" runat="server" Text="Physics Gradebook" OnClick="PhyGbBtn_Click" />
                                 </div>
                                 
                             </div>
                         </div>
                         <hr />
                       </div>
                     </div>
                 <br />
                 <br />
                    <a href="learnerPage.aspx">Back to learner page </a><br /><br />
                </div>
            </div>
        </div>
</asp:Content>
