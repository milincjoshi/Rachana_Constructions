<%@ Page Language="C#" AutoEventWireup="true" CodeFile="upload_images.aspx.cs" Inherits="upload_images" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="homestyle.css" rel="stylesheet" />

    <script src="Bootstrap/jquery-1.11.1.min.js"></script>
    <!--Bootstrap referene-->
    <link href="Bootstrap/dist/css/bootstrap-theme.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.css" rel="stylesheet" />
    <link href="Bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />

    <script src="Bootstrap/dist/js/bootstrap.js"></script>
    <script src="Bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="Bootstrap/dist/js/npm.js"></script>


    <!--Lightbox-->
     <script>
         $(document).ready(function () {
             $('li img').on('click', function () {
                 var src = $(this).attr('src');
                 var img = '<img src="' + src + '" class="img-responsive"/>';
                 $('#myModal').modal();
                 $('#myModal').on('shown.bs.modal', function () {
                     $('#myModal .modal-body').html(img);
                 });
                 $('#myModal').on('hidden.bs.modal', function () {
                     $('#myModal .modal-body').html('');
                 });
             });
         })
        </script>


<!--Drag And Drop Image Script-->
      
<!--drag and drop-->
    
</head>
<body class="whitespace">

      <!--Pre Loader-->
    <div class="loader"></div>


    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    <div class=" container">
        <div class="page-header text-center font_modernsans fontsize_30 forecolor_darkgreen">
            &nbsp;Upload Images for your Photo Gallery
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="col-lg-6 font_modernsans forecolor_darkgreen fontsize_24"><a href="index.aspx">Go to Home Page</a></div>
                <div class="col-lg-5 font_modernsans forecolor_darkgreen fontsize_24"><a href="PhotoGallery.aspx">View Photo Gallery</a></div>
                <div class="col-lg-1"><asp:Button CssClass="btn btn-primary" ID="logout" runat="server" OnClick="logout_Click" Text="Logout" /></div>
            </div>
            <div class="col-lg-12 margin_10top">
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
            </div>
            <div class="col-lg-12">
                <asp:Button ID="Upload_Image" runat="server" OnClick="Upload_Image_Click" Text="Upload" />
            </div>
            <div class="col-lg-12 border table-bordered margin_10top padding_10">
               
<asp:GridView OnRowCommand="Image_Results_RowCommand" OnRowDeleting="Image_Results_RowDeleting"
     BorderColor="#2c6700" 
    CssClass="table table-responsive table-bordered table-hover" ID="Image_Results" runat="server" AutoGenerateColumns="false">
    <Columns>
        <asp:BoundField HeaderText="Id" DataField="Id" ItemStyle-Width="10%" />
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <img class="margin_10top padding_10 border" src =" <%# Eval("Image_path") %>  " data-src=" holder.js/300x200 " height="150" width="250" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:ButtonField ButtonType="Button" CommandName="Delete" Text="Delete" HeaderText="Delete Item" />
    </Columns>
</asp:GridView>

            </div>
        </div>
       <!--file drag-->
       <!--file drag ends-->
    </div>
    </div>
    </form>

<!--loader-->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript">
$(window).load(function () {
    $(".loader").fadeOut("slow");
})
</script>


</body>
</html>
