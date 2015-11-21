<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PhotoGallery.aspx.cs" Inherits="PhotoGallery" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Photo Gallery</title>

    <!--CSS Reference-->
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
$('img').on('click', function () {
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


</head>
<body class="whitespace">


<form id="form1" runat="server">
<div class="container">
<div class="page-header font_modernsans fontsize_40 text-center forecolor_darkgreen">Rachana's Gallery of Works</div>

<hr/>

<asp:DataList ID="Image_Results" runat="server" CellSpacing="20" CellPadding="20" RepeatDirection="Horizontal" RepeatColumns="4">
<ItemTemplate>
<div>
<div class="thumbnail">
<img id="gallery_images" class="border" src=" <%# Eval("Image_path") %> " data-src="holder.js/300x200" alt="Image Missing">
</div>
</div>
</ItemTemplate>
</asp:DataList>


<!--Modal for enlarging image on click-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-body">
</div>
</div>
<!-- /.modal-content -->
</div>
<!-- /.modal-dialog -->
</div>
<!-- /.modal -->
 <!--new code ends-->
</div>
</form>

</body>
</html>
