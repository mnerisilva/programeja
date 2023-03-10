    CKEDITOR.replace( 'editor1' );      
    CKEDITOR.replace( 'editor2' );      




    const _leftCol = document.querySelector('.left_col');
    const _rightCol = document.querySelector('.right_col');
    const _topNav = document.querySelector('.top_nav');

    const _listaVideosGeral = document.querySelector(".lista-videos-geral tbody");
    const _listaVideosAtribuidos = document.querySelector(".lista-videos-atribuidos tbody");
    const _selectIdTrilhaEscolhida = document.querySelector('#trilha_escolhida');
    const _selectIdCategoriaCadastroDeTrilha = document.querySelector('.form-cadastro-de-trilha #id_categoria');
    const _selectCategoriaCatastroDeVideo = document.querySelector('#cadastro_video #categoria');
    const _btnCarregaTrilha = document.querySelector('.btn-carrega-trilha');
    const _formFiltraTrilha = document.querySelector('.filtra-trilha');
    const _listaVideosDaTrilha = document.querySelector('.lista-videos-da-trilha tbody');
    const _iframeYoutube = document.querySelector('iframe.embed-responsive-item');
    const _videoPanel = document.querySelector('.video-panel');
    const _totalVideosGeralDoMomento = document.querySelector('.lista-videos-geral thead th:nth-child(4)');
    const _thTituloDestaTrilha = document.querySelector('.lista-videos-da-trilha thead th:nth-child(2)');
    const _totalVideosDestaTrilha = document.querySelector('.lista-videos-da-trilha thead th:nth-child(4)');
    const _tituloVideoPanelEmExecucao = document.querySelector('.video-panel .x_panel span');
    const _divMessageTrilhaSalva = document.querySelector('.trilha-save-message');
    const _btnSubmitCadastroDeTrilha = document.querySelector('.submit-cadastro-de-trilha');
    const _form_cadastro_video = document.querySelector("#cadastro_video");
    const _modalGerenciamentoTrilhasUsers = document.querySelector('#modalGerenciarTrilhasUsers .modal-body');

    const _idCategoriaTrilha = document.querySelector('#id_categoria');
    const _trilhaType = document.querySelector('#trilha_type');
    const _trilhaName = document.querySelector('#trilha_name');
    const _trilhaDescricao = document.querySelector('#trilha_descricao');
    const _trilhaNomeAmigavel = document.querySelector('#trilha_nomeamigavel');
    const _categoriaVideo = document.querySelector('#categoria')
    const _nomeVideo = document.querySelector('#nomevideo');
    const _codigoYt = document.querySelector('#codigoyt');

    const _clicaNoBotaoPaginaInicial = document.querySelector('.clica-no-botao-pagina-inicial');
    const _btnAddInsereCategoria = document.querySelector('.btn-add-insere-categoria');
    const _btnCadastroDeCategoriaJanelaCadastroDeTrilhas = document.querySelector('.btn-cadastro-de-categoria-janela-cadastro-de-trilhas');
    const _btnCadastroDeTipoJanelaCadastroDeTrilhas = document.querySelector('.btn-cadastro-de-tipo-janela-cadastro-de-trilhas');
    const _btnCadastroDeCategoriaJanelaCadastroDeVideo = document.querySelector('.btn-cadastro-de-categoria-janela-cadastro-de-video');
    const _btnCloseModalQueServeAoCadastroDeUser = document.querySelector('.close-modal-que-serve-ao-cadastro-de-user');
    const _btnCancelaModalQueServeAoCadastroDeUser = document.querySelector('.cancela-modal-que-serve-ao-cadastro-de-user');
    const _btnCancelaModalQueServeAosCadastros = document.querySelector('.cancela-modal-que-serve-aos-cadastros');
    const _btnCancelaModalQueServeAosCadastrosTipo = document.querySelector('.cancela-modal-que-serve-aos-cadastros-tipo');
    const _btnCancelarDoSalvarTrilha = document.querySelector('.btn-cancelar-do-salvar-trilha');
    const _btnCancelarDoSalvarVideo = document.querySelector('.btn-cancelar-do-salvar-video');
    const _btnInsereUser = document.querySelector('.btn-insere-user');
    const _btnSalvarUser = document.querySelector('.btn-salvar-user');
    const _btnSalvarUserEdit = document.querySelector('.btn-salvar-user-edit');
    const _btnCancelarSalvarUser = document.querySelector('.btn-cancelar-salvar-user');
    const _btnCancelarSalvarUserEdit = document.querySelector('.btn-cancelar-salvar-user-edit');
    const _btnUserCourseManager = document.querySelectorAll('.btn-insere-user');

    const _btnUserManagerEdit = document.querySelector('.user-manager-edit');

    const _divCenterHome = document.querySelector('.center-home')



    const _btnUserMessageSaved = document.querySelector('.user-message-saved');

    const _btnNaoExcluiPost = document.querySelector('.btn-nao-exclui-post');

    const _btnProjeto = document.querySelectorAll('.btn-projeto');

    const _spanPlataformaUserId = document.querySelector('.span-plataforma-user-id').textContent;

    const _btnDashboardLoad = document.querySelector('.dashboard-load');

    const _selectDaCategoriaDoSnippet = document.querySelector('#snippet_categoria');

    $('.dashboard-load').trigger("click");


    _btnDashboardLoad.addEventListener('click', function(e){ // item do menu logado no canto superior esquerdo da tela - onde tem a foto do usu??rio "minhas trilhas"
        e.preventDefault();
        _leftCol.classList.remove('esconde-left_col');
        _rightCol.classList.remove('estica-right_col');
        _topNav.classList.remove('estica-top_nav');
        document.querySelector('.profile').classList.remove('esconde_profile');
        document.querySelector('.profile').style.display = 'block';
        document.querySelector('.profile').style.opacity = 0;
        document.querySelector('.content_right_col_dashboard_user').classList.remove('esconde_content_right_col_dashboard_user');
        document.querySelector('.content_right_col_dashboard_user').style.opacity = 0;
        setTimeout(() => {
            document.querySelector('.profile').style.transition = 'opacity .6s';
            document.querySelector('.profile').style.opacity = 1;
            document.querySelector('.content_right_col_dashboard_user').style.transition = 'opacity .5s';
        document.querySelector('.content_right_col_dashboard_user').style.opacity = 1;
        }, 500);
    });
    

    const _mask = document.querySelector('.mask');


    const _formModalQueServeAosCadastros = document.querySelector('.form-modal-que-serve-aos-cadastros');
    const _formModalQueServeAosCadastrosTipo = document.querySelector('.form-modal-que-serve-aos-cadastros-tipo');
    const _formModalQueServeAoCadastroDeUser = document.querySelector('.form-modal-que-serve-ao-cadastro-de-user');
    const _formModalCadastroDeUser = document.querySelector('#form_cadastro_de_user');
    const _formModalCadastroDeUserEdit = document.querySelector('#form-modal-cadastro-de-user-edit');
    const _formModalCadastroDeCategoria = document.querySelector('#form_cadastro_de_categoria');
    const _formModalCadastroDeTipo = document.querySelector('#form_cadastro_de_tipo');
    const _formCadastroDeUserEdit = document.querySelector('#form-cadastro-de-user-edit');

    const _formSalvaPost = document.querySelector('#form-salva-post');
    const _formSalvaSnippet = document.querySelector('#form-salva-snippet');


    const _modalGerenciarAtribuidos = document.querySelector('.modal#modalGerenciarAtribuidos');




    const _xContent = document.querySelector('.x_content');
    const _xContentIframe = document.querySelector('.embed-video-youtube iframe');

    const _postIconAll = document.querySelectorAll('.post-icon');
    


    // captura elementos do editor da plataforma
    const _btnSalvaTextoDoEditor = document.querySelector('.salva-texto-do-editor');
    const _btnSalvaTextoDoEditorSnippet = document.querySelector('.salva-texto-do-editor-snippet');
    const _editorOne = document.querySelector('#editor-one');
    const _divListaDePosts = document.querySelector('.lista-de-posts');



            
            // EXECUTA "alert('modal abriu')" ASSIM QUE A MODAL FOR aberta
            $(_formModalCadastroDeUser).on('shown.bs.modal', function (event) {
                // alert('modal abriu);
            });




    const _listaTrilhasDoUser = document.querySelector('table.lista-trilhas-do-user tbody');
    const _listaTrilhasDoUserPlataforma = document.querySelector('table.lista-trilhas-do-user-plataforma tbody');

    const _listaTrilhasDisponiveisTelaUserManager = document.querySelector('.lista-trilhas-disponiveis-user-manager tbody');

    const _closeModalModalGerenciarAtribuidos = document.querySelector('#modalGerenciarAtribuidos .close span');

    let _btnFormTrilhaUser = '';

    let _userIdDoUsuario = '';
    
    let _arrayIDsTrilhasDoUser = [];

    const _userManager      = '';
    const _modalUserPhoto   = '';
    const _modalUserName    = '';

    let _idConteudoEscolhidoUserLogado = '';
    let _trilhaIdEscolhidaUserLogado = '';
    let _userIdUserLogado = ''; 

    
    
    let _statusExclusao = '9999999999';



            
        _postIconAll.forEach(function(item){
            item.addEventListener('mouseon', function(e){
                //
            });
        });
    
        _btnProjeto.forEach(function(btn){
        btn.addEventListener('click', function(e){
            let __elemento = document.createElement('object');
            __elemento.classList.add('iframe');            
            console.log('entrou na chamada da modal que exibe os projetos');
            let _data = e.target.dataset.projeto;
            let url = 'lista_de_projetos/' + _data + '/index.html';
            //let url = `https://michaelsboost.com/kodeWeave/editor/`;
            __elemento.setAttribute('type', 'text/html');
            __elemento.setAttribute('data', url);
            __elemento.setAttribute('width', "1280");
            __elemento.setAttribute('height', "720");
            const _modalBody = document.querySelector('#projeto-exemplo .modal-body');
            const _iframeObject = _modalBody.querySelector(".iframe"); 
            setTimeout(() => {          
                if (_iframeObject == null) {
                    $(_modalBody).append(__elemento);
                } else {
                    _iframeObject.remove();
                    $(_modalBody).append(__elemento);
                }                        
            }, 300);     
            
        });
    });


    let _postAExcluir = null;
    let _postDaListaASerExcluido = null;


    $('#form-confirma-exclusao-post-sim').submit(function(event){
        event.preventDefault();
        console.log('entrou no form que exclui post');
        console.log(_postAExcluir);
        excluiPost(parseInt(_postAExcluir));
        //let _postExcluido = document.querySelector('.lista-de-posts '+_postDaListaASerExcluido);
        console.log(_postDaListaASerExcluido);
        //_postExcluido.style.opacity = 0;
        //document.querySelector('.confirma-exclusao-post').textContent = 'POST EXCLU??DO!!!';
        _postDaListaASerExcluido.querySelector('.post-header').style.opacity = 0;
            document.querySelector('.confirma-exclusao-post').style.opacity = 0;
            document.querySelector('.mascara').style.opacity = 0;
            _postDaListaASerExcluido.style.opacity = 0;
            _postDaListaASerExcluido.style.height = 0;
        setTimeout(function(){
            _postDaListaASerExcluido.querySelector('.post-header').style.display = 'none';
            _postDaListaASerExcluido.style.display = 'none';
        },400)
        setTimeout(function(){
            //document.querySelector('.confirma-exclusao-post').style.display = 'none';
            document.querySelector('.confirma-exclusao-post').style.top = -60+'px';
            document.querySelector('.confirma-exclusao-post').style.left = 0;
            document.querySelector('.confirma-exclusao-post').style.opacity = 0;
            document.querySelector('.mascara').style.display = 'none';            
            document.querySelector('.main_container').style.pointerEvents = 'all';

            //listaPostsPorConteudo(id_conteudo);
        },800)        
    });


    $('#form-confirma-exclusao-post-nao').submit(function(event){
        event.preventDefault();
        console.log('entrou no form que exclui post');
        console.log(_postAExcluir);
        //let _postExcluido = document.querySelector('.lista-de-posts '+_postDaListaASerExcluido);
        console.log(_postDaListaASerExcluido);
        _postDaListaASerExcluido.querySelector('.post-tools').style.opacity = 1;
        _postDaListaASerExcluido.querySelector('.post-tools').style.pointerEvents = 'all';
        //_postExcluido.style.opacity = 0;
        //document.querySelector('.confirma-exclusao-post').textContent = 'POST EXCLU??DO!!!';
        
            //document.querySelector('.confirma-exclusao-post').style.display = 'none';
            document.querySelector('.confirma-exclusao-post').style.opacity = 0;
            document.querySelector('.confirma-exclusao-post').style.top = -60+'px';
            document.querySelector('.confirma-exclusao-post').style.left = 0; 
                document.querySelector('.mascara').style.opacity = 0;
            setTimeout(function(){  
                document.querySelector('.mascara').style.display = 'none';            
                document.querySelector('.main_container').style.pointerEvents = 'all';              
            }, 500);                
    });    


            

    // evento bot??o salvar conteudo do editor da plataforma - ou sejaa: SALVA POST
    const _btnCodeTester = document.querySelector('.linke');
    const _divCodeTester = document.querySelector('.code-tester');
    console.log(_btnCodeTester);

    setTimeout(() => {
        _btnCodeTester.addEventListener('click', function(){
            $(_divCodeTester).toggleClass('code-tester-left-0');
            console.log('entrou aqui!!!!!!!');
        });        
    }, 500);



    //_btnSalvaTextoDoEditor.addEventListener('click', function(){
    $(_formSalvaPost).submit(function(event){
        event.preventDefault();           
        Prism.highlightAll();
        let _conteudoTextareaEditor = CKEDITOR.instances.editor1.getData();
        let _postTitle = document.querySelector('#post_title').value;            
        Prism.highlightAll();
        CKEDITOR.instances.editor1.setData('');
        document.querySelector('#post_title').value = '';
        let formData = {
            id_conteudo: _idConteudoEscolhidoUserLogado,
            trilha_id: _trilhaIdEscolhidaUserLogado,
            user_id: _userIdUserLogado,
            post_title: _postTitle,
            post: _conteudoTextareaEditor
        };        
        $.ajax({
            type: "POST",
            url: "php/salva_post.php",
            data: formData,
            dataType: "json",
            encode: true,
        }).success(function (data) {  
            console.log(data[0].ultimo_id_inserido);
            _idDoUltimoPostInserido = parseInt(data[0].ultimo_id_inserido);          
            Prism.highlightAll();   
            ultimoPostInserido(_idDoUltimoPostInserido);           
            Prism.highlightAll();
        });
    });










































    // PRIMEIRO SALVA O SNIPPET COMO CONTE??DO NA TABELA CONTEUDO (usando o tipo snippet). EM SEGUIDA SALVA O POST NA TABELA POSTS E FAZ O V??NCULO ENTRE AS DUAS.


    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //_btnSalvaTextoDoEditorSnippet
        $(_formSalvaSnippet).submit(function(event){
            event.preventDefault();           
            Prism.highlightAll();
            let _conteudoTextareaEditor = CKEDITOR.instances.editor2.getData();
            let _snippetTitle = document.querySelector('#snippet_title').value;
            let _snippetIdCategoria = document.querySelector('#snippet_categoria').value;            
            _userIdUserLogado = document.querySelector('.id-usuario-logado').textContent;
            CKEDITOR.instances.editor2.setData('');
            document.querySelector('#snippet_title').value = '';
            document.querySelector('#snippet_categoria').value = '';
            povoaSelectDaCategoriaDoSnippet();
            let formData = {
                id_conteudotipo: 4,
                trilha_id: 0,
                user_id: _userIdUserLogado,
                snippet_idcategoria: _snippetIdCategoria,
                snippet_title: _snippetTitle,
                post: _conteudoTextareaEditor
            };        
            $.ajax({
                type: "POST",
                url: "php/salva_snippet.php",
                data: formData,
                dataType: "json",
                encode: true,
            }).success(function (data) {  
                console.log(data[0].ultimo_id_inserido);
                _idDoUltimoPostInserido = parseInt(data[0].ultimo_id_inserido);
                Prism.highlightAll();
                listaSnippetsNaDivCenterHome();                           
                Prism.highlightAll();
            });
        });

        /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
































                // recolhe panel-video (player) ap??s 3 segundos do carregamento da aplica????o
                const _collapse_link = document.querySelector('.video-run .collapse-link i');////////////////////
                setTimeout(() => {
                    $(_collapse_link).trigger( "click" );                  
                }, 3000);/////////////////////////


    //let _THtituloDaTrilha = '';

    let _btnVincula;

    let _dataListaDeVideosGeral     = '';
    let _dataListaDeVideosDaTrilha  = '';

    let _arrIdConteudoVideosDaTrilha = [];

    let _arrPovoaSelectFiltaTrilha = [];
    let _arrPovoaSelect = [];

    let _idDaTrilhaEscolhida = '';
    


    const _sidebarMenu = document.querySelector('#sidebar-menu .wrapper-sidebar-menu');

            
    
    povoaSelectDaCategoriaDoSnippet();

		

    montaMenuTrilhaVideosDinamicamente();


    listaSnippetsNaDivCenterHome();
    
  





    $(_formModalCadastroDeCategoria).submit(function(event){
                    event.preventDefault();
                    // console.log('clicou no button submit da modal de cadastro de categoria')
                    /*// console.log('_arrPovoaSelect: '+_arrPovoaSelectFiltaTrilha);
                    _THtituloDaTrilha = _arrPovoaSelectFiltaTrilha[_selectIdTrilhaEscolhida.value];
                    _listaVideosDaTrilha.innerHTML = '';                    
                    removeDisabledBtnAtribui(_btnVincula);
                    listaVideosDaTrilha();
                    _spanTotalVideosTrilha.style.opacity = 1;
                    _thTituloDaTrilha.style.opacity = 1;*/
                });

    $(_formModalCadastroDeTipo).submit(function(event){
                    event.preventDefault();
                    // console.log('clicou no button submit da modal de cadastro de tipo')
                    /*// console.log('_arrPovoaSelect: '+_arrPovoaSelectFiltaTrilha);
                    _THtituloDaTrilha = _arrPovoaSelectFiltaTrilha[_selectIdTrilhaEscolhida.value];
                    _listaVideosDaTrilha.innerHTML = '';                    
                    removeDisabledBtnAtribui(_btnVincula);
                    listaVideosDaTrilha();
                    _spanTotalVideosTrilha.style.opacity = 1;
                    _thTituloDaTrilha.style.opacity = 1;*/
                });                












                
    const _linkYoutube = document.querySelectorAll('.link-youtube');




function removeClassActive(nodeListLinks){
                    nodeListLinks.forEach(function(link){
                        link.parentNode.parentNode.classList.remove('active');
                        link.querySelector('i').style.color = '#212529';
                    })   

                }


function montaMenuTrilhaVideosDinamicamente() { 
                let __link = null;
                $.ajax({
                    type: "POST",
                    url: "php/monta_json_menu_categia_trilhas_videos.php",
                    dataType: "json",
                    encode: true
                }).done(function (data) {
                    console.log(data);
                    const arrEstudos = [];
                    const arrTri = [];
                    const arrCat = [];

                    let contadorVideos = 0;
                    let cat = '';
                    let tri_id = '';
                    let trilhaName = '';
                    let abrevCategoria = '';
                    let arrVideos = [];
                    let tri = '';

                    let _innerHtml = '';
                    let contador = 0;
                    for (item of data){
                        if(cat != item.abrev_categoria && tri != item.trilha_name){
                            if(contador > 0){                           
 _innerHtml = _innerHtml +              `</ul>
                                    </li>
                                </ul>
                            </div>`
                            }
                            contador = contador = 1;
_innerHtml = _innerHtml +` <h3><span class="badge badge-secondary">${item.abrev_categoria}</span> <span> <i class="fa fa-arrow-down"></i><small>trilhas</small></span></h3>`+
                            `<div class="menu_section">
                                <ul class="nav side-menu">
                                    <li class="trilha-link-menu"><a><i class="fa-solid fa-list-ul"></i><span> ${item.trilha_name} </span><span class="fa fa-chevron-down"></span></a>` +
                                        `<ul class="nav child_menu">` +
                                            `<li style="position: relative;">
                                                <a href="" data-id_conteudo="${item.id_conteudo}" data-trilha_id=${item.trilha_id} data-conteudo_codigoyoutube="${item.conteudo_codigoyoutube}" data-conteudo_descricao="${item.conteudo_descricao}">${item.conteudo_descricao}</a>
                                                <span><i class="fa-solid fa-share"></i></span>
                                            </li>`
                    
                            console.table(`|${item.abrev_categoria}   |`, `|${item.trilha_name}                 |`, `|${item.conteudo_descricao}`);
                        }
                        if(cat == item.abrev_categoria && tri != item.trilha_name){                            
 _innerHtml = _innerHtml +              `</ul>
                                    </li>
                                </ul>
                            </div>` +
                            `<div class="menu_section">
                                <ul class="nav side-menu">
                                    <li class="trilha-link-menu"><a><i class="fa-solid fa-list-ul"></i><span> ${item.trilha_name} </span><span class="fa fa-chevron-down"></span></a>` +
                                        `<ul class="nav child_menu">` +
                                            `<li style="position: relative;">
                                                <a href="" data-id_conteudo="${item.id_conteudo}" data-trilha_id=${item.trilha_id} data-conteudo_codigoyoutube="${item.conteudo_codigoyoutube}" data-conteudo_descricao="${item.conteudo_descricao}">${item.conteudo_descricao}</a>
                                                <span><i class="fa-solid fa-share"></i></span>
                                            </li>`

                            console.table(`|xxxxxxxxxxxxxxxxxx|`, `|${item.trilha_name}                 |`, `|${item.conteudo_descricao}`);
                        }
                        if(cat == item.abrev_categoria && tri == item.trilha_name){
_innerHtml = _innerHtml +                  `<li style="position: relative;">
                                                <a href="" data-id_conteudo="${item.id_conteudo}" data-trilha_id=${item.trilha_id} data-conteudo_codigoyoutube="${item.conteudo_codigoyoutube}" data-conteudo_descricao="${item.conteudo_descricao}">${item.conteudo_descricao}</a>
                                                <span><i class="fa-solid fa-share"></i></span>
                                            </li>`
                            console.table(`|xxxxxxxxxxxxxxxxxx|`, `|xxxxxxxxxxxxxxxxxxxxxxxxxxxx |`, `|${item.conteudo_descricao}`);
                        }

                        cat = item.abrev_categoria;
                        tri = item.trilha_name;
                    }

                    setTimeout(function(){
                        _sidebarMenu.innerHTML = _innerHtml;
                    }, 150);

                    
                    setTimeout(function(){
                        const _trilhaLinksMenu = document.querySelectorAll('.trilha-link-menu');
                        const _linksDosVideos = document.querySelectorAll('.trilha-link-menu ul.child_menu li');
                        console.log(_trilhaLinksMenu, typeof _trilhaLinksMenu);
                        _trilhaLinksMenu.forEach(function(item){
                            item.addEventListener('click', function(e){
                                e.preventDefault();
                                e.stopPropagation();
                                //e.target.style.height = 50+'px';
                                removeActive(_trilhaLinksMenu);
                                console.log(item);
                                item.querySelector('a').classList.add('active');
                                console.log(e.target.parentNode.parentNode.querySelector('ul'));
                                //let el = e.target.parentNode.parentNode.querySelector('ul');
                                let el = e.target.parentNode.parentNode.querySelector('ul.child_menu');
                                console.log(el);
                                el.classList.toggle('mostra');
                            });
                        });


                        _linksDosVideos.forEach(function(item){
                            item.addEventListener('click', function(e){
                                e.preventDefault();
                                e.stopPropagation();
                                removeAtivo(_linksDosVideos);
                                e.target.parentNode.classList.toggle('link-ativo');
                                e.target.parentNode.querySelector('span').style.opacity = 1;
                                e.target.parentNode.style.pointerEvents = 'none';
                                //document.querySelector('.titulo-quadro-principal').innerHTML = `<i class="fa fa-arrow-down"></i>&nbsp;Video da Trilha`;
                                let _idConteudo = e.target.dataset.id_conteudo;
                                let _conteudoDescricao = e.target.dataset.conteudo_descricao;
                                let _conteudoCodigoYoutube = e.target.dataset.conteudo_codigoyoutube;
                                _idConteudoEscolhidoUserLogado = e.target.dataset.id_conteudo;
                                _trilhaIdEscolhidaUserLogado = e.target.dataset.trilha_id;
                                _userIdUserLogado = document.querySelector('.id-usuario-logado').textContent;
                                console.log(_idConteudoEscolhidoUserLogado);
                                console.log(_trilhaIdEscolhidaUserLogado);
                                console.log(_userIdUserLogado);
                                //_xContent.querySelector('.teste').innerHTML = `<h3>${_idConteudo}</h3><h4>${_conteudoDescricao}</h4><h5>${_conteudoCodigoYoutube}</h5>`;
                                let _src = `https://www.youtube.com/embed/${_conteudoCodigoYoutube}?enablejsapi=1&version=3&playerapiid=ytplayer&showinfo=0&modestbranding=1&fs=1&rel=0`;
                                _xContentIframe.setAttribute('src', _src);
                                console.log('clicou nos links dos v??deos da trilha');
                                document.querySelector('.container-editor').style.display = 'block';
                                e.target.classList.add('ativo');
                                document.querySelector('.embed-responsive-16by9').parentNode.classList.add('ativo');
                                console.log(e.target);
                                listaPostsPorConteudo(_idConteudoEscolhidoUserLogado);
                            });
                        });                        
                    },350);


                    /*setTimeout(() => {
                        __link = document.querySelectorAll('.trilha-link-menu');
                        __link.forEach(function(_ele){
                            $(_ele).trigger('click');
                            _ele.style.height = _ele.clientHeight+'px';
                        })
                    }, 450);*/


                    
                    /*setTimeout(() => {
                        __link = document.querySelectorAll('.trilha-link-menu');
                        __link.forEach(function(_ele){
                            $(_ele).trigger('click');
                        })
                    }, 550);*/


                        //console.table(`|${item.abrev_categoria}   |`, `|${item.trilha_name}                 |`, `|${item.conteudo_descricao}`);
                        /*
                        console.table('|ccc   |', '|Css b??sico n??vel 1                 |', '|10 ideias de projetos em HTML e CSS para adicionar no portf??lio!');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|A malas sem al??a');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|APRENDA CSS EM 10 MINUTOS');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|Aprendendo o b??sico de html (web) | Web #1');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|CSS (Cascading Style Sheets) // Dicion??rio do Programador');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|CSS3: Aprenda como Funciona a Estrutura CSS');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|O QUE ?? CSS? (SELETORES, PROPRIEDADES E VALORES)');
                        console.table('|html  |', '|Html n??vel b??sico trilha 1         |', '|10 ideias de projetos em HTML e CSS para adicionar no portf??lio!');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|A malas sem al??a');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|APRENDA CSS EM 10 MINUTOS');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|Aprendendo o b??sico de html (web) | Web #1');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|Como INSERIR IMAGEM no HTML - COMPLETO!!!! Passo a Passo!');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|HTML em 7 minutos');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|HTML in 100 Seconds');                    
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|HTML o ESSENCIAL pra programa????o Front-end');                        
                        console.table('|xxxxxx|', '|Primeiro Html                      |', '|Como INSERIR IMAGEM no HTML - COMPLETO!!!! Passo a Passo!');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|HTML em 7 minutos');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|HTML in 100 Seconds');                        
                        console.table('|js    |', '|Fundamentos de Javascript I        |', '|10 ideias de projetos em HTML e CSS para adicionar no portf??lio!');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|Curso de JavaScript para iniciantes - aprenda os fundamentos de JavaScript');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|JAVASCRIPT FUNDAMENTOS - 044 - PROPRIEDADES E M??TODOS PRIVADOS');                
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|JavaScript para Iniciantes 2020 - 100% Pr??tico!');                
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|Tutorial JavaScript - fundamentos da linguagem');                        
                        console.table('|l??gica|', '|Iniciando com l??gica de programa????o|', '|Aprendendo L??gica de Programa????o');
                        console.table('|xxxxxx|', '|xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx|', '|L??gica de Programa????o - Aula 01 - Introdu????o');*/
                    //console.log(arrEstudos);
                    ///console.log(arrCat);
                    //console.log(arrTri);
                    //console.log(arrVideos);




                    /*let string = '';  
                    let stringVideos = '';  
                    const arrxxCat = [];
                    const arrxxTri = [];
                    for (item of data){
                        if(!(arrxxCat.includes(item.abrev_categoria))){
                                string = string + `<h3><span class="badge badge-secondary">${item.abrev_categoria}</span> <span> <i class="fa fa-arrow-down"></i><small>trilhas</small></span></h3>`;
                                string = string + `<div class="menu_section">`;
                                string = string + `<ul class="nav side-menu">`;
                                string = string + `<li><a><i class="fa-solid fa-list-ul"></i><span> ${item.trilha_name} </span><span class="fa fa-chevron-down"></span></a>`;    
                                string = string + `<ul class="nav child_menu">`; 
                                string = string + `<li><a href="">${item.conteudo_descricao}</a></li>`;  
                            arrxxCat.push(item.abrev_categoria);
                        } else {   
                            if(!(arrxxTri.includes(item.trilha_name))){
                                 string = string + `</ul>`; 
                                string = string + `</li>`;
                                string = string + `<div class="menu_section">`;
                                string = string + `<ul class="nav side-menu">`;
                                string = string + `<li><a><i class="fa-solid fa-list-ul"></i><span> ${item.trilha_name} </span><span class="fa fa-chevron-down"></span></a>`;    
                                string = string + `<ul class="nav child_menu">`; 
                                string = string + `<li><a href="">${item.conteudo_descricao}</a></li>`;  
                                arrxxTri.push(item.trilha_name); 
                            } else { 
                                string = string + `<li><a href="">${item.conteudo_descricao}</a></li>`; 
                             
                            }
                                
                            string = string + `</ul>`; 
                              string = string + `</li>`; 
                        }
                           
                            string = string + `</div>`;    
                    }*/
                            
                        /*console.log(arrxxCat);
                        console.log(arrxxTri);
                        console.log(string);*/

                });

}  
         
function removeActive(el){
    el.forEach(function(item){
        item.querySelector('a').classList.remove('active');
    });
}  

function removeAtivo(el){
    el.forEach(function(item){
        console.log(item);
        item.querySelector('a').parentNode.classList.remove('link-ativo');
        item.querySelector('a').parentNode.querySelector('span').style.opacity = 0;
        item.querySelector('a').parentNode.style.pointerEvents = 'all';
    });
}


function listaPostsPorConteudo(id_conteudo) { // lista POSTs do v??deo escolhido no menu lateral (dentro da trilha, ?? claro)
                var formData = {
                    id_conteudo : id_conteudo
                };    
                $.ajax({
                    type: "POST",
                    url: "php/lista_posts_por_conteudo.php",
                    data: formData,
                    dataType: "json",
                    encode: true
                }).done(function (data) { 
                    console.log(data);
                    _divListaDePosts.innerHTML = '';
                    for(post of data){
                        console.log(data);
                        console.log(post.post_dateupdate);
                        let _dateArr = post.post_dateupdate.split(" ");
                        let _postDate = _dateArr[0];
                        let _postHour = _dateArr[1];
                        let _dateDDMMAAAA = _postDate.split("-");
                        let _dia = _dateDDMMAAAA[2];
                        let _mes = _dateDDMMAAAA[1];
                        _mes = _mes.length == 1 ? `0${_mes}` : _mes;
                        let _ano = _dateDDMMAAAA[0];
                        console.log(_dateArr);
                        let str = `
                        <div class="post mb-4 p-4">
                            <div class="post-header">
                                <span class="post-date">
                                    <h3>${`<i class="fa-solid fa-calendar-days"></i>&nbsp;<span>${_dia}/${_mes}/${_ano}</span>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-clock"></i>&nbsp;<span class="hora">${_postHour}</span>`}</h3>
                                </span>
                                <span class="post-tools">
                                    <i class="fa-solid fa-pencil"></i>
                                    <i class="fa-solid fa-trash-can trash-post" data-post_id="${post.post_id}"></i>
                                </span>
                            </div>
                            <hr>
                            <div class="post-title">
                                <h3>${post.post_title}</h3>
                            </div>
                            <div class="post-content">${post.post}</div>
                            <div class="post-footer"></div>
                        </div>
                        `;  
                        $(_divListaDePosts).prepend(str);               
                        Prism.highlightAll();
                        let _heightDoPost = _divListaDePosts.querySelector('.post').offsetHeight;
                        _divListaDePosts.querySelector('.post').style.height = `${_heightDoPost}px`;
                    }
                    let _trashPost = document.querySelectorAll('.trash-post');
                    _trashPost.forEach(function(trashPostIcon){
                        setTimeout(function(){
                            trashPostIcon.parentNode.parentNode.parentNode.style.opacity = 1;
                        }, 500)
                        trashPostIcon.addEventListener('click', function(e){
                            /*e.target.parentNode.parentNode.parentNode.style.height = 0;
                            e.target.parentNode.parentNode.parentNode.querySelector('.post-header').style.height = 0;
                            e.target.parentNode.parentNode.parentNode.querySelector('.post-header').style.opacity = 0;
                            setTimeout(function(){
                                e.target.parentNode.parentNode.parentNode.style.display = 'none';
                            },
                            1200);*/


                            e.target.parentNode.style.opacity = 0;
                            e.target.parentNode.style.pointerEvents = 'none';
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("margin-top", 0);
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("pointer-events", 'all');
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("display", 'block');
                            //let postHeader = $(e.target).closest('.post-header');
                            //console.log(postHeader);
                            //let form = $(postHeader).find('form');
                            //console.log(form);
                            //form.attr('id', 'form-confirma-exclui-post');
                            let alvo = e.target;
                            let _leftTrash = `${e.target.getBoundingClientRect().left-180}px`;
                            let _topTrash = `${e.target.getBoundingClientRect().top}px`;
                            console.log(e.target.getBoundingClientRect());
                            console.log(_leftTrash);
                            console.log(_topTrash);
                            let confirm = document.querySelector('.confirma-exclusao-post');
                            confirm.style.left = _leftTrash;
                            confirm.style.top = _topTrash;
                            document.querySelector('.mascara').style.display = 'block';
                            setTimeout(function(){
                                confirm.style.opacity = 1;
                                document.querySelector('.mascara').style.opacity = 1;
                                document.querySelector('.main_container').style.pointerEvents = 'none';
                            },400)
                            //document.querySelector('.confirma-exclusao-post').style.top = _topTrash;
                            //document.querySelector('.confirma-exclusao-post').style.left = _leftTrash;
                            //let x = e.target.parentNode;
                            //console.log(x);
                            //let y = x.parentNode;
                            //console.log(y);
                            //let popupConfirma = criaElementoPopupConfirmaExclusaoPost();
                            //console.log(popupConfirma);
                            //$(y).prepend(popupConfirma);
                            //y.querySelector('.confirma-exclusao-post').classList.add('marginTop');
                            //setTimeout(function(){                     
                            //}, 500)
                            //let postHeader = post.find('.post-header');
                            //console.log(postHeader);
                            //postHeader.appendChild(criaElementoPopupConfirmaExclusaoPost());
                            _postAExcluir = e.target.dataset.post_id;
                            _postDaListaASerExcluido = e.target.parentNode.parentNode.parentNode;
                            console.log(_postDaListaASerExcluido);

                        });
                    });
                })

            } 


function ultimoPostInserido(idDoUltimoPostInserido) { // lista POSTs do v??deo escolhido no menu lateral (dentro da trilha, ?? claro)
                var formData = {
                    post_id : idDoUltimoPostInserido
                };    
                $.ajax({
                    type: "POST",
                    url: "php/lista_ultimo_post_inserido.php",
                    data: formData,
                    dataType: "json",
                    encode: true
                }).done(function (data) { 
                    console.log(data);
                    //_divListaDePosts.innerHTML = '';
                    for(post of data){
                        console.log(data);
                        console.log(post.post_dateupdate);
                        let _dateArr = post.post_dateupdate.split(" ");
                        let _postDate = _dateArr[0];
                        let _postHour = _dateArr[1];
                        let _dateDDMMAAAA = _postDate.split("-");
                        let _dia = _dateDDMMAAAA[2];
                        let _mes = _dateDDMMAAAA[1];
                        _mes = _mes.length == 1 ? `0${_mes}` : _mes;
                        let _ano = _dateDDMM
                        let str = `
                        <div class="post mb-4 p-4">
                            <div class="post-header">
                                <span class="post-date">
                                    <h3>${`<i class="fa-solid fa-calendar-days"></i>&nbsp;<span>${_dia}/${_mes}/${_ano}</span>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-clock"></i>&nbsp;<span class="hora">${_postHour}</span>`}</h3>
                                </span>
                                <span class="post-tools">
                                    <i class="fa-solid fa-pencil"></i>
                                    <i class="fa-solid fa-trash-can trash-post" data-post_id="${post.post_id}"></i>
                                </span>
                            </div>
                            <hr>
                            <div class="post-title">
                                <h3>${post.post_title}</h3>
                            </div>
                            <div class="post-content">${post.post}</div>
                            <div class="post-footer"></div>
                        </div>
                        `;AAAA[0];
                        console.log(_dateArr);  
                        $(_divListaDePosts).prepend(str);               
                        Prism.highlightAll();
                        let _heightDoPost = _divListaDePosts.querySelector('.post').offsetHeight;
                        _divListaDePosts.querySelector('.post').style.height = `${_heightDoPost}px`;
                    }
                    let _trashPost = document.querySelectorAll('.trash-post');
                    _trashPost.forEach(function(trashPostIcon){
                        setTimeout(function(){
                            trashPostIcon.parentNode.parentNode.parentNode.style.opacity = 1;
                        }, 500)
                        trashPostIcon.addEventListener('click', function(e){
                            e.target.parentNode.style.opacity = 0;
                            e.target.parentNode.style.pointerEvents = 'none';
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("margin-top", 0);
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("pointer-events", 'all');
                            $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("display", 'block');
                            let alvo = e.target;
                            let _leftTrash = `${e.target.getBoundingClientRect().left-180}px`;
                            let _topTrash = `${e.target.getBoundingClientRect().top}px`;
                            console.log(e.target.getBoundingClientRect());
                            console.log(_leftTrash);
                            console.log(_topTrash);
                            let confirm = document.querySelector('.confirma-exclusao-post');
                            confirm.style.left = _leftTrash;
                            confirm.style.top = _topTrash;
                            document.querySelector('.mascara').style.display = 'block';
                            setTimeout(function(){
                                confirm.style.opacity = 1;
                                document.querySelector('.mascara').style.opacity = 1;
                                document.querySelector('.main_container').style.pointerEvents = 'none';
                            },400);
                            _postAExcluir = e.target.dataset.post_id;
                            _postDaListaASerExcluido = e.target.parentNode.parentNode.parentNode;
                            console.log(_postDaListaASerExcluido);

                        });
                    });
                })

            } 

      



function excluiPost(post_id){
        var formData = {
            post_id: post_id
        };    
        $.ajax({
            type: "POST",
            url: "php/exclui_post.php",
            data: formData,
            dataType: "json",
            encode: true,
        }).done(function (data) {
        });

}












function povoaSelectDaCategoriaDoSnippet(){ // chamado quando a aplica????o inicia
    // console.log(_selectCategoriaCatastroDeVideo.innerHTML);
    _selectDaCategoriaDoSnippet.innerHTML = '';
    $.ajax({
        // inicio do c??digo ajax listagem inicial - lista users
        type: "POST",
        url: "php/lista_categoria.php",
        dataType: "json",
        encode: true,
    }).done(function (data) {
        //console.log(data);
        
        //_listaVideosDaTrilha.innerHTML = '';
        const _optionVazio = document.createElement('option');        
        _optionVazio.value = "";
        _optionVazio.textContent = " ...";
        _selectDaCategoriaDoSnippet.appendChild(_optionVazio);

        for (categoria of data){
            let _option = document.createElement('option');
            _option.value = categoria.id_categoria;
            //console.log(_option);
            _option.textContent = categoria.abrev_categoria;
            _selectDaCategoriaDoSnippet.appendChild(_option);
            _arrPovoaSelect[categoria.id_categoria] = categoria.abrev_categoria;
        }
        _arrPovoaSelect = [];
        //console.log(_arrPovoaSelect);
    });
} 











function listaSnippetsNaDivCenterHome(){ 
                let str = `<form id="form-listed-snippet-link">
                           <input type="hidden" id="snippet_id_userlogado" name="snippet_id_userlogado" />
                           <input type="hidden" id="snippet_id_conteudo" name="snippet_id_conteudo" />
                           <div col-md-12>
                          `
                          ;
                _divCenterHome.innerHTML = '';
                console.log('entrei dentro de listaPostsNaDivCenterHome');
                $.ajax({
                    type: "POST",
                    url: "php/lista_snippets_da_center_home.php",
                    dataType: "json",
                    encode: true,
                }).done(function (data) { 
                    console.log('posts da div center home');
                    console.log(data);
                    for(post of data){

                        /*let _postDate = post.post_dateupdate;
                        let _p1 = _postDate.split(' ');
                        let date = _p1[0];
                        date = date.split('-');
                        let dia = date[2];
                        let mes = date[1];
                        let ano = date[0];
                        let hora = _p1[1];
                        hora = hora.substring(0, hora.length-3);*/

                        
                        str = str + `   
                                            
                                            
                                            <button type="submit" class="snippet-listed-link btn btn-light" data-snippet_id_userlogado="${post.id_userlogado}" data-snippet_id_conteudo="${post.id_conteudo}" data-snippet_id_conteudotipo="${post.id_conteudotipo}" data-snippet_id_categoria="${post.id_categoria}" data-snippet_abrev_categoria="${post.abrev_categoria}">
                                                <div class="animated flipInY shadow-smooth col-lg-4 col-md-4 col-sm-4" style="background-color: inherit;">
                                                    <div class="tile-stats">
                                                        <div class="post-header">
                                                            <div class="top">
                                                                <div class="left">
                                                                    <!--<i class="fa-solid fa-calendar-days"></i>
                                                                    &nbsp;&nbsp;
                                                                    <span class="post-date">99/99/9999</span>
                                                                    &nbsp;&nbsp;|&nbsp;&nbsp;
                                                                    <span class="post-hour">00:00</span>-->
                                                                </div>
                                                                <div class="right">
                                                                    <span class="post-icon" data-categoria_name="${post.abrev_categoria}">${post.icon_categoria}</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="post-title">
                                                            <h2>${post.post_title}</h2>
                                                        </div>
                                                    </div>
                                                </div>
                                            </button>
                                            
                                    `;
                                        
                    }
                    str = str + '</div></form>';
                    
                    $(_divCenterHome).append(str);


                    const _btnSnippetListedLink = document.querySelectorAll('.snippet-listed-link');
                    const _formListedSnippetLink = document.querySelector('#form-listed-snippet-link');

                    _btnSnippetListedLink.forEach(function(item){
                        item.addEventListener('mouseover', function(e){
                            e.stopPropagation();
                            console.log(e.target.dataset.snippet_id_conteudo);
                            _formListedSnippetLink.querySelector('#snippet_id_userlogado').value = e.target.dataset.snippet_id_userlogado;
                            _formListedSnippetLink.querySelector('#snippet_id_conteudo').value = e.target.dataset.snippet_id_conteudo;

                        })
                    });


                    
                        $(_formListedSnippetLink).submit( function(e) {
                            console.log(e.target);
                            e.preventDefault();
                            e.stopPropagation();
                            let snippet_id_userlogado   = e.target.parentNode.querySelector('#snippet_id_userlogado').value;
                            let snippet_id_conteudo     = e.target.parentNode.querySelector('#snippet_id_conteudo').value;
                            //let snippet_id_conteudotipo = e.target.dataset.snippet_id_conteudotipo;
                            //let snippet_id_categoria    = e.target.dataset.snippet_id_categoria;
                            //let snippet_abrev_categoria = e.target.dataset.snippet_abrev_categoriao;
                            console.log('clicou no snippet');
                            console.log(e.target);
                            console.log(snippet_id_userlogado);
                            console.log(snippet_id_conteudo);
                            var formData = {
                                id_userlogado : snippet_id_userlogado,
                                id_conteudo : snippet_id_conteudo
                            };    
                            $.ajax({
                                type: "POST",
                                url: "php/lista_posts_do_snippet.php",
                                data: formData,
                                dataType: "json",
                                encode: true
                            }).done(function (data) {
                                console.log(data);
                                console.log('foi l?? no php');
                                listaPostsPorSnippet(snippet_id_conteudo);
                            });


                        });
                                      

                })

            }
   



            
function listaPostsPorSnippet(id_conteudo) { // lista POSTs do v??deo escolhido no menu lateral (dentro da trilha, ?? claro)
    var formData = {
        id_conteudo : id_conteudo
    };    
    $.ajax({
        type: "POST",
        url: "php/lista_posts_por_conteudo.php",
        data: formData,
        dataType: "json",
        encode: true
    }).done(function (data) { 
        console.log(data);
        _divListaDePosts.innerHTML = '';
        for(post of data){
            console.log(data);
            console.log(post.post_dateupdate);
            let _dateArr = post.post_dateupdate.split(" ");
            let _postDate = _dateArr[0];
            let _postHour = _dateArr[1];
            let _dateDDMMAAAA = _postDate.split("-");
            let _dia = _dateDDMMAAAA[2];
            let _mes = _dateDDMMAAAA[1];
            _mes = _mes.length == 1 ? `0${_mes}` : _mes;
            let _ano = _dateDDMMAAAA[0];
            console.log(_dateArr);
            let str = `
            <div class="post mb-4 p-4">
                <div class="post-header">
                    <span class="post-date">
                        <h3>${`<i class="fa-solid fa-calendar-days"></i>&nbsp;<span>${_dia}/${_mes}/${_ano}</span>&nbsp;&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-clock"></i>&nbsp;<span class="hora">${_postHour}</span>`}</h3>
                    </span>
                    <span class="post-tools">
                        <i class="fa-solid fa-pencil"></i>
                        <i class="fa-solid fa-trash-can trash-post" data-post_id="${post.post_id}"></i>
                    </span>
                </div>
                <hr>
                <div class="post-title">
                    <h3>${post.post_title}</h3>
                </div>
                <div class="post-content">${post.post}</div>
                <div class="post-footer"></div>
            </div>
            `;  
            $(_divCenterHome).append(str);               
            Prism.highlightAll();
            //let _heightDoPost = _divListaDePosts.querySelector('.post').offsetHeight;
            //_divListaDePosts.querySelector('.post').style.height = `${_heightDoPost}px`;
        }
        let _trashPost = document.querySelectorAll('.trash-post');
        _trashPost.forEach(function(trashPostIcon){
            setTimeout(function(){
                trashPostIcon.parentNode.parentNode.parentNode.style.opacity = 1;
            }, 500)
            trashPostIcon.addEventListener('click', function(e){
                /*e.target.parentNode.parentNode.parentNode.style.height = 0;
                e.target.parentNode.parentNode.parentNode.querySelector('.post-header').style.height = 0;
                e.target.parentNode.parentNode.parentNode.querySelector('.post-header').style.opacity = 0;
                setTimeout(function(){
                    e.target.parentNode.parentNode.parentNode.style.display = 'none';
                },
                1200);*/


                e.target.parentNode.style.opacity = 0;
                e.target.parentNode.style.pointerEvents = 'none';
                $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("margin-top", 0);
                $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("pointer-events", 'all');
                $(e.target).closest('.post-header').find('.confirma-exclusao-post').css("display", 'block');
                //let postHeader = $(e.target).closest('.post-header');
                //console.log(postHeader);
                //let form = $(postHeader).find('form');
                //console.log(form);
                //form.attr('id', 'form-confirma-exclui-post');
                let alvo = e.target;
                let _leftTrash = `${e.target.getBoundingClientRect().left-180}px`;
                let _topTrash = `${e.target.getBoundingClientRect().top}px`;
                console.log(e.target.getBoundingClientRect());
                console.log(_leftTrash);
                console.log(_topTrash);
                let confirm = document.querySelector('.confirma-exclusao-post');
                confirm.style.left = _leftTrash;
                confirm.style.top = _topTrash;
                document.querySelector('.mascara').style.display = 'block';
                setTimeout(function(){
                    confirm.style.opacity = 1;
                    document.querySelector('.mascara').style.opacity = 1;
                    document.querySelector('.main_container').style.pointerEvents = 'none';
                },400)
                //document.querySelector('.confirma-exclusao-post').style.top = _topTrash;
                //document.querySelector('.confirma-exclusao-post').style.left = _leftTrash;
                //let x = e.target.parentNode;
                //console.log(x);
                //let y = x.parentNode;
                //console.log(y);
                //let popupConfirma = criaElementoPopupConfirmaExclusaoPost();
                //console.log(popupConfirma);
                //$(y).prepend(popupConfirma);
                //y.querySelector('.confirma-exclusao-post').classList.add('marginTop');
                //setTimeout(function(){                     
                //}, 500)
                //let postHeader = post.find('.post-header');
                //console.log(postHeader);
                //postHeader.appendChild(criaElementoPopupConfirmaExclusaoPost());
                _postAExcluir = e.target.dataset.post_id;
                _postDaListaASerExcluido = e.target.parentNode.parentNode.parentNode;
                console.log(_postDaListaASerExcluido);

            });
        });
    })

} 
