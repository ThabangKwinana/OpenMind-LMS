<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="MathsGbPage.aspx.cs" Inherits="OpenMind.mathsGbPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="col-md-auto">
                 <div class="card">
                     <div class="card-body">
                         
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150" height="150" src="imgs/GB.png" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Maths Gradebook</h3>
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
                                 <center>
                                     <asp:GridView ID="MathsGridView" runat="server"></asp:GridView>
                                 </center>
                                 
                             </div>
                         </div>
                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                         </div>

                         <div class="row">
                             <div class="col-md-4">
                               <label>Learner ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerIDTxtBox" 
                                         runat="server" placeholder="Learner ID" TextMode="SingleLine"></asp:TextBox>
                                 </div>
                             </div>
                               <div class="col-md-6">
                                 <asp:RadioButton ID="testRB" runat="server" Text="Tests" GroupName="rdBtnTandA" OnCheckedChanged="testRB_CheckedChanged"  />
                                   <br />
                                 <asp:RadioButton ID="assignRB" runat="server" Text="Assignments" GroupName="rdBtnTandA" OnCheckedChanged="testRB_CheckedChanged" />
                             </div>
                         </div>

                         <br />
                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="requestMarkBtn" runat="server" Text="Request" OnClick="requestMarkBtn_Click" />
                                 </div>
                             </div>
                         </div>
                     </div>
                 </div>
             </div>
        </div>
    <a href="subjectsPage.aspx">Back to subjects page </a><br /><br />
</asp:Content>
