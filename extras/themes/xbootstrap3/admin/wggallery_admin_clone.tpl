<!-- Header -->
<{include file='db:wggallery_admin_header.tpl'}>

<{if isset($form)}>
	<{$form}>
<{/if}>
<{if $result|default:''}>
    <div><{$result}></div>
<{/if}>

<!-- Footer -->
<{include file='db:wggallery_admin_footer.tpl'}>
