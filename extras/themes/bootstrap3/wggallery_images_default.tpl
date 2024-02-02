<{include file='db:wggallery_header.tpl'}>

<div class='panel panel-<{$panel_type|default:''}>'>
	<{if $showlist|default:''}>
        <div class='panel-heading wgg-imgindex-header'><{$smarty.const._CO_WGGALLERY_IMAGES_TITLE}> <{$alb_name}></div>
        <div class=' panel-body'>
            <{if $images|default:''}>
                <{foreach item=image from=$images}>
                    <div id='imglist_<{$image.id}>' class='row wgg-img-panel wgg-image-list'>
                        <div class='wgg-img-panel-row col-sm-8'>
                            <{if $image.medium|default:''}>
                                <div class='center'><img id='image_<{$image.id}>' class='img-responsive wgg-img' src='<{$image.medium}>#<{$random}>' alt='<{$image.title}>'></div>
                            <{/if}>
                        </div>
                        <div class='wgg-img-panel-row col-sm-4'>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>photos.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>'><{$image.title}>
                            <{if $image.desc|default:''}><{$image.desc}><{/if}>
                            </p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>size.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.size}> kb</p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>dimension.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.resx}>px / <{$image.resy}>px</p>
                            <{if $img_allowdownload|default:''}>
                                <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>download.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>'><{$image.downloads}></p>
                            <{/if}>
							<{if $show_rating|default:''}>
                                <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.ratinglikes}> (<{$image.votes}> <{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}>)</p>
							<{/if}>
							<{if $permAlbumEdit|default:''}>
								<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>state<{$image.state}>.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>'><{$image.state_text}></p>
                            <{/if}>
							<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>date.png' alt='<{$smarty.const._CO_WGGALLERY_DATE}>' title='<{$smarty.const._CO_WGGALLERY_DATE}>'><{$image.date}></p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>views.png' alt='<{$smarty.const._CO_WGGALLERY_VIEWS}>' title='<{$smarty.const._CO_WGGALLERY_VIEWS}>'><{$image.views}></p>
                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>submitter.png' alt='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>' title='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>'><{$image.submitter}></p>
                            <{if $use_categories|default:'' && $image.cats_list|default:''}>
								<p class='wgg-cats'><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>categories.png' alt='<{$smarty.const._CO_WGGALLERY_CATS}>' title='<{$smarty.const._CO_WGGALLERY_CATS}>'><{$image.cats_list}></p>
                            <{/if}>
                            <{if $use_tags|default:'' && $image.tags|default:''}>
								<p class='wgg-tags'><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>tags.png' alt='<{$smarty.const._CO_WGGALLERY_TAGS}>' title='<{$smarty.const._CO_WGGALLERY_TAGS}>'><{$image.tags}></p>
                            <{/if}>
                            <{if $image.com_show|default:''}>
								<p class='wgg-comcount'><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>comments.png' alt='<{$smarty.const._CO_WGGALLERY_COMMENTS}>' title='<{$smarty.const._CO_WGGALLERY_COMMENTS}>'><{$image.com_count_text}></p>
                            <{/if}>
                            <{if $rating|default:0 > 0}>
                                <{if $rating_5stars|default:'' || $rating_10stars|default:'' || $rating_10num|default:''}>
                                    <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.rating.shorttext}></p>
                                <{/if}>
                                <{if $rating_likes|default:''}>
                                    <p>
                                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>like.png' alt='<{$smarty.const._MA_WGGALLERY_RATING_LIKE}>' title='<{$smarty.const._MA_WGGALLERY_RATING_LIKE}>'>(<{$image.rating.likes}>)
                                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>dislike.png' alt='<{$smarty.const._MA_WGGALLERY_RATING_DISLIKE}>' title='<{$smarty.const._MA_WGGALLERY_RATING_DISLIKE}>'> (<{$image.rating.dislikes}>)    
                                    </p>
                                <{/if}>
                            <{/if}>
                            <{if $show_exif|default:''}>
								<p class='wgg-comcount'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>exif.png' alt='<{$smarty.const._CO_WGGALLERY_EXIF}>' title='<{$smarty.const._CO_WGGALLERY_EXIF}>'>
                                    <{if $image.exif|default:''}><img src="<{$wggallery_icon_url_16}>on.png" alt="_YES"><{else}><img src="<{$wggallery_icon_url_16}>0.png" alt="_NO"><{/if}>
                                </p>
                            <{/if}>
                        </div>
                        <div class='wgg-img-panel-row col-sm-12 center'>
                            <{if $showModal|default:''}>
                                <a href='' id='btnModal<{$image.id}>' class='btn btn-default wgg-btn' data-toggle='modal' data-target='#myModalImagePicker<{$image.id}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>show.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}><{/if}></a>
                            <{else}>
                                <a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/images.php?op=show&amp;redir=list&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>' target='<{$image_target}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>show.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGE_SHOW}><{/if}></a>
                            <{/if}>
                            <{if $permAlbumEdit|default:''}>
                                <a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/images.php?op=edit&amp;img_id=<{$image.id}>' title='<{$smarty.const._EDIT}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>edit.png' alt='<{$smarty.const._EDIT}>'><{if $displayButtonText|default:false}><{$smarty.const._EDIT}><{/if}></a>
                                <a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;alb_pid=<{$alb_pid}>' title='<{$smarty.const._DELETE}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>delete.png' alt='<{$smarty.const._DELETE}>'><{if $displayButtonText|default:false}><{$smarty.const._DELETE}><{/if}></a>
                                <a class='btn btn-default wgg-btn' href='images.php?op=rotate&amp;dir=left&amp;img_id=<{$image.id}>&amp;alb_id=<{$alb_id}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_LEFT}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rotate_left.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_LEFT}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_LEFT}><{/if}></a>
                                <a class='btn btn-default wgg-btn' href='images.php?op=rotate&amp;dir=right&amp;img_id=<{$image.id}>&amp;alb_id=<{$alb_id}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_RIGHT}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rotate_right.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_RIGHT}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGE_ROTATE_RIGHT}><{/if}></a>
                            <{/if}>
                            <{if $img_allowdownload|default:''}>
                                <a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/download.php?op=default&amp;img_id=<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
                                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>download.png' alt='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_DOWNLOAD}><{/if}></a>
                            <{/if}>
                        </div>
                    </div>
                <{/foreach}>
            <{elseif $showlist|default:''}>
                <div class=''>
                    <div class='errorMsg'><strong><{$smarty.const._CO_WGGALLERY_THEREARENT_IMAGES}></strong></div>
                </div>
            <{/if}>
            <div class='clear'>&nbsp;</div>
            <div class='wgg-goback'>
                <a class='btn btn-default wgg-btn' href='<{if $ref}><{$ref}><{else}>index<{/if}>.php?op=list&amp;alb_id=<{$alb_id}>&amp;alb_pid=<{$alb_pid}>#album_<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}></a>
                <{if $permAlbumEdit|default:''}>
                    <a class='btn btn-default wgg-btn' href='albums.php?op=edit&amp;alb_id=<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}>'>
                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>edit.png' alt='<{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_ALBUM_EDIT}><{/if}></a>
                    <a class='btn btn-default wgg-btn' href='images.php?op=manage&amp;alb_id=<{$alb_id}>&amp;redir=list' title='<{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}>'>
                        <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>images.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGE_MANAGE}><{/if}></a>
                    <{if $optUploader|default:''}>
                        <a class='btn btn-default wgg-btn' href='<{$optUploader}>.php?op=list&amp;alb_id=<{$alb_id}>' title='<{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}>'>
                            <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>upload.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_IMAGES_UPLOAD}><{/if}></a>
                    <{/if}>
                <{/if}>
            </div>
        </div>
        <div class='clear'>&nbsp;</div>
            <{if !empty($pagenav)}>
                <div class='xo-pagenav floatright'><{$pagenav}></div>
                <div class='clear spacer'></div>
            <{/if}>
        </div>
    <{/if}>
    <{if $showimage|default:''}>
        <div class='wgg-img-panel-row col-xs-12 col-sm-12 col-md-12 col-lg-12 center'><img class='img-responsive wgg-img' src='<{$file}>' alt='<{$image.title}>'></div>
        <div class='wgg-img-panel-row col-xs-12 col-sm-6 col-md-6 col-lg6'>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>photos.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_TITLE}>'><{$image.title}></p>
            <{if $image.desc|default:''}>
                <p class='justify'><{$image.desc}></p>
            <{/if}>
        </div>
        <div class='wgg-img-panel-row col-xs-12 col-sm-6 col-md-6 col-lg6'>          
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>size.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.size}> kb</p>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>dimension.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.resx}>px / <{$image.resy}>px</p>
            <{if $img_allowdownload|default:''}>
                <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>download.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>'><{$image.downloads}></p>
            <{/if}>
			<{if $show_rating|default:''}>
				<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.ratinglikes}> (<{$image.votes}> <{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}>)</p>
			<{/if}>
			<{if $permAlbumEdit|default:''}>
				<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>state<{$image.state}>.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>'><{$image.state_text}></p>
            <{/if}>
			<p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>date.png' alt='<{$smarty.const._CO_WGGALLERY_DATE}>' title='<{$smarty.const._CO_WGGALLERY_DATE}>'><{$image.date}></p>
            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>submitter.png' alt='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>' title='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>'><{$image.submitter}></p>
            <p class='wgg-img-exif'><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>exif.png' alt='<{$smarty.const._CO_WGGALLERY_EXIF}>' title='<{$smarty.const._CO_WGGALLERY_EXIF}>'><{$image.exif}></p>
            <{if $rating|default:''}>
                <{include file="db:wggallery_rating_img.tpl"}>
            <{/if}>
        </div>
        <div class='clear'>&nbsp;</div>
		<div class='wgg-img-panel-row col-sm-12 center'>
			<{if $showBack|default:''}>
                <a class='btn btn-default wgg-btn' href='images.php?op=<{if $redir_op|default:''}><{$redir_op}><{else}>list<{/if}>&amp;alb_id=<{$alb_id}>&amp;alb_pid=<{$alb_pid}>&amp;start=<{$start}>&amp;limit=<{$limit}>&amp;img_submitter=<{$img_submitter}>#image_<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_BACK}>'>
                    <img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>back.png' alt='<{$smarty.const._CO_WGGALLERY_BACK}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_BACK}><{/if}></a>
            <{/if}>
			<{if $permAlbumEdit|default:''}>
				<a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/images.php?op=edit&amp;img_id=<{$image.id}>' title='<{$smarty.const._EDIT}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>edit.png' alt='<{$smarty.const._EDIT}>'><{if $displayButtonText|default:false}><{$smarty.const._EDIT}><{/if}></a>
				<a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/images.php?op=delete&amp;img_id=<{$image.id}>&amp;alb_id=<{$image.albid}>&amp;alb_pid=<{$alb_pid}>' title='<{$smarty.const._DELETE}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>delete.png' alt='<{$smarty.const._DELETE}>'><{if $displayButtonText|default:false}><{$smarty.const._DELETE}><{/if}></a>
			<{/if}>
			<{if $img_allowdownload|default:''}>
				<a class='btn btn-default wgg-btn' href='<{$wggallery_url}>/download.php?op=default&amp;img_id=<{$image.id}>' title='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'>
					<img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>download.png' alt='<{$smarty.const._CO_WGGALLERY_DOWNLOAD}>'><{if $displayButtonText|default:false}><{$smarty.const._CO_WGGALLERY_DOWNLOAD}><{/if}></a>
			<{/if}>
		</div>

        <{$commentsnav|default:''}> <{$lang_notice|default:''}>
        <{*<{if $comment_mode == "flat"}> <{include file="db:system_comments_flat.tpl"}> <{elseif $comment_mode == "thread"}> <{include file="db:system_comments_thread.tpl"}> <{elseif $comment_mode == "nest"}> <{include file="db:system_comments_nest.tpl"}> <{/if}>*}>


    <{/if}>
</div>

<{if $showModal|default:''}>
    <!-- Create Modals -->
    <{foreach item=image from=$images}>
        <div class='modal fade' id='myModalImagePicker<{$image.id}>' tabindex='-1' role='dialog' aria-labelledby='myModalLabel'>
            <div class='modal-dialog wgg-modal-image' role='document'>
                <div class='modal-content wgg-modal-content'>
                    <div class='modal-header'>
                        <button type='button' class='close' data-dismiss='modal'
                                aria-label='Close'><span aria-hidden='true'>&times;</span>
                        </button>
                        <h4 class='modal-title' id='myModalLabel'><{$image.title}></h4>
                    </div>
                    <div class='modal-body'>
                        <div class="container-fluid">
                            <div class="row">
                                <{if $showModalInfo|default:''}>
                                    <div class="col-xs-12 col-sm-8 col-md-9 col-lg-9">
                                <{else}>
                                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <{/if}>
                                    <{if $image.alb_name|default:''}><h4 class='modal-title'><{$image.alb_name}></h4><{/if}>
                                    <img class='img-responsive wgg-img' src='<{$image.img_modal}>' alt='<{$image.title}>'>
                                <{if $showModalInfo|default:''}>
                                    </div>
                                    <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                                        <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>size.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.size}> kb</p>
                                        <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>dimension.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_SIZE}>'><{$image.resx}>px / <{$image.resy}>px</p>
                                        <{if $img_allowdownload|default:''}>
                                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>download.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_DOWNLOADS}>'><{$image.downloads}></p>
                                        <{/if}>
                                        <{if $show_rating|default:''}>
                                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>rate.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_RATINGLIKES}>'><{$image.ratinglikes}> (<{$image.votes}> <{$smarty.const._CO_WGGALLERY_IMAGE_VOTES}>)</p>
                                        <{/if}>
                                        <{if $permAlbumEdit|default:''}>
                                            <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>state<{$image.state}>.png' alt='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>' title='<{$smarty.const._CO_WGGALLERY_IMAGE_STATE}>'><{$image.state_text}></p>
                                        <{/if}>
                                        <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>date.png' alt='<{$smarty.const._CO_WGGALLERY_DATE}>' title='<{$smarty.const._CO_WGGALLERY_DATE}>'><{$image.date}></p>
                                        <p><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>submitter.png' alt='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>' title='<{$smarty.const._CO_WGGALLERY_SUBMITTER}>'><{$image.submitter}></p>
                                        <p class='wgg-img-exif'><img class='wgg-btn-icon' src='<{$wggallery_icon_url_16}>exif.png' alt='<{$smarty.const._CO_WGGALLERY_EXIF}>' title='<{$smarty.const._CO_WGGALLERY_EXIF}>'><{$image.exif}></p>
                                        <{if $rating|default:''}>
                                            <{include file="db:wggallery_rating_img.tpl"}>
                                        <{/if}>
                                    </div>
                                <{else}>
                                    </div>
                                <{/if}>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <{/foreach }>
    <!-- end of modals -->
<{/if}>

<{if !empty($form)}>
	<{$form}>
<{/if}>
<{if !empty($error)}>
	<div class='errorMsg'><strong><{$error}></strong></div>
<{/if}>
<{include file='db:wggallery_footer.tpl'}>
