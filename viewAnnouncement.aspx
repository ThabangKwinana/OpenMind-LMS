<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="viewAnnouncement.aspx.cs" Inherits="OpenMind.viewAnnouncement" %>
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
                                     <img width="150" height="150" src="imgs/anns.jpg" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />

                     

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Announcements</h3>
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
                                     <asp:ListBox width="100" height="200px" ID="eventsNamesListBox" runat="server" AutoPostBack="True" OnSelectedIndexChanged="eventsNamesListBox_SelectedIndexChanged"></asp:ListBox>
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
                                 <span class="badge badge-pill badge-info">Event Details</span>
                                  </center>
                             </div>
                         </div>
                     <br />

                     <div class="row">
                             <div class="col">
                                  <asp:ListBox width="500" height="100px" ID="eventsDetailsListBox" runat="server"></asp:ListBox>
                             </div>
                         </div>
                     <div />

                     </div> 
                     </div>
             </div>
           
            <div class="row">
                    <a href="learnerPage.aspx">Back to learner page </a><br /><br />
                 <div class="col-12" align ="right">
                    <a href="homepage.aspx">Logout </a><br /><br />
                 </div>
              </div>
            
        </div>
        <div class="col-md-7">
                 <div class="card">
                     <div class="card-body">
                         
                         <div class="row">
                             <div class="col">
                                 <center>
                                     <img width="150" height="150" src="imgs/anns.jpg" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />

                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Calendar</h3>
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
                                     <asp:Calendar ID="theCalendar" runat="server" BackColor="#FFCCFF" BorderColor="#66FFFF" OnSelectionChanged="theCalendar_SelectionChanged"></asp:Calendar>
                                 </center>
                                 
                             </div>
                         </div>
                          <br />
                            
                         <div class="row">
                             <div class="col-4" align ="right">
                               <label>Event Date & Time:</label>
                             </div>

                             <div class="col-3" align ="left">
                                 <asp:TextBox ID="eventDateTime" runat="server" placeholder="mm/dd/yyy"></asp:TextBox>
                             </div>

                             
                             <div class="col-3">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary"  ID="viewBtn" runat="server" Text="View Details" OnClick="viewBtn_Click" />
                                 </div>
                             </div>
                         </div>

                     </div> 
                 </div>
             </div>
     </div>
</asp:Content>
