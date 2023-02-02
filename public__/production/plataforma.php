<?php
// Conexão
require_once 'PHP/backend/connect.php';

// Sessão
session_start();

// Verificação
if(!isset($_SESSION['logado'])):
	header('Location: index.php');
endif;

// Dados
$user_id = $_SESSION['id_usuario'];
$user_name =  $_SESSION['user_name'];
$user_photo =  $_SESSION['user_photo'];
$saudacao =  $_SESSION['saudacao'];  
$sql = "SELECT * FROM user WHERE user_id = '$user_id'";
$resultado = mysqli_query($conn, $sql);
$dados = mysqli_fetch_array($resultado);
mysqli_close($conn);
?>


<!DOCTYPE html>
<html lang="pt-br" style="overflow-y: hidden; overflow-x: hidden;">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    
  <link href="images/favicon.ico" rel="shortcut icon" />

    <title> GEsTri</title>

    <!-- Bootstrap -->
    <link href="../vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="../vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- NProgress -->
    <link href="../vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="../vendors/iCheck/skins/flat/green.css" rel="stylesheet">

    <link href="ckeditor/plugins/codesnippet/lib/highlight/styles/default.css" rel="stylesheet">
    
    <script src="js/prism.js"></script>

    <link href="css/prism.css" rel="stylesheet">

    

    <!-- Custom Theme Style -->
    <!--<link href="../build/css/custom.min.css" rel="stylesheet">-->
    <link href="../build/css/custom_.css" rel="stylesheet">
    <!--<link href="css/custom.css" rel="stylesheet">-->
    <link href="css/plataforma/custom_plataforma.css" rel="stylesheet">

    <!-- TinyMCE -->    
    <script src="tinymce/tinymce.min.js"></script>
  </head>

  <body class="nav-md">


    <div class="mascara"></div>


      <!-- popup confirma exclusao post -->
      <div class="confirma-exclusao-post">
            Confirma exclusão: 
            <form id="form-confirma-exclusao-post-sim">
                <input type="hidden" name="post_id" value="" />
                <button type="submit" class="btn btn-success btn-sim-exclui-post">
                    Sim
                </button> 
            </form>            
 
            <form id="form-confirma-exclusao-post-nao">
                <input type="hidden" name="post_id" value="" />
                <button type="submit" class="btn btn-secondary btn-nao-exclui-post">
                    Não
                </button> 
            </form>
      </div> 

      
        <!-- Modal projeto-exemplo -->
        <div class="modal fade" id="projeto-exemplo" tabindex="-1" role="dialog" aria-labelledby="projeto-exemploLabel" aria-hidden="true">
            <div class="modal-dialog modal-xl" role="document">
              <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="projeto-exemploLabel"><i class="fa-solid fa-user-plus"></i> Categoria <small>Cadastrar</small></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                  </div>
              </div><!-- modal-content -->
            </div><!-- modal-dialog -->
        </div>



    <div class="container body">
      <div class="main_container">
      <div class="code-tester">        
        <!--<object class="iframe" data="https://liveweave.com/" width="" height="" type="text/html"></object>-->
        <!--<object class="iframe" data="https://michaelsboost.com/kodeWeave/editor/" width="" height="" type="text/html"></object>-->
      </div>


        <!-- Modal -->
        <div class="modal fade" id="form_cadastro_de_categoria" tabindex="-1" role="dialog" aria-labelledby="form_cadastro_de_categoriaLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="form_cadastro_de_categoriaLabel"><i class="fa-solid fa-user-plus"></i> Categoria <small>Cadastrar</small></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form class="form-modal-que-serve-aos-cadastros form-horizontal form-label-left">
                        <div class="form-group row ">
                          <label class="control-label col-md-3 col-sm-3 ">Nome</label>
                          <div class="col-md-9 col-sm-9 ">
                            <input type="text" class="form-control" id="categoria_modal_cadastro_nome" required="" name="categoria_modal_cadastro_nome" placeholder="">
                          </div>
                        </div>  
                        <div class="form-group row ">
                          <label class="control-label col-md-3 col-sm-3 ">Nome curto</label>
                          <div class="col-md-9 col-sm-9 ">
                            <input type="text" class="form-control" id="categoria_modal_cadastro_abrev_categoria" required="" name="categoria_modal_cadastro_abrev_categoria" placeholder="">
                          </div>
                        </div>                         
                        <div class="ln_solid"></div>
                        <div class="form-group">
                          <div class="col-md-9 col-sm-9">
                            <!--<button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros">Cancela</button>-->
                            <!--<button type="submit" class="btn btn-secondary btn-salvar btn-salvar-categoria submit">Salvar categoria</button>-->
                          </div>
                          <div class="col-md-2 col-sm-2">
                            <div class="categoria-save-message text-success"></div>
                          </div>
                        </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-secondary button-4 btn-salvar-categoria submit">Salvar</button>
                </div>                 
            </form> 
            </div>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="form_cadastro_de_tipo" tabindex="-1" role="dialog" aria-labelledby="form_cadastro_de_tipoLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="form_cadastro_de_tipoLabel"><i class="fa-solid fa-user-plus"></i> Tipo <small>Cadastrar</small></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form class="form-modal-que-serve-aos-cadastros-tipo form-horizontal form-label-left">
                        <div class="form-group row ">
                          <label class="control-label col-md-3 col-sm-3 ">Nome</label>
                          <div class="col-md-9 col-sm-9 ">
                            <input type="text" class="form-control" id="tipo_modal_cadastro_nome" required="" name="tipo_modal_cadastro_nome" placeholder="">
                          </div>
                        </div>                         
                        <div class="ln_solid"></div>
                        <div class="form-group">
                          <div class="col-md-9 col-sm-9">
                            <!--<button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros-tipo">Cancela</button>-->
                            <!--<button type="submit" class="btn btn-secondary btn-salvar btn-salvar-categoria-tipo submit">Salvar tipo</button>-->
                          </div>
                          <div class="col-md-2 col-sm-2">
                            <div class="categoria-save-message text-success"></div>
                          </div>
                        </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros-tipo" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-secondary btn-salvar btn-salvar-tipo submit">Salvar</button>
                </div>                  
            </form> 
            </div>
            </div>
        </div>



        <div class="col-md-3 left_col esconde-left_col">
          <div class="left_col scroll-view" id="left_col">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa-solid fa-code"></i>&nbsp;&nbsp;&nbsp;<span>GE</span><span>s</span><span>Tri</span> <i class="fa-solid fa-clone"></i> <span style="font-size: .7em;">ProGrameJá!!!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix esconde_profile">
              <div class="profile_pic">
                <!--<img src="images/img.jpg" alt="..." class="img-circle profile_img">-->
                <img src="<?php echo $dados['user_photo']; ?>" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <div>
                  <span><?php echo $saudacao; ?></span>
                  <h2><?php echo $dados['user_name']; ?></h2>
                  <span class="id-usuario-logado" style="display: none !important;"><?php echo $dados['user_id']; ?></span>
                </div>
                <div></div>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />



            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              
                <i class="fa-solid fa-circle-dot update-notification"></i>                
              
              <!--<img class="spinner" src="assets/img/spinner/spinner.gif" alt="" />-->
              <div class="wrapper-sidebar-menu">
                  <!-- ... -->
              </div>
            </div><!-- /sidebar menu -->



            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a><!--
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>-->
              <a class="linke" data-toggle="tooltip" data-placement="top" title="Testar código">
                <span class="" aria-hidden="true"><i class="fa-solid fa-flask-vial botao-testar"></i></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="logout.php">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>



        <!-- top navigation -->
        <div class="top_nav estica-top_nav">
            <div class="nav_menu">
                <div class="nav toggle">
                  <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                </div>
                <nav class="nav navbar-nav">
                <ul class=" navbar-right">
                  <li class="nav-item dropdown open" style="padding-left: 15px;">
                    <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                      <img src="<?php echo $dados['user_photo']; ?>" alt=""><?php echo $dados['user_name']; ?> <span class="span-plataforma-user-id" style="opacity: 0;"><?php echo $user_id; ?></span>
                    </a><!--<i class="fa-solid fa-ellipsis-vertical config-geral user-course-manager" data-toggle="modal" data-target="#modalGerenciarAtribuidos"></i>-->
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">





                      <!--<a class="dropdown-item dashboard-load"><i class="fa-solid fa-list-ul pull-right"></i> Minhas trilhas</a>-->

                      <form id="carrega_conteudo_form" method="POST">
                        <input class="dropdown-item dashboard-load" type="hidden" value="<?php echo $user_id; ?>" name="user_logado" id="user_logado" />
                        <input id="carrega_conteudo_button_submit" type="submit" value="Minhas trilhas" />
                      </form>














                      <a class="dropdown-item"  href="logout.php"><i class="fa fa-sign-out pull-right"></i> Sair</a>
                    </div>
                    <div>















































































































































                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a>
                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <div class="text-center">
                          <a class="dropdown-item">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                          </a>
                        </div>
                      </li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
          </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col estica-right_col" role="main">
          <div class="classX">            
            <div class="row content_right_col_dashboard_user esconde_content_right_col_dashboard_user"> <!-- ROW conteudo dashboard user -->
              <div class="col-md-12 col-sm-12">   
                  <!--Add content to the page dashboard user...-->
                      <div class="row">
                          <!--<div class="col-md-4 mt-2 filtro">                            
                          </div>-->
                          <div class="col-md-7 mt-2">
                                <div class="animated flipInY col-lg-6 col-md-6 col-sm-6  ">
                                    <div class="tile-stats">
                                      <div class="icon"><i class="fa fa-caret-square-o-right"></i>
                                      </div>
                                      <div class="count">179</div>

                                      <h3>New Sign ups</h3>
                                      <p>Lorem ipsum psdea itgum rixt.</p>
                                    </div>
                                </div>
                                <div class="embed-responsive embed-responsive-16by9 embed-video-youtube mb-4">
                                    <!--<iframe allow="autoplay;" allowfullscreen="" class="embed-responsive-item" width="640" height="360" src="https://www.youtube.com/embed/mHW1Hsqlp6A?enablejsapi=1&version=3&rel=0&amp;autoplay=1&amp;start=0" autoplay="1" allowfullscreen=""></iframe>-->
                                    <iframe id="video-abertura" allowfullscreen="" class="embed-responsive-item" src="https://www.youtube.com/embed/mHW1Hsqlp6A?enablejsapi=1&version=3&rel=0&amp;autoplay=1&amp;start=0" autoplay="1" allowfullscreen=""></iframe>
                                </div> 
                                <hr class="mb-4">
                            <div class="lista-de-posts panel">
                                    <!-- LISTA DE POSTES  -->
                            </div>                             
                          </div>

                          <div class="col-md-5 mt-2 _editor coluna-direita-pagina-principal"> 
                              <div class="lista-de-projetos">
                                <ul class="quick-list">
                                  <li>Cena interativa&nbsp;<span class="btn-projeto" data-toggle="modal" data-target="#projeto-exemplo"><i class="fa-solid fa-eye" data-projeto="svg_ambiente_empresa"></i></span></li>
                                  <li>Customizador de contrator&nbsp;<span class="btn-projeto" data-toggle="modal" data-target="#projeto-exemplo"><i class="fa-solid fa-eye" data-projeto="customizador_de_contratos"></i></span></li>
                                  <li>Controle de auditório&nbsp;<span class="btn-projeto" data-toggle="modal" data-target="#projeto-exemplo"><i class="fa-solid fa-eye" data-projeto="controle_auditorio"></i></span></li>
                                  <li>Simulador de empréstimo&nbsp;<span class="btn-projeto" data-toggle="modal" data-target="#projeto-exemplo"><i class="fa-solid fa-eye" data-projeto="iframe_simulador_emprestimos"></i></span></li>
                                </ul>
                              </div>
                              <div class="container-editor mostra-container-editor">                              
                              <hr class="mb-4">
                                  <form id="form-salva-post">
                                    <div class="form-group">
                                      <label class="control-label"><i class="fa fa-arrow-down"></i> Título do trecho de código</label>
                                      <!--<input type="text" class="form-control" id="post_title" required="" name="post_title"  placeholder="Título do post...">-->
                                      <input type="text" class="form-control" id="post_title" name="post_title"  placeholder="Título do post...">
                                      <input type="hidden" class="form-control" id="operation" required="" name="operation" value="save">
                                      <input type="hidden" class="form-control" id="post_id_edit" required="" name="post_id_edit" value="">
                                    </div>
                                    <textarea id="editor1" name="editor1"></textarea>
                                    <button type="submit" class="btn btn-secondary salva-texto-do-editor mt-2">Salvar</button>
                                    <button type="button" class="btn btn-light salva-post-cancelar mt-2">Cancelar</button>
                                  </form>
                              </div>
                          </div> <!-- _editor -->                          
                      </div>              
              </div>
            </div>
            <div class="row content_right_col_home">
              <div class="col-md-12 col-sm-12">  
                  <!--Add content to the page home ...-->
                        <div class="row row-general-posts">
                          <div class="col-md-12 tools mb-2">Ferramenta, busca, botões adicionar snippet</div>
                          <div class="col-md-1 left-home mt-2">
                                        <!--<button type="button" class="dashboard-load">Dashboard</button>-->



                                        <form class="form-horizontal form-label-left">                                          

                                            <div class="form-group row mt-2">

                                              <div class="col-md-9 col-sm-9 ">
                                                <div class="checkbox">
                                                  <label>
                                                    <input type="checkbox" class="flat"> css
                                                  </label>
                                                </div>
                                                <div class="checkbox">
                                                  <label>
                                                    <input type="checkbox" class="flat"> html
                                                  </label>
                                                </div>
                                                <div class="checkbox">
                                                  <label>
                                                    <input type="checkbox" class="flat"> lógica
                                                  </label>
                                                </div>
                                                <div class="checkbox">
                                                  <label>
                                                    <input type="checkbox" class="flat"> mySql
                                                  </label>
                                                </div>
                                                <div class="checkbox">
                                                  <label>
                                                    <input type="checkbox" class="flat"> js
                                                  </label>
                                                </div>
                                              </div>
                                            </div>


                                            <!--<div class="ln_solid"></div>-->

                                        </form>















                          <span class="btn-secondary button-4 btn-cadastro-de-tipo-janela-cadastro-de-trilhas" data-toggle="modal" data-target="#modal_cadastro_de_snippet_add">Add</span>

                          </div>
                          <div class="col-md-4 center-home mt-3">
                          </div>
                          <div class="col-md-7 right-home mt-3">
                                      <div id="snippet_categoria" style="display: none;"></div>
                                <!--<form id="form-salva-snippet" style="display: none">
                                    <div class="form-group">
                                      <label class="control-label"><i class="fa fa-arrow-down"></i> Título do snippet &nbsp;&nbsp;&nbsp;<i class="fa-solid fa-code"></i></label>
                                      <input type="text" class="form-control" id="snippet_title" required="" name="snippet_title"  placeholder="Título do snippet...">
                                    </div>
                                    <div class="form-group">
                                      <label for="snippet_categoria" class="form-label control-label"><i class="fa fa-arrow-down"></i> Categoria do snippet</label>
                                      <select class="form-select form-control" id="snippet_categoria" required="" name="snippet_categoria">                            
                                      </select>
                                    </div>
                                    <textarea name="editor2"></textarea>
                                    <button type="submit" class="btn btn-secondary salva-texto-do-editor-snippet mt-2">Salvar</button>
                                </form>-->                 


                          </div>
                          <div class="add-post-snippet-right">
                              <form id="form-add-snippet-right-home" class="form-horizontal form-label-left">
                                        <div class="form-group">
                                          <label class="control-label"><i class="fa fa-arrow-down"></i> Adiciona post &nbsp;&nbsp;&nbsp;<i class="fa-solid fa-code"></i></label>
                                          <!--<input type="text" class="form-control" id="snippet_title_add" required="" name="snippet_title_add"  placeholder="Título do post...">-->
                                        </div>
                                        <!--<div class="form-group">
                                          <label for="snippet_categoria_add_right" class="form-label control-label"><i class="fa fa-arrow-down"></i> Categoria do snippet</label>
                                          <select class="form-select form-control" id="snippet_categoria_add_right" required="" name="snippet_categoria_add_right">                            
                                          </select>
                                        </div>-->
                                        <textarea name="editor3"></textarea>
                                        <button type="submit" class="btn btn-secondary salva-add-snippet-right-home mt-2">Salvar post do Snippet</button>                
                              </form>                           
                          </div>
                        </div>
              </div>
            </div>
          </div> <!-- classX -->
        </div> <!-- right_col -->



        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>


        <!-- Modal -->
        <!--<div class="modal fade" id="modal_cadastro_de_snippet_add" tabindex="-1" role="dialog" aria-labelledby="modal_cadastro_de_snippet_addLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="modal_cadastro_de_snippet_addLabel"><i class="fa-solid fa-user-plus"></i> SNIPPET <small>Cadastrar</small></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form class="form-salva-snippe_add form-horizontal form-label-left">
                        <div class="form-group row">
                          <label for="snippet_categoria_add" class="form-label control-label"><i class="fa fa-arrow-down"></i> Categoria do snippet</label>
                          <select class="form-select form-control" id="snippet_categoria_add" required="" name="snippet_categoria_add">                            
                          </select>
                        </div>
                        <div class="form-group">
                          <label class="control-label"><i class="fa fa-arrow-down"></i> Título do snippet &nbsp;&nbsp;&nbsp;<i class="fa-solid fa-code"></i></label>
                          <input type="text" class="form-control" id="snippet_title_add" required="" name="snippet_title_add"  placeholder="Título do snippet...">
                        </div>                      
                        <div class="ln_solid"></div>
                        <div class="form-group">
                          <div class="col-md-9 col-sm-9">
                          </div>
                          <div class="col-md-2 col-sm-2">
                            <div class="categoria-save-message text-success"></div>
                          </div>
                        </div> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros-tipo" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-secondary btn-salvar btn-salvar-tipo submit" style="pointer-events: none" disabled>Salvar</button>
                </div>                  
            </form> 
            </div>
            </div>
        </div>-->





        <!-- Modal -->
        <div class="modal fade" id="modal_cadastro_de_snippet_add" tabindex="-1" role="dialog" aria-labelledby="modal_cadastro_de_snippet_addLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="modal_cadastro_de_snippet_addLabel"><i class="fa-solid fa-user-plus"></i> SNIPPET <small>Cadastrar</small></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                    <form id="form-salva-snippet-add" class="form-horizontal form-label-left">
                                    <div class="form-group">
                                      <label class="control-label"><i class="fa fa-arrow-down"></i> Título do snippet &nbsp;&nbsp;&nbsp;<i class="fa-solid fa-code"></i></label>
                                      <input type="text" class="form-control" id="snippet_title_add" required="" name="snippet_title_add"  placeholder="Título do snippet...">
                                    </div>
                                    <div class="form-group">
                                      <label for="snippet_categoria_add" class="form-label control-label"><i class="fa fa-arrow-down"></i> Categoria do snippet</label>
                                      <select class="form-select form-control" id="snippet_categoria_add" required="" name="snippet_categoria_add">                            
                                      </select>
                                    </div>
                                    <textarea name="editor2"></textarea>
                    <button type="submit" class="btn btn-secondary salva-texto-do-editor-snippet mt-2">Salvar</button>                
                    </form> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros-tipo" data-dismiss="modal">Cancelar</button>
                    <!--<button type="submit" class="btn btn-secondary btn-salvar btn-salvar-tipo submit" style="pointer-events: none" disabled>Salvar</button>-->
                </div> 
            </div>
            </div>
        </div>        






        <!-- Modal -->
        <div class="modal fade" id="modal_cadastro_de_snippet_add" tabindex="-1" role="dialog" aria-labelledby="modal_cadastro_de_snippet_addLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="modal_cadastro_de_snippet_addLabel"><i class="fa-solid fa-user-plus"></i> SNIPPET <small>Cadastrar</small></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary button-4 cancela-modal-que-serve-aos-cadastros-tipo" data-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-secondary btn-salvar btn-salvar-tipo submit" style="pointer-events: none" disabled>Salvar</button>
                </div>                  
            </form> 
            </div>
            </div>
        </div>  
        
        












































    

    <!-- jQuery -->
    <script src="../vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="../vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="../vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="../vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="../vendors/iCheck/icheck.min.js"></script>   
    <!-- mask input -->
    <script src="../vendors/jquery.inputmask/dist/min/jquery.inputmask.bundle.min.js"></script>
    
    <script src="../vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
    <script src="../vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
    <script src="../vendors/google-code-prettify/src/prettify.js"></script>


    <!-- Include the Ckeditor 4 -->
    <script src="ckeditor/plugins/codesnippet/lib/highlight/highlight.pack.js"></script>
    <script src="ckeditor/ckeditor.js"></script>

    <!-- Custom Theme Scripts -->
    <!--<script src="../build/js/custom.min.js"></script>-->
    <script src="../build/js/custom.js"></script>
    <script src="script_plataforma.js"></script>


      <script>   
        $(document).ready(function(){

            /*CKEDITOR.replace('editor1', {
                  extraPlugins: 'editorplaceholder',
                  editorplaceholder: 'Start typing here...',
                  removeButtons: 'PasteFromWord'
            });*/

            CKEDITOR.replace('editor2', {
                  extraPlugins: 'editorplaceholder',
                  editorplaceholder: 'Start typing here...',
                  removeButtons: 'PasteFromWord'
            });

            CKEDITOR.replace('editor3', {
                  extraPlugins: 'editorplaceholder',
                  editorplaceholder: 'Start typing here...',
                  removeButtons: 'PasteFromWord'
            });                
          // resolve conflito CKeditor4 e modal Bootstrap 4
          $.fn.modal.Constructor.prototype._enforceFocus = function(){};             
        });

             
        
  </script>

  </body>
</html>
