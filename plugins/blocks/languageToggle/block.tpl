{**
 * plugins/blocks/languageToggle/block.tpl
 *
 * Copyright (c) 2013-2014 Simon Fraser University Library
 * Copyright (c) 2003-2014 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * With contributions from:
 *  - 2014 Instituto Nacional de Investigacion y Tecnologia Agraria y Alimentaria
 *
 * Common site sidebar menu -- language toggle.
 *
 *}

{if $enableLanguageToggle}
<div class="block" id="sidebarLanguageToggle">
	{* Cambiado INIA *}
	<span class="blockTitleIdioma">{translate key="common.language"}</span>
	{foreach from=$languageToggleLocales key=langkey item=langname}
		{if $langkey == $currentLocale}
			{$langname}
		{else}
			<a href={if $languageToggleNoUser}'{$currentUrl|escape}{if strstr($currentUrl, '?')}&{else}?{/if}setLocale={$langkey}'{else}'{url page="user" op="setLocale" path=$langkey source=$smarty.server.REQUEST_URI escape=false}'{/if}>
            {$langname}</a>
		{/if}
   {/foreach}

</div>
{/if}
