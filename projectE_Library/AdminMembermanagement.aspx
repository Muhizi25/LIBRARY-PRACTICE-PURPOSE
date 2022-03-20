<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminMembermanagement.aspx.cs" Inherits="projectE_Library.AdminMembermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="background-image:url(images/adminmanagemet.png);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="  col-md-12 col-lg-5">

                <div class="card"  style = background-color:#28cffd;>
                    <div class="card-body">
                        
                        <div class="row">
                            < class="col">
                                <center>
                                    <h4>Member Details</h4>
                                    
                                </center>
                            </>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width = "80px" height="80px" src="images/admn.jpg" />
                                    

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                       <div class="row">
                           
                           <div class="col-md-3">
                                 <label>Member ID</label>
                                  <div class="form-group">
                                    
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder=" ID"></asp:TextBox>

                                     <asp:LinkButton ID="LinkButton4" CssClass="btn btn-primary" runat="server" OnClick="LinkButton4_Click"><i class="fa-solid fa-circle-check"></i> </asp:LinkButton>
                      
                            </div>
                        </div>

                           
                            <div class="col-md-4">
                                  <label>Full Name</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Fullname" ReadOnly="true" ></asp:TextBox>
                            </div>
                            </div>

                            



                            <div class="col-md-5">
                                  <label>Account Status</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server" placeholder=" ID" ReadOnly="true">Acount_status</asp:TextBox>

                                             <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success " Style="margin-left:2px" runat="server" OnClick="LinkButton1_Click"><i class="fa-solid fa-circle-check"></i> </asp:LinkButton>
                                             <asp:LinkButton ID="LinkButton2" CssClass="btn btn-warning " Style="margin-left:2px"  runat="server" OnClick="LinkButton2_Click"><i class="fa-solid fa-circle-pause"></i> </asp:LinkButton>
                                             <asp:LinkButton ID="LinkButton3" CssClass="btn btn-danger " Style="margin-left:2px"  runat="server" OnClick="LinkButton3_Click"><i class="fa-solid fa-circle-xmark"></i> </asp:LinkButton>
                                         
                    </div>
                                      </div>
                            </div>

                            <div class="col-md-4">
                                 <label>DOB</label>
                                  <div class="form-group">
                                      
                                      <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" TextMode="Date" ReadOnly="true"></asp:TextBox>

                                     
                            </div>
                        </div>


                                   <div class="col-md-4">
                                  <label>Contact No</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" placeholder=" Contac no"  TextMode="number" ReadOnly="true" ></asp:TextBox>
                            </div>
                            </div>

                            <div class="col-md-4">
                                 <label>Email Id</label>
                                  <div class="form-group">
                                      
                                      <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server" placeholder="email" TextMode="Email" ReadOnly="true"></asp:TextBox>

                                     
                            </div>
                        </div>


                                <div class="col-md-4">
                                 <label>State</label>
                                  <div class="form-group">
                                     
                                      <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" placeholder="State"  ReadOnly="true"></asp:TextBox>

                                     
                            </div>
                        </div>

                            <div class="col-md-4">
                                 <label>City</label>
                                  <div class="form-group">
                                      
                                      <asp:TextBox ID="TextBox6" CssClass="form-control"  runat="server" placeholder="City"  ReadOnly="true"></asp:TextBox>

                                     
                            </div>
                        </div>

                           <div class="col-md-4">
                                 <label>Pincode</label>
                                  <div class="form-group">
                                     
                                      <asp:TextBox ID="TextBox8" CssClass="form-control"  runat="server" placeholder="pincode"  ReadOnly="true"></asp:TextBox>

                                    
                            </div>
                        </div>



                            <div class="col-md-12">
                                 <label>Full Postal Address</label>
                                  <div class="form-group">
                                      
                                      <asp:TextBox ID="TextBox7" CssClass="form-control"  runat="server" placeholder="Full Postal Address" Textmode="MultiLine" ReadOnly="true"></asp:TextBox>

                                    
                            </div>

                        </div>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col-8 mx-auto">
                               <asp:Button  ID="Button1" class="btn btn-lg btn-danger  btn-block" style="margin:7px;padding:5px; width:100%;" runat ="server" Text="Delete User Permanently" OnClick="Button1_Click" />
                            </div>
                        </div>
                        
                </div>


            </div>
        </div>


                  <div class="  col-md-12 col-lg-7">

                       <div class="card"  style = background-color:#28cffd;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Members  List</h4>
                                   
                                </center>
                            </div>
                        </div>

                        

                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E_learningDbConnectionString %>" SelectCommand="SELECT * FROM [Member_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-table-striped table" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="NAME" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="STATUS" SortExpression="account_status" />
                                        <asp:BoundField DataField="contact_no" HeaderText="CONTACT" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="EMAIL ID" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="STATE" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="CITY" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
    
                </div>

            </div>
           </div>

          </div>
   
          <a style="text-decoration:none;" href="homepage.aspx"> << Back to Home </a> <br />
         </div>
</asp:Content>
