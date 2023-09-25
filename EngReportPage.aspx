<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="EngReportPage.aspx.cs" Inherits="OpenMind.reportPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            top: -2px;
            left: 1px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style2 {
            position: relative;
            width: 100%;
            -ms-flex-preferred-size: 0;
            flex-basis: 0;
            -ms-flex-positive: 1;
            flex-grow: 1;
            max-width: 100%;
            top: -1px;
            left: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style3 {
            position: relative;
            width: 100%;
            -ms-flex: 0 0 50%;
            flex: 0 0 50%;
            max-width: 50%;
            left: 0px;
            top: -2px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
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
                                    <h3>English Term 1(17-Jan to 25-March) Report Criteria</h3>
                                 </center>
        
                             </div>
        
                         </div>

                         <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                          <div class="row">
                             <div class="auto-style3">
                               <label>Term:</label>
                                 <br />
                                 <asp:RadioButton ID="rdTerm1" runat="server" Text="1" GroupName="rbTerms" OnCheckedChanged="rdTerm1_CheckedChanged" />
                             </div>

                              <div class="col-md-6">
                               <label>Report Type</label>
                                 <div class="form-group">
                                     <asp:RadioButton ID="rbTest" runat="server" Text="Test" GroupName="rbReportType" OnCheckedChanged="rbTest_CheckedChanged" />
                                     <br />
                                     <asp:RadioButton ID="rbAssignment" runat="server" Text="Assignment" GroupName="rbReportType" OnCheckedChanged="rbTest_CheckedChanged" />
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
                                     <asp:RadioButton ID="rb1" runat="server" Text="1" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" />
                                     <br />
                                     <asp:RadioButton ID="rb2" runat="server" Text="2" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" />
                                     <br />
                                     <asp:RadioButton ID="rb3" runat="server" Text=" 3" GroupName="rbNum" OnCheckedChanged="rb1_CheckedChanged" />
                                 </div>
                             </div>

                     
                         </div>

                        
                         <br />
                         <div class="row">
                              <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="Button1" runat="server" Text="Display On Screen" OnClick="reportOnscreen_Click" />
                                 </div>
                             </div>

                             <div class="auto-style1">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block"  ID="generateReport" runat="server" Text="Generate Report" OnClick="generateReport_Click" />
                                 </div>
                             </div>
                         </div>
                     <div />

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
                                    <h3>Learner English Marks</h3>
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
                                 <asp:GridView class="table table-striped table-bordered" ID="reportGridView" runat="server"></asp:GridView>
                             </div>
                         </div>

                     </div> 
                 </div>
             </div>
    </div>
</asp:Content>
