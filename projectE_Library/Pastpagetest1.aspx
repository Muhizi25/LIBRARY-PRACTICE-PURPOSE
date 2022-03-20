<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Pastpagetest1.aspx.cs" Inherits="projectE_Library.Pastpagetest1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid" style="background-image:url(images/bookiisue.jpg);background-repeat:no-repeat;">
        
              <div class="row" style="margin-top:5px">
           

                  <div class="col-12">

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
