<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="deleteMathsPage.aspx.cs" Inherits="OpenMind.deleteMathsPage" %>
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
                                     <img width="150" height="150px" src="imgs/marks.jpg" />
                                 </center>
                                     
                             </div>
                                </div>
                        
                          <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <h3>Delete Maths Marks</h3>
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
                               <label>Learner ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerIDTxtBox" 
                                         runat="server" placeholder="Learner ID" TextMode="SingleLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="learnerIDValidator" runat="server" ControlToValidate="learnerIDTxtBox" ErrorMessage="Please Enter The Learner ID" Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>
                         <br />
                           <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="dltLearnBtn" runat="server" Text="Delete" OnClick="dltLearnBtn_Click" />
                                 </div>
                             </div>
                         </div>
                     </div>
                </div>
                 <a href="MathsMarksManagement.aspx">Back to subjects page </a><br /><br />
            </div>
        </div>
    </div>

</asp:Content>
