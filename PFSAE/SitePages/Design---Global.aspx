﻿<%@ Page language="C#" Inherits="Microsoft.SharePoint.WebControls.ClientSidePage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %><%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"><head>
<!--[if gte mso 9]><SharePoint:CTFieldRefs runat=server Prefix="mso:" FieldList="FileLeafRef,ClientSideApplicationId,PageLayoutType,CanvasContent1,BannerImageUrl,BannerImageOffset,PromotedState,FirstPublishedDate,LayoutWebpartsContent,_TopicHeader,_SPSitePageFlags,_SPAssetFolderId,_SPCallToAction,_SPHiddenHighlightsMetadata"><xml>
<mso:CustomDocumentProperties>
<mso:ContentTypeId msdt:dt="string">0x0101009D1CB255DA76424F860D91F20E6C4118</mso:ContentTypeId>
<mso:PageLayoutType msdt:dt="string">Article</mso:PageLayoutType>
<mso:_SPSitePageFlags msdt:dt="string"></mso:_SPSitePageFlags>
<mso:CanvasContent1 msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;4,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;1212fc8d-dd6b-408a-8d5d-9f1cc787efbb&amp;quot;,&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;2,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-rte=&quot;&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;0,&amp;quot;pageSettingsSlice&amp;quot;&amp;#58;&amp;#123;&amp;quot;isDefaultDescription&amp;quot;&amp;#58;true,&amp;quot;isDefaultThumbnail&amp;quot;&amp;#58;true,&amp;quot;isSpellCheckEnabled&amp;quot;&amp;#58;true,&amp;quot;globalRichTextStylingVersion&amp;quot;&amp;#58;1,&amp;quot;rtePageSettings&amp;quot;&amp;#58;&amp;#123;&amp;quot;contentVersion&amp;quot;&amp;#58;5&amp;#125;,&amp;quot;isEmailReady&amp;quot;&amp;#58;false&amp;#125;&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:CanvasContent1>
<mso:ClientSideApplicationId msdt:dt="string">b6917cb1-93a0-4b97-a84d-7cf49975d4ec</mso:ClientSideApplicationId>
<mso:_TopicHeader msdt:dt="string"></mso:_TopicHeader>
<mso:BannerImageUrl msdt:dt="string">https://purdue0.sharepoint.com/_layouts/15/images/sitepagethumbnail.png, /_layouts/15/images/sitepagethumbnail.png</mso:BannerImageUrl>
<mso:LayoutWebpartsContent msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.4&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Title area&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Title area description&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;quot;/_layouts/15/images/sleektemplateimagetile.jpg&amp;quot;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;customMetadata&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;#123;&amp;#125;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSourceType&amp;quot;&amp;#58;2,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Design | Global&amp;quot;,&amp;quot;textAlignment&amp;quot;&amp;#58;&amp;quot;Left&amp;quot;,&amp;quot;showPublishDate&amp;quot;&amp;#58;false,&amp;quot;authors&amp;quot;&amp;#58;[&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;i&amp;#58;0#.f|membership|zmacnab@purdue.edu&amp;quot;,&amp;quot;upn&amp;quot;&amp;#58;&amp;quot;zmacnab@purdue.edu&amp;quot;,&amp;quot;email&amp;quot;&amp;#58;&amp;quot;zmacnab@purdue.edu&amp;quot;,&amp;quot;name&amp;quot;&amp;#58;&amp;quot;MacNab, Zachary Robert&amp;quot;,&amp;quot;role&amp;quot;&amp;#58;&amp;quot;&amp;quot;&amp;#125;],&amp;quot;showTopicHeader&amp;quot;&amp;#58;false,&amp;quot;authorByline&amp;quot;&amp;#58;[&amp;quot;i&amp;#58;0#.f|membership|zmacnab@purdue.edu&amp;quot;],&amp;quot;layoutType&amp;quot;&amp;#58;&amp;quot;CutInShape&amp;quot;,&amp;quot;topicHeader&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;enableGradientEffect&amp;quot;&amp;#58;true,&amp;quot;isDecorative&amp;quot;&amp;#58;true,&amp;quot;hasTitleBeenCommitted&amp;quot;&amp;#58;true&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false,&amp;quot;reservedHeight&amp;quot;&amp;#58;309&amp;#125;&quot;&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;1ee8960a-2fa0-4145-b9bb-e818f6cf18e7&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;1ee8960a-2fa0-4145-b9bb-e818f6cf18e7&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.0&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;hideWebPartWhenEmpty&amp;quot;&amp;#58;true,&amp;quot;isEditMode&amp;quot;&amp;#58;true,&amp;quot;isEnabled&amp;quot;&amp;#58;false,&amp;quot;layoutId&amp;quot;&amp;#58;&amp;quot;FilmStrip&amp;quot;,&amp;quot;uniqueId&amp;quot;&amp;#58;&amp;quot;6babee23-1cb1-4fca-8f45-f90a1073f806&amp;quot;,&amp;quot;dataProviderId&amp;quot;&amp;#58;&amp;quot;RecommendedItems&amp;quot;&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false,&amp;quot;reservedHeight&amp;quot;&amp;#58;332&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:LayoutWebpartsContent>
<mso:_AuthorByline msdt:dt="string">358;#i:0#.f|membership|zmacnab@purdue.edu</mso:_AuthorByline>
<mso:display_urn_x003a_schemas-microsoft-com_x003a_office_x003a_office_x0023__AuthorByline msdt:dt="string">MacNab, Zachary Robert</mso:display_urn_x003a_schemas-microsoft-com_x003a_office_x003a_office_x0023__AuthorByline>
</mso:CustomDocumentProperties>
</xml></SharePoint:CTFieldRefs><![endif]-->
<title>Design | Global</title></head>