<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_Authermanegement.aspx.cs" Inherits="projectE_Library.Admin_Authermanegement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid" style="background-image:url(images/adminmanagemet.png);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="col-md-5">
                <div class="card"  style = background-color:#ddc9ff;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Auther Deails</h4>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                    <img  width = "80px" height="80px" src="images/Auther.jpg" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                       <div class="row">
                            <div class="col-md-4">
                                 <label>Auther ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder="ID"></asp:TextBox>

                                      <asp:Button ID="Button2" class="btn btn-primary "  runat="server" Text="Go" OnClick="Button2_Click" />
                        </div>
                            </div>
                        </div>
                           
                            <div class="col-md-7">
                                  <label>Authername</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Authername" ></asp:TextBox>
                            </div>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col-4">
                               <asp:Button  ID="Button1" class="btn btn-lg btn-success  btn-block" style="margin:7px;padding:5px;" runat ="server" Text="Add Auther" OnClick="Button1_Click" />
                            </div>
                            <div class="col-4">
                               <asp:Button ID="Button3" class="btn btn-lg btn-primary   btn-block" style="margin:7px;padding:5px;" runat="server" Text="Update" OnClick="Button3_Click" />
                            </div>
                            <div class="col-4">
                               <asp:Button ID="Button4" class="btn btn-lg btn-danger  btn-block" style="margin:7px;padding:5px;" runat="server" Text="Delete" OnClick="Button4_Click" />
                            </div>
                        </div>
                        
                </div>

            </div>
        </div>

                  <div class="col-md-7">

                       <div class="card" style = background-color:#ddc9ff;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Auther List</h4>
                                   
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E_learningDbConnectionString %>" SelectCommand="SELECT * FROM [Auther_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-table-striped table" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="auther_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="auther_id" HeaderText="auther_id" ReadOnly="True" SortExpression="auther_id" />
                                        <asp:BoundField DataField="auther_name" HeaderText="auther_name" SortExpression="auther_name" />
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
