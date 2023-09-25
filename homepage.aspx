<%@ Page Title="" Language="C#" MasterPageFile="~/OpenMind.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="OpenMind.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <centre>
            <img src="imgs/top.jpg" class="img-fluid" />
        </centre>
    </section>
    <section>
        <br />
        <br />
        <div class="container">

                 <div class="row">
                <div class="col-4">
                    <center>
                    
                    </center>
               </div>

                <div class="col-4">
                    <center>
                     <h2> LEARNER FEATURES </h2>
                    </center>
               </div>
               <br />
               <br />
               <br />
                <div class="col-4">
                    <center>
                    
                    </center>
               </div>
           </div>

            <div class="row">
                <div class="col-4">
                    <center>
                    <img width="150" src="imgs/anns.jpg" />
                     <h4> ANNOUNCEMENTS </h4>
                    <p>Learners can access announcements about school events</p>
                    </center>
               </div>

                <div class="col-4">
                    <center>
                        <img width="150" src="imgs/gradebook.jpg" />
                     <h4> GRADEBOOK </h4>
                    <p>Learners can access gradebook to view their marks</p>
                    </center>
               </div>

                <div class="col-4">
                    <center>
                        <img width="150" src="imgs/help.jpg" />
                     <h4> HELP </h4>
                    <p>Learners can access help to easily navigate the site</p>
                    </center>

                    <a href="Documentation_UserManual.pdf">Help Document</a>
               </div>
           </div>
        </div>

        <div class="row">
                <div class="col">
                    <div class="form-group">
                        <center>
                            <asp:Button class="btn btn-primary btn"  ID="loginBtn" runat="server" Text="Learner Login" OnClick="loginBtn_Click"/>
                        </center>
                    </div>
                </div>
            </div>

    </section>
    <br/>
    <br/>
    <section>
        <centre>
            <img src="imgs/bottom.jpg" class="img-fluid" />
        </centre>
    </section>

</asp:Content>
