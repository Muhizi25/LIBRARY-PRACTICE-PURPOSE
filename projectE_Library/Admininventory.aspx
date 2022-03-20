<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admininventory.aspx.cs" Inherits="projectE_Library.Admininventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="background-image:url(images/adminmanagemet.png);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
            <div class="col-md-5">
                <div class="card"  style = background-color:#ffc7f8;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Dails</h4>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width = "100px" height="100px" src="images/searchb1.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                       <div class="row">
                           
                           <div class="row">
                               <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" />
                               </div>


                            <div class="col-md-4">
                                 <label>Book ID</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox11" CssClass="form-control"  runat="server" placeholder="ID"></asp:TextBox>

                                      <asp:Button ID="Button2" class="btn btn-primary "  runat="server" Text="Go" />
                        </div>
                            </div>
                        </div>
                           
                            <div class="col-md-8">
                                  <label>Book Name</label>
                                  <div class="form-group">
                                      <asp:TextBox ID="TextBox12" CssClass="form-control"  runat="server" placeholder="Book Name" ></asp:TextBox>
                            </div>
                            </div>
                           <div class="col-md-4">
                                  <label>Language</label>
                                  <div class="form-group">
                                      <asp:DropDownList ID="DropDownList1" CssClass="form-group" runat="server">
                                          <asp:ListItem Text="English" Value="English" />
                                           <asp:ListItem Text="Mandarin" Value="Mandarin" />
                                           <asp:ListItem Text="Hindi" Value="Hindi" />
                                           <asp:ListItem Text="Spanish" Value="Spanish" />
                                           <asp:ListItem Text="French" Value="French" />
                                           <asp:ListItem Text="Arabic" Value="Arabic" />
                                           <asp:ListItem Text="Bengali" Value="Bengali" />
                                        </asp:DropDownList>
                            </div>

                                 <label>Publisher Name</label>
                                  <div class="form-group">
                                      <asp:DropDownList ID="DropDownList2" CssClass="form-group" runat="server">
                                          <asp:ListItem Text="Perblisher1" Value="Perblisher1" />
                                           <asp:ListItem Text="Perblisher2" Value="Perblisher2" />
                                        </asp:DropDownList>
                            </div>
                            </div>
                            
                                
                            
                            <div class="col-md-4">
                                  <label>Auther Name</label>
                                  <div class="form-group">
                                      <asp:DropDownList ID="DropDownList3" CssClass="form-group" runat="server">
                                          <asp:ListItem Text="A1" Value="a1" />
                                           <asp:ListItem Text="a2" Value="a2" />
                                       
                                        </asp:DropDownList>
                            </div>

                                 <label>Publisher Date</label>
                                  <div class="form-group">
                                     <asp:TextBox ID="TextBox1" CssClass="form-control"  runat="server" placeholder="Date" TextMode="Date" ></asp:TextBox>
                            </div>
                            </div>
                           <div class="col-md-4">
                                  <label>Genr</label>
                                  <div class="form-group">
                                      <asp:ListBox ID="ListBox1" Class="form-control" runat="server">
                                            <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                           <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                           <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                           <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                           <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                           <asp:ListItem Text="crime" Value="crime" />
                                           <asp:ListItem Text="adventure" Value="adventure" />
                                      </asp:ListBox>
                            </div>
                            </div>

                           
                            <div class="col-md-4">
                                 <label>Edition</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server" placeholder="Edition"></asp:TextBox>

                                     
                                          </div>
                            </div>
                        </div>
                           
                            <div class="col-md-4">
                                 <label>Book Cost(per unit)</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server" placeholder="Book Cost"></asp:TextBox>

                                     
                                          </div>
                            </div>
                        </div>
                           
                            <div class="col-md-4">
                                 <label>Pages</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox4" CssClass="form-control"  runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>

                        </div>
                            </div>
                        </div>
                             
                            <div class="col-md-4">
                                 <label>Actual Stock</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox5" CssClass="form-control"  runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>

                                     
                                          </div>
                            </div>
                        </div>
                           
                            <div class="col-md-4">
                                 <label>Current Stock</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox6" CssClass="form-control"  runat="server" placeholder="Current Stock" ReadOnly="true"></asp:TextBox>

                                     
                                          </div>
                            </div>
                        </div>
                           
                            <div class="col-md-4">
                                 <label>Issued Books</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox7" CssClass="form-control"  runat="server" placeholder="Issued Books" ReadOnly="true" ></asp:TextBox>

                        </div>
                            </div>
                        </div>

                           <div class="col-12">
                                 <label>Book Description</label>
                                  <div class="form-group">
                                      <div class="input-group">
                                      <asp:TextBox ID="TextBox8" CssClass="form-control"  runat="server" placeholder="Book Description"  Textmode="MultiLine" ></asp:TextBox>

                        </div>
                            </div>
                        </div>
                           </div>

                        <div class="row">
                            <div class="col-4">
                               <asp:Button  ID="Button1" class="btn btn-lg btn-success  btn-block" style="margin:7px;padding:5px;" runat ="server" Text="Add" />
                            </div>
                            <div class="col-4">
                               <asp:Button ID="Button3" class="btn btn-lg btn-primary   btn-block" style="margin:7px;padding:5px;" runat="server" Text="Update" />
                            </div>
                            <div class="col-4">
                               <asp:Button ID="Button4" class="btn btn-lg btn-danger  btn-block" style="margin:7px;padding:5px;" runat="server" Text="Delete" />
                            </div>
                        </div>
                        
                </div>

            </div>
        </div>

                  <div class="col-md-7">

                       <div class="card"  style = background-color:#ffc7f8;>
                    <div class="card-body">
                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>
                                   
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
