<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="PhysicsReportPage.aspx.cs" Inherits="OpenMind.PhysicsReportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                                    <h3>Physics Term 1(17-Jan to 25-March) Report Criteria</h3>
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
                               <label>Term:</label>
                                 <br />
                                 <asp:RadioButton ID="rbTerm" runat="server" Text=" 1" OnCheckedChanged="rbTerm_CheckedChanged" />
                             </div>

                              <div class="col-md-6">
                               <label>Report Type</label>
                                 <div class="form-group">
                                      <asp:RadioButton ID="rbTest" runat="server" GroupName="rbType" OnCheckedChanged="rbTest_CheckedChanged" Text=" Test" />
                                      <br />
                                      <asp:RadioButton ID="rbAssignment" runat="server" GroupName="rbType" OnCheckedChanged="rbTest_CheckedChanged" Text=" Assignment" />
                                 </div>
                             </div>
                         </div>

                         
                         <div class="row">
                             <div class="col-md-6">
                               <label>Filter by:</label>
                                 <div class="form-group">
                                     <asp:DropDownList Width="130" Height="30" ID="filterType" runat="server" OnSelectedIndexChanged="filterType_SelectedIndexChanged">
                                         <asp:ListItem>Select here...</asp:ListItem>
                                         <asp:ListItem>Highest to Lowest</asp:ListItem>
                                         <asp:ListItem Value="Average"></asp:ListItem>
                                     </asp:DropDownList>
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Test/Assignment Number:</label>
                                 <div class="form-group">
                                     <br />
                                     <asp:RadioButton ID="rb1" runat="server" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" Text="  1" />
                                     <br />
                                     <asp:RadioButton ID="rb2" runat="server" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" Text="  2" />
                                     <br />
                                     <asp:RadioButton ID="rb3" runat="server" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" Text="  3" />
                                 </div>
                             </div>
                         </div>

                         <br />
                         <div class="row">
                              <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="reportOnscreen" runat="server" Text="Display On Screen" OnClick="reportOnscreen_Click" />
                                 </div>
                             </div>

                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="generateReport" runat="server" Text="Generate Report" OnClick="generateReport_Click" />
                                 </div>
                             </div>

                         </div>
                     <div/>
                     </div> 
                 </div>
            </div>
            <a href="subjectReport.aspx">Back to subject report page </a><br /><br />
        </div>
        <div class="col-md-7">
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
                                    <h3>Learner Physics Marks</h3>
                                 </center>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                             <div class="auto-style2">
                                 <center>
                                     <asp:GridView class="table table-striped table-bordered" ID="reportGridView" runat="server"></asp:GridView>
                                         
                                     
                                 </center>
                                 
                             </div>
                         </div>

                     </div> 
                 </div>
             </div>
    </div>
</asp:Content>
