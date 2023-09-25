<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="addAnnouncements.aspx.cs" Inherits="OpenMind.addAnnouncements" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
             <div class="col-md-8 mx-auto">
                 
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
                                    <h3>Create Announcements</h3>
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
                               <label>Event Name</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="eventNameTxtBox" 
                                         runat="server" placeholder="Event Name"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="eventNameRequired" runat="server" ControlToValidate="eventNameTxtBox" ErrorMessage="Please enter event name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Event Organiser</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="eventOrgTxtBox" 
                                         runat="server" placeholder="Event Organiser"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="organiserNameRequired" runat="server" ControlToValidate="eventOrgTxtBox" ErrorMessage="Please enter the organiser's name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Event Type</label>
                                 <div class="form-group">
                                     <asp:DropDownList width="150" height="35px" ID="eventTypeList" runat="server">
                                         <asp:ListItem></asp:ListItem>
                                         <asp:ListItem>Educational</asp:ListItem>
                                         <asp:ListItem>Sports</asp:ListItem>
                                         <asp:ListItem>Fundraising</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="typeRequired" runat="server" ErrorMessage="Please select event type" ControlToValidate="eventTypeList" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Admin ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="adminIDTxtBox" 
                                         runat="server" placeholder="Admin ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="adminID_required" runat="server" ControlToValidate="adminIDTxtBox" ErrorMessage="Please enter Admin ID" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                     
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Event Date</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="eventDateTxtBox" 
                                         runat="server" placeholder="YYYY/MM/DD" TextMode="SingleLine"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="dateRequired" runat="server" ControlToValidate="eventDateTxtBox" ErrorMessage="Please enter date in format(yyyy/mm/dd)" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              
                         </div>

                          <div class="row">
                             <div class="col">
                               <hr/>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col">
                                  <div class="form-group">
                                      <asp:Button class="btn btn-primary btn-block btn-lg"  ID="AddAnnBtn" runat="server" Text="Add Announcements" OnClick="AddAnnBtn_Click" />
                                 </div>

                             </div>
        
                         </div>

                     </div> 
                 </div>

                 <a href="maintainAnn.aspx">Back to manage page </a><br /><br />

              
           </div>
        </div>
    </div>
</asp:Content>
