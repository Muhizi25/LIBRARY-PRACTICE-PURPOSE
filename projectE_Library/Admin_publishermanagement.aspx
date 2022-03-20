<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin_publishermanagement.aspx.cs" Inherits="projectE_Library.Admin_publishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container" style="background-image:url(images/publisher.jpg);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="col-md-5">
                <div class="card" style = background-color:#cff4d2;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher Deails</h4>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    
                                   
                                    <img  width = "100px" height="100px" src="images/publish1.jpg" />
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
                                 <label>Publisher ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder="ID"></asp:TextBox>

                                      <asp:Button ID="Button2" class="btn btn-primary "  runat="server" Text="Go" />
                        </div>
                            </div>
                        </div>
                           
                            <div class="col-md-7">
                                  <label>Publisher Name</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Publisher Name" ></asp:TextBox>
                            </div>
                            </div>
                           </div>

                        <div class="row">
                            <div class="col-4">
                               <asp:Button  ID="Button1" class="btn btn-lg btn-success  btn-block" style="margin:7px;padding:5px;" runat ="server" Text="Add Publisher" OnClick="Button1_Click" />
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

                       <div class="card"  style = background-color:#cff4d2;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Publisher List</h4>
                                   
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                          <div class="row">
                              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:E_learningDbConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [Publisher_master]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-table-striped table" ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="publisher_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="publisher_id" HeaderText="publisher_id" ReadOnly="True" SortExpression="publisher_id" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
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
