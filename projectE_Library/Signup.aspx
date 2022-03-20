<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="projectE_Library.Signup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container" style="background-image:url(images/signupadm.png);background-repeat:no-repeat;">
        <div class="row" style="margin-top:5px">
            <div class="col-md-8 col-mx-auto ">
                <div class="card"  style = "background-color:#2a2f57;color:whitesmoke;">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width = "80px" height="80px" src ="images/login.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                       <div class="row">
                            <div class="col-md-6">
                                 <label>Full Name</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" placeholder="Fullname"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-6">
                                  <label>Date Of Birth</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server" placeholder="Date of birt" TextMode="Date"></asp:TextBox>
                            </div>
                            </div>
                           </div>




                        
                       <div class="row">
                            <div class="col-md-6">
                                 <label>Contact No</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox5" Class="form-control"  runat="server" placeholder="Contact" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-6">
                                  <label>Email ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox6" Class="form-control"  runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                            </div>
                            </div>
                           </div>


                        <div class="row">
                            <div class="col-md-4">
                                 <label>State</label>
                                  <div class="form-group">
                                      <asp:DropDownList ID="DropDownList1" Class="form-control" runat="server">
                                          <asp:ListItem Text ="Nothern" Value ="Northern"/>
                                           <asp:ListItem Text ="Southern" Value ="Southern"/>
                                           <asp:ListItem Text ="Eastern" Value ="Eastern"/>
                                           <asp:ListItem Text ="Western" Value ="Western"/>
                                           <asp:ListItem Text ="Centrol" Value ="Centrol"/>
                                          
                                      </asp:DropDownList>
                        </div>
                                </div>
                           
                            <div class="col-md-4">
                                  <label>City</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox8" CssClass="form-control"  runat="server" placeholder="City"></asp:TextBox>
                            </div>
                            </div>
                             <div class="col-md-4">
                                  <label>PinCode</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox9" CssClass="form-control"  runat="server" placeholder="PinCode" TextMode="Number"></asp:TextBox>
                            </div>
                            </div>
                           </div>

                          <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox7" Class="form-control"  runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                            </div> 
                                </div>
                      
                        </div>

                        <div class="row">
                            <center>
                                   <div class="col-md-6">
                             <span class="badge rounded-pill bg-info text-dark">Login creadentials</span>
                        </div>
                            </center>
                         
                           </div>
                       

                   <div class="row">
                            <div class="col-md-6">
                                 <label>User ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox1" Class="form-control"  runat="server" placeholder="user Id"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-6">
                                  <label>PassWord</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox2" Class="form-control"  runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>
                           </div>


                         <div class="row">
                              <div class="col">
                           <div class="form-group d-grid gap-2">
                               <asp:Button ID="Button1" style="margin:5px" Class="btn btn-success" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                            </div> 
                        </div> 
                        </div>
                </div>

            </div>
        </div>
    </div>
          
                <a style="text-decoration:none;" href="homepage.aspx"> << Back to Home </a> <br />
          </div>
</asp:Content>
