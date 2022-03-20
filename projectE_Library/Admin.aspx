<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="projectE_Library.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid " style="background-image:url(images/admin2.png);background-repeat:no-repeat;">
        <div class="row" style="margin-top:5px" >
            <div class=" col-md-6 col-sm-12 col-mx-auto ">
                <div class="card "  style = background-color:antiquewhite;>
                    <div class="card-body" >
                        <div class="row">
                            <div class="col">
                                <center>
                                   
                                    <img width = "80px" height="80px" src="images/admn.jpg" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3 style="font-size:x-large;">Admin Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Admin ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" placeholder="Member ID"></asp:TextBox>
                            </div> 
                                  <label> Password</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div> 

                                  <label></label>
                                  <div class="form-group d-grid gap-2">
                                      <asp:Button ID="Button1" class="btn btn-success " runat="server" Text="login" OnClick="Button1_Click" />
                            </div>


                            </div>
                        </div>

                    </div>
                </div>

                <a style="text-decoration:none;" href="homepage.aspx"> << Back to Home </a> <br />
            </div>
        </div>
    </div>
</asp:Content>
