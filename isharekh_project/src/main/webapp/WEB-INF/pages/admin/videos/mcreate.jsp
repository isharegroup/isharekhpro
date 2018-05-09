<%--
  Created by IntelliJ IDEA.
  User: HTPP
  Date: 04/27/2018
  Time: 8:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>create video</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport"/>
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/ui_admin/bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/ui_admin/bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="/ui_admin/bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="/dist/css/skins/_all-skins.min.css">
    <!-- English Description Video - text editor -->
    <link rel="stylesheet" href="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    <%--<script src="/ui_admin/bower_components/jquery/dist/jquery.min.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <%--<script src="/ui_admin/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>--%>
    <!-- FastClick -->
    <script src="/ui_admin/bower_components/fastclick/lib/fastclick.js"></script>
    <!-- AdminLTE App -->
    <script src="/dist/js/adminlte.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="/dist/js/demo.js"></script>
    <!-- Khmer Description Video -->
  <%--  <script src="/ui_admin/bower_components/ckeditor/ckeditor.js"></script>--%>
    <!-- English Description Video -->
    <script src="/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
 <%--   <script src="/js/form_editors.js"></script>--%>
    <%--editor--%>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <script src="/js/modeleditors/editor.js"></script>
    <link rel="stylesheet" href="/css/modeleditors/editor.css"/>
    <script>
        $(document).ready(function() {
            $("#txtEditor").Editor();
            $("#txtEditor2").Editor();
        });
    </script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
    <%@ include file="../../layouts/admin/header.jsp"%>
    <!-- Left side column. contains the logo and sidebar -->
    <%@ include file="../../layouts/admin/main-sidebar.jsp"%>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <%@ include file="../../layouts/admin/content-header.jsp"%>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-info">
                        <div class="box-header">
                            <h3 class="box-title">Khmer Description Video
                                <small>Khmer description of video</small>
                            </h3>
                            <!-- tools box -->
                            <div class="pull-right box-tools">
                                <button type="button" class="btn btn-info btn-sm" data-widget="collapse" data-toggle="tooltip"
                                        title="Collapse">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-info btn-sm" data-widget="remove" data-toggle="tooltip"
                                        title="Remove">
                                    <i class="fa fa-times"></i></button>
                            </div>
                            <!-- /. tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body pad">
                            <form method="POST" action="mcreate" modelAttribute="video">
                                <div>
                                    <textarea name="des" id="txtEditor" placeholder="Place input description khmer">
                                        ${des_kh}
                                        <h1>Hello kh</h1>
                                        <h1>Hello kh</h1>
                                        <h1>Hello kh</h1>
                                        <h1>Hello kh</h1>
                                    </textarea>
                                </div>
                                <div>
                                    <label class="btn btn-info" style="background-color: green;">${message}</label>
                                    <label class="btn btn-info" style="background-color: red;">${message_error}</label>
                                    <button type="submit" class="btn btn-info pull-right">Add</button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <!-- /.box -->

                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">English Description Video
                                <small>English description of video</small>
                            </h3>
                            <!-- tools box -->
                            <div class="pull-right box-tools">
                                <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip"
                                        title="Collapse">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-default btn-sm" data-widget="remove" data-toggle="tooltip"
                                        title="Remove">
                                    <i class="fa fa-times"></i></button>
                            </div>
                            <!-- /. tools -->
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body pad">
                            <form method="POST" action="mcreate" modelAttribute="video">
                                <div>
                                    Hello en top
                                    <textarea name="desEn" id="txtEditor2" placeholder="Place input description english">
                                        ${des_en}
                                        <h1>Hello en</h1>
                                        <h1>Hello en</h1>
                                        <h1>Hello en</h1>
                                        <h1>Hello en</h1>
                                    </textarea>
                                </div>

                                <div>
                                    <label class="btn btn-info" style="background-color: green;">${message_en}</label>
                                    <label class="btn btn-info" style="background-color: red;">${message_en_error}</label>
                                    <button type="submit" class="btn btn-info pull-right">Add</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /.col-->
            </div>
            <!-- ./row -->
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-6">
                    <!-- General Information -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">General Information</h3>
                        </div>
                        <!-- form start -->
                        <form class="form-horizontal">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="inputNumView" class="col-sm-2 control-label">Number View</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputNumView" placeholder="Number View">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputNumShare" class="col-sm-2 control-label">Number Share</label>

                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="inputNumShare" placeholder="Number Share">
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <button type="submit" class="btn btn-info pull-right">Add</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <!-- General Information -->
                    <div class="box box-info">
                        <div class="box-header with-border">
                            <h3 class="box-title">General Information</h3>
                        </div>
                        <!-- /.box-header -->
                        <!-- form start -->
                        <form class="form-horizontal" method="POST" action="create" modelAttribute="video">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="inputComment" class="col-sm-2 control-label">Comment</label>

                                    <div class="col-sm-10">
                                        <input type="text" name="comment" class="form-control" id="inputComment" placeholder="Comment">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputRemoteURL" class="col-sm-2 control-label">Remote URL</label>

                                    <div class="col-sm-10">
                                        <input name="remoteVideoUrl" type="text" class="form-control" id="inputRemoteURL" placeholder="Remote URL">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputLocalVideo" class="col-sm-2 control-label">Local Video</label>

                                    <div class="col-sm-10">
                                        <input name="localVideo" type="text" class="form-control" id="inputLocalVideo" placeholder="Local Video">
                                    </div>
                                </div>
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <label class="btn btn-info" style="background-color: green;">${message_remmote}</label>
                                <label class="btn btn-info" style="background-color: red;">${message_remote_error}</label>
                                <button type="submit" class="btn btn-info pull-right">Add</button>
                            </div>
                            <!-- /.box-footer -->
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="form-container">
                <h1>upload file</h1>
                <form method="POST" action="?dsdsadsada" modelAttribute="fileBucket" enctype="multipart/form-data" class="form-horizontal">

                    <div class="row">
                        <div class="form-group col-md-12">
                            <label class="col-md-4" for="file">Upload a file</label>
                            <div class="col-md-4">
                                <input type="file" name="file" class="form-control">
                                <div class="has-error">
                                    <form:errors path="file" class="help-inline"/>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <input type="submit" value="Upload" class="btn btn-primary btn-sm">
                            </div>
                        </div>

                    </div>

                </form>
            </div>
        </section>

    </div>
    <!-- /.content-wrapper -->
    <%@ include file="../../layouts/admin/footer.jsp"%>
    <div class="control-sidebar-bg"></div>
</div>
</body>
</html>
