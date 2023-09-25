 <%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="updatePhysicsPage.aspx.cs" Inherits="OpenMind.PhysicsGbManagement" %>
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
                                    <h3>Update Physics Marks</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="col-md-6">
                               <label>Learner ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="learnerIdTxtBox" 
                                         runat="server" placeholder="Learner ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="L_IDrequired" runat="server" ErrorMessage="Please enter learner ID" ControlToValidate="learnerIdTxtBox" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Teacher ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="teacherIdTxtBox" 
                                         runat="server" placeholder="Teacher ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="t_IDrequired" runat="server" ControlToValidate="teacherIdTxtBox" ErrorMessage="Please enter teacher ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Test No.</label>
                                 <div class="form-group">
                                     <asp:RadioButton ID="Test1" runat="server" GroupName="testNum_rdBtns" OnCheckedChanged="Test1_CheckedChanged1" Text="  1  " />
                                     <br />
                                     <asp:RadioButton ID="Test2" runat="server" GroupName="testNum_rdBtns" OnCheckedChanged="Test1_CheckedChanged1" Text="  2  " />
                                     <br />
                                     <asp:RadioButton ID="Test3" runat="server" GroupName="testNum_rdBtns" OnCheckedChanged="Test1_CheckedChanged1" Text="  3  " />
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Test Mark</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="testMarkTextBox" 
                                         runat="server" placeholder="Test Mark"></asp:TextBox>
                                 </div>
                             </div>

                     
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Assignment No.</label>
                                 <div class="form-group">
                                     <asp:RadioButton ID="Assign1" runat="server" GroupName="assignNum_rdBtns" OnCheckedChanged="Assign1_CheckedChanged1" Text="  1  " />
                                     <br />
                                     <asp:RadioButton ID="Assign2" runat="server" GroupName="assignNum_rdBtns" OnCheckedChanged="Assign1_CheckedChanged1" Text="  2  " />
                                     <br />
                                     <asp:RadioButton ID="Assign3" runat="server" GroupName="assignNum_rdBtns" OnCheckedChanged="Assign1_CheckedChanged1" Text="  3  " />
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Assignment Mark</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="assignMarkTxtBox" 
                                         runat="server" placeholder="Assignment Mark"></asp:TextBox>
                                 </div>
                             </div>

                     
                         </div>
                         <br />
                         <div class="row">
                             

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdMarkBtn" runat="server" Text="Update" OnClick="UpdMarkBtn_Click" />
                                 </div>
                             </div>

                           
                         </div>
                     <div />

                     </div> 
                 </div>
             </div>
            <a href="PhysicsMarksManagement.aspx">Back to manage page </a><br /><br />
            
        </div>
        
     </div>
</asp:Content>
