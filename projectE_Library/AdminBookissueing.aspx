<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookissueing.aspx.cs" Inherits="projectE_Library.AdminBookissueing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="background-image:url(images/bookiisue.jpg);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="col-md-5">
                <div class="card"  style = background-color:#fdedde;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img   width = " 80px " height ="80px" src="images/e-library.png" />
                                    

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
                                  <label>Member ID</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Member Id" ></asp:TextBox>
                            </div>
                            </div>

                            <div class="col-md-6">
                                 <label>Book ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder="ID"></asp:TextBox>

                                      <asp:Button ID="Button2" class="btn btn-primary "  runat="server" Text="Go" />
                        </div>
                            </div>
                        </div>



                            <div class="col-md-6">
                                  <label>Member Name</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" placeholder="name" ReadOnly="true" ></asp:TextBox>
                            </div>
                            </div>

                            <div class="col-md-6">
                                 <label>Book Name</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" placeholder="ID" ReadOnly="true"></asp:TextBox>

                                     </div>
                            </div>
                        </div>


                                   <div class="col-md-6">
                                  <label>Start Date</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" placeholder=" startDate" TextMode="Date" ></asp:TextBox>
                            </div>
                            </div>

                            <div class="col-md-6">
                                 <label>End Date</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>

                                     </div>
                            </div>
                        </div>
                           </div>

                        <div class="row">
                            <div class="col-6">
                               <asp:Button  ID="Button1" class="btn btn-lg btn-primary   btn-block" style="margin:7px;padding:5px; width:50%;" runat ="server" Text="Issue" />
                            </div>
                            <div class="col-6">
                               <asp:Button ID="Button3" class="btn btn-lg btn-success  btn-block" style="margin:7px;padding:5px; width:50%;" runat="server" Text="Delete" />
                            </div>
                           
                        </div>
                        
                </div>

            </div>
        </div>

                  <div class="col-md-7">

                       <div class="card" style = background-color:#fdedde;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book  List</h4>
                                   
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
