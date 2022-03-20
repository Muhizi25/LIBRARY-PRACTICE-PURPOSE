<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="projectE_Library.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="background-image:url(images/userprofile.jpg);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="col-md-5">
                <div class="card"  style = background-color:#2a2f57;color:whitesmoke;>
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
                                    <h4>Your Profile</h4>
                                    <span>Acount Status</span>
                                    <asp:Label ID="Label2" class="badge bg-info text-dark" runat="server" Text="Your status"></asp:Label>
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
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder="Fullname"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-6">
                                  <label>Date Of Birth</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Date of birt" TextMode="Date"></asp:TextBox>
                            </div>
                            </div>
                           </div>




                        
                       <div class="row">
                            <div class="col-md-6">
                                 <label>Contact No</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox13" Class="form-control"  runat="server" placeholder="Contact"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-6">
                                  <label>Email ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox14" Class="form-control"  runat="server" placeholder="Date of birt" TextMode="Email"></asp:TextBox>
                            </div>
                            </div>
                           </div>


                        <div class="row">
                            <div class="col-md-4">
                                 <label>State</label>
                                  <div class="form-group">
                                      <asp:DropDownList ID="DropDownList2" Class="form-control" runat="server">
                                          <asp:ListItem Text ="Kigali" Value ="Kigali"/>
                                           <asp:ListItem Text ="Kampala" Value ="kampla"/>
                                      </asp:DropDownList>
                        </div>
                                </div>
                           
                            <div class="col-md-4">
                                  <label>City</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox15" CssClass="form-control"  runat="server" placeholder="City"></asp:TextBox>
                            </div>
                            </div>
                             <div class="col-md-4">
                                  <label>PinCode</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox16" CssClass="form-control"  runat="server" placeholder="PinCode" TextMode="Number"></asp:TextBox>
                            </div>
                            </div>
                           </div>

                          <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox17" Class="form-control"  runat="server" placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
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
                            <div class="col-md-4">
                                 <label>Member ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox18" Class="form-control"  runat="server" placeholder="ts11"></asp:TextBox>
                            </div>
                        </div>
                           
                            <div class="col-md-4">
                                  <label> Old PassWord</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox19" Class="form-control"  runat="server" placeholder=" Old Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>
                       <div class="col-md-4">
                                  <label> New PassWord</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox20" Class="form-control"  runat="server" placeholder=" New Password" TextMode="Password"></asp:TextBox>
                            </div>
                            </div>

                           </div>


                         <div class="row">
                              <div class="col-8 mx-auto">
                                  <center>
                           <div class="form-group d-grid gap-2">
                                      <asp:Button ID="Button2" class="btn btn-primary " Style="margin:5px;" runat="server" Text="Update" />
                            </div> 
                                      </center>
                        </div> 
                        </div>
                </div>

            </div>
        </div>

                  <div class="col-md-7">

                       <div class="card" style = background-color:#2a2f57;color:whitesmoke;>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <img width = "80px" height="80px" src="images/e-library.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issue Books</h4>
                                    <asp:Label ID="Label1" class="badge bg-info text-dark" runat="server" Text="Your Book Info"></asp:Label>
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
                                <asp:GridView class="table table-table-striped table" ID="GridView1"  runat="server"></asp:GridView>
                            </div>
                        </div>
    
                </div>

            </div>
                  </div>

    </div>
          <a style="text-decoration:none;" href="homepage.aspx"> << Back to Home </a> <br />
         </div>
</asp:Content>
