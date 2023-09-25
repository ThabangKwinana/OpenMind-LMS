<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="updateAnnouncements.aspx.cs" Inherits="OpenMind.updateAnnouncements" %>
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
                                     <img width="150" height="150px" src="imgs/anns.jpg" />
                                 </center>
        
                             </div>
        
                         </div>
                         <br />
                         <div class="row">
                             <div class="col">
                                 <center>
                                    <h3>Manage Announcement Details</h3>
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
                                     <asp:RequiredFieldValidator ID="EnameRequired" runat="server" ControlToValidate="eventNameTxtBox" ErrorMessage="Please enter event name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                              <div class="col-md-6">
                               <label>Event Organiser</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="eventOrgTxtBox" 
                                         runat="server" placeholder="Event Organiser"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="organiserRequired" runat="server" ControlToValidate="eventOrgTxtBox" ErrorMessage="Please enter the organiser's name" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>
                         </div>

                         <div class="row">
                             <div class="col-md-6">
                               <label>Event Type</label>
                                 <div class="form-group">
                                     <asp:DropDownList width="150" height="35px" ID="eventType" runat="server">
                                         <asp:ListItem></asp:ListItem>
                                         <asp:ListItem>Educational</asp:ListItem>
                                         <asp:ListItem>Academic</asp:ListItem>
                                         <asp:ListItem>Sports</asp:ListItem>
                                         <asp:ListItem>Fundraising</asp:ListItem>
                                     </asp:DropDownList>
                                     <asp:RequiredFieldValidator ID="typeRequired" runat="server" ControlToValidate="eventType" ErrorMessage="Please select type" ForeColor="Red"></asp:RequiredFieldValidator>
                                 </div>
                             </div>

                             <div class="col-md-6">
                               <label>Announcement ID</label>
                                 <div class="form-group">
                                     <asp:TextBox CssClass="form-control" ID="annIDTxtBox" 
                                         runat="server" placeholder="Announcement ID"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="annID_Required" runat="server" ControlToValidate="annIDTxtBox" ErrorMessage="Please enter a numerical value(1, 2 or etc.)" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                      <asp:Button class="btn btn-primary btn-block"  ID="UpdAnnBtn" runat="server" Text="Update" OnClick="UpdAnnBtn_Click"/>
                                 </div>
                             </div>

                         </div>
                     <div />

                     </div> 
             </div>
            </div>
            <a href="maintainAnn.aspx">Back to manage page </a><br /><br />
        </div>
     </div>
</asp:Content>
