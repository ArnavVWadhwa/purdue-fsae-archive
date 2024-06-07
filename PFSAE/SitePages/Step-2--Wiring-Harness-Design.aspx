<%@ Page language="C#" Inherits="Microsoft.SharePoint.WebControls.ClientSidePage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %><%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"><head>
<!--[if gte mso 9]><SharePoint:CTFieldRefs runat=server Prefix="mso:" FieldList="FileLeafRef,ClientSideApplicationId,PageLayoutType,CanvasContent1,BannerImageUrl,BannerImageOffset,PromotedState,FirstPublishedDate,LayoutWebpartsContent,_TopicHeader,_SPSitePageFlags,_SPAssetFolderId,_SPCallToAction,_SPHiddenHighlightsMetadata"><xml>
<mso:CustomDocumentProperties>
<mso:ContentTypeId msdt:dt="string">0x0101009D1CB255DA76424F860D91F20E6C4118</mso:ContentTypeId>
<mso:PageLayoutType msdt:dt="string">Article</mso:PageLayoutType>
<mso:_SPSitePageFlags msdt:dt="string"></mso:_SPSitePageFlags>
<mso:CanvasContent1 msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;4,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;1212fc8d-dd6b-408a-8d5d-9f1cc787efbb&amp;quot;,&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;2,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-rte=&quot;&quot;&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;In this step, you will design and analyze the wiring harness that will be used to connect the LED to the ECU and power the system.&lt;/p&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&amp;#160;&lt;/p&gt;&lt;blockquote&gt;&lt;p style=&quot;margin-left&amp;#58;0px;text-align&amp;#58;center;&quot;&gt;&lt;strong&gt;Reading&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;p style=&quot;text-align&amp;#58;center;&quot;&gt;M1 ECU Documentation&amp;#58;&amp;#160;&lt;a href=&quot;https&amp;#58;//wiki.itap.purdue.edu/download/attachments/233839566/M1%20ECU%20Hardware.pdf?version=1&amp;amp;modificationDate=1688155530000&amp;amp;api=v2&quot;&gt;M1 ECU Hardware.pdf&lt;/a&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;p style=&quot;text-align&amp;#58;center;&quot;&gt;This document contains the information necessary to wire an M1 series ECU. While some of the I/O may not be relevant for this project, it is still a good idea to learn about eveything MoTeC ECUs have to offer.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;&lt;p style=&quot;text-align&amp;#58;center;&quot;&gt;PDM Documentation&amp;#58;&amp;#160;&lt;a href=&quot;https&amp;#58;//wiki.itap.purdue.edu/download/attachments/233839566/PDM%20User%20Manual.pdf?version=1&amp;amp;modificationDate=1688155573000&amp;amp;api=v2&quot;&gt;PDM User Manual.pdf&lt;/a&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;p style=&quot;text-align&amp;#58;center;&quot;&gt;This document contains the information necessary to wire a MoTeC PDM. Keep in mind that the purpose of the PDM is to replace the fuses and relays in a normal car and as such nearly all power will flow through it.&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;&lt;p style=&quot;text-align&amp;#58;center;&quot;&gt;RapidHarness Tutorial&amp;#58; Designing Harnesses&lt;/p&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/blockquote&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;3,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;controlType&amp;quot;&amp;#58;3,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;3f5037bf-c63e-4c9f-ba17-d4731f958b2c&amp;quot;,&amp;quot;webPartId&amp;quot;&amp;#58;&amp;quot;544dd15b-cf3c-441b-96da-004d5a8cea1d&amp;quot;,&amp;quot;reservedHeight&amp;quot;&amp;#58;698,&amp;quot;reservedWidth&amp;quot;&amp;#58;1188,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-webpart=&quot;&quot; data-sp-webpartdataversion=&quot;1.2&quot; data-sp-webpartdata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;544dd15b-cf3c-441b-96da-004d5a8cea1d&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;3f5037bf-c63e-4c9f-ba17-d4731f958b2c&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;YouTube&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Show a YouTube video on the page.&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;quot;title&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//www.youtube.com/watch?v=x5daIL7qtmM&amp;amp;amp;amp;feature=youtu.be&amp;quot;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.2&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;embedCode&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//youtu.be/x5daIL7qtmM&amp;quot;,&amp;quot;shouldScaleWidth&amp;quot;&amp;#58;true,&amp;quot;runtimeState&amp;quot;&amp;#58;&amp;#123;&amp;quot;isPrivate&amp;quot;&amp;#58;false,&amp;quot;showControls&amp;quot;&amp;#58;true&amp;#125;,&amp;quot;thumbnailUrl&amp;quot;&amp;#58;null,&amp;quot;cachedEmbedCode&amp;quot;&amp;#58;&amp;quot;&amp;lt;iframe width=200 height=113 src=https&amp;#58;//www.youtube.com/embed/x5daIL7qtmM?feature=oembed frameborder=0 allowfullscreen title=RapidHarness tutorial&amp;#58; designing harnesses aria-label=Iframe Embedded Content.&amp;gt; &amp;lt;/iframe&amp;gt;&amp;quot;,&amp;quot;cachedEmbedCodeThumbnail&amp;quot;&amp;#58;null&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false&amp;#125;&quot;&gt;&lt;div data-sp-componentid=&quot;544dd15b-cf3c-441b-96da-004d5a8cea1d&quot;&gt;&lt;/div&gt;&lt;div data-sp-htmlproperties=&quot;&quot;&gt;&lt;div data-sp-prop-name=&quot;title&quot; data-sp-searchableplaintext=&quot;true&quot;&gt;https&amp;#58;//www.youtube.com/watch?v=x5daIL7qtmM&amp;amp;amp;feature=youtu.be&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;4,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;1df12444-049b-4a10-8733-ee9a12033d0e&amp;quot;,&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;4,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-rte=&quot;&quot;&gt;&lt;blockquote&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;Required Software&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;MATLAB&amp;#58; &lt;a href=&quot;https&amp;#58;//www.mathworks.com/academia/tah-portal/purdue-university-31484706.html&quot;&gt;https&amp;#58;//www.mathworks.com/academia/tah-portal/purdue-university-31484706.html&lt;/a&gt;&lt;ul&gt;&lt;li&gt;MATLAB is used to size the wires for the harness in addition to many things for the team. If you do not have it already just use the link and sign up with your Purdue email and password.&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;RapidHarness&amp;#58; &lt;a href=&quot;https&amp;#58;//rapidharness.com/download&quot;&gt;https&amp;#58;//rapidharness.com/download&lt;/a&gt;&lt;ul&gt;&lt;li&gt;Rapidharness is the team's harness CAD sofware. The layout of the harness is created in the software and updated based on lengths taken from NX routing.&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/blockquote&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&amp;#160;&lt;/p&gt;&lt;hr /&gt;&lt;h2 style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;i&gt;Pinout Creation&lt;/i&gt;&lt;/h2&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;The first step in designing your own harness is figuring out what wires will connect to what. The best way to do this is to look at previous cars' harnesses, along with the MoTeC documentation, to determine the function of different ECU/PDM inputs and outputs.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;You can expect to use the PDM15, M130, and a 12V motorcycle battery. Make sure your system is rules compliant (hint&amp;#58; master switch).&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Once you have a general idea of how you want to operate and power your LED you can move to RapidHarness and begin trying to implement it.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;To get access to the RapidHarness account after downloading the program, message your lead with your Purdue email address and they will add you to the list. Once added you should receive an email with instructions on how to get started.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;Before you can do any wire planning first create a new harness named &lt;/strong&gt;&lt;i&gt;&lt;strong&gt;username_onboarding_PF24&lt;/strong&gt;&lt;/i&gt;&lt;strong&gt; under the PF24 onboarding folder.&lt;/strong&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;5,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;controlType&amp;quot;&amp;#58;3,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;54363e5f-978c-4431-9632-c8dd18fb1dff&amp;quot;,&amp;quot;webPartId&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;reservedHeight&amp;quot;&amp;#58;694,&amp;quot;reservedWidth&amp;quot;&amp;#58;1188,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-webpart=&quot;&quot; data-sp-webpartdataversion=&quot;1.4&quot; data-sp-webpartdata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;54363e5f-978c-4431-9632-c8dd18fb1dff&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;File and Media&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Display a document or file on your page including Word, Excel, PowerPoint, PDF, 3D models, videos, and more.&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;quot;title&amp;quot;&amp;#58;&amp;quot;PF23-Harness-Pinout&amp;quot;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;quot;serverRelativeUrl&amp;quot;&amp;#58;&amp;quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/PF23-Harness-Pinout.xlsx&amp;quot;,&amp;quot;wopiurl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/_layouts/15/Doc.aspx?sourcedoc=%7B0036CE3B-D3D7-4CA2-85F0-4AC9347CE020%7D&amp;amp;file=PF23-Harness-Pinout.xlsx&amp;amp;action=embedview&amp;amp;mobileredirect=true&amp;quot;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;annotation&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;authorName&amp;quot;&amp;#58;&amp;quot;Rumsey, Helen Nicole&amp;quot;,&amp;quot;chartitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;endrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;excelSettingsType&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;file&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/PF23-Harness-Pinout.xlsx&amp;quot;,&amp;quot;listId&amp;quot;&amp;#58;&amp;quot;8ce8aa32-75a0-4212-ace3-eaab95b70613&amp;quot;,&amp;quot;modifiedAt&amp;quot;&amp;#58;&amp;quot;2024-01-29T16&amp;#58;52&amp;#58;21Z&amp;quot;,&amp;quot;photoUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/_vti_bin/afdcache.ashx/_userprofile/userphoto.jpg?_oat_=1706627336_c37effa6da7a64fbf9c301e8943057f51314cd6030cea3d0fb68c1179eb9448c&amp;amp;P1=1706548710&amp;amp;P2=-512161566&amp;amp;P3=1&amp;amp;P4=izWpeQfhY1mH2cM4s5W%2BcAg8f3NyCW8FTjz1Aox2Qs5FfEXMDzNEI0U2MSwlVUjyS3Wrjy9zaurziJeNvTW1ihJXG7OG6RRq36GQi2lHg%2F84qt2S3X3vWPsDLs%2F5vieiaVVnfsrAZX7VjcJ%2FI2cmOhUMAijarAZrdJKE%2B2OMAE%2FmTwP7YSjny5pEKWEy8LPh94B%2F3381bCSB7HE2HCqCaPgQV3I6aUe8%2FMoR%2FkBnNUdDZ02VvqrHR2hae8u8tuRjwXZ0kbaE%2FFajdMlCtu%2Bu3ZZOqx7OENuFdvtRhpSsIWr5Qetwse%2BaTrlDcLY7P3an4DfZ19S2%2BtOx%2F23S9d9ZRA%3D%3D&amp;amp;size=S&amp;amp;accountname=hrumsey%40purdue.edu&amp;quot;,&amp;quot;rangeitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;siteId&amp;quot;&amp;#58;&amp;quot;88eae796-c58f-4527-ace0-2985ecbfceb5&amp;quot;,&amp;quot;startPage&amp;quot;&amp;#58;1,&amp;quot;startrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;tableitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;uniqueId&amp;quot;&amp;#58;&amp;quot;0036ce3b-d3d7-4ca2-85f0-4ac9347ce020&amp;quot;,&amp;quot;wdallowinteractivity&amp;quot;&amp;#58;true,&amp;quot;wdhidegridlines&amp;quot;&amp;#58;true,&amp;quot;wdhideheaders&amp;quot;&amp;#58;true,&amp;quot;webId&amp;quot;&amp;#58;&amp;quot;a54ce52b-a1d3-4d9d-99e9-fff3be30a096&amp;quot;,&amp;quot;webAbsoluteUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE&amp;quot;&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false&amp;#125;&quot;&gt;&lt;div data-sp-componentid=&quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&quot;&gt;&lt;/div&gt;&lt;div data-sp-htmlproperties=&quot;&quot;&gt;&lt;div data-sp-prop-name=&quot;title&quot; data-sp-searchableplaintext=&quot;true&quot;&gt;PF23-Harness-Pinout&lt;/div&gt;&lt;a data-sp-prop-name=&quot;serverRelativeUrl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/PF23-Harness-Pinout.xlsx&quot;&gt;&lt;/a&gt;&lt;a data-sp-prop-name=&quot;wopiurl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/_layouts/15/Doc.aspx?sourcedoc=%7b0036CE3B-D3D7-4CA2-85F0-4AC9347CE020%7d&amp;amp;file=PF23-Harness-Pinout.xlsx&amp;amp;action=embedview&amp;amp;mobileredirect=true&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;6,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;controlType&amp;quot;&amp;#58;3,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;e0553787-6833-4b3e-a293-f9cbb157bce0&amp;quot;,&amp;quot;webPartId&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;reservedHeight&amp;quot;&amp;#58;694,&amp;quot;reservedWidth&amp;quot;&amp;#58;1188,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-webpart=&quot;&quot; data-sp-webpartdataversion=&quot;1.4&quot; data-sp-webpartdata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;e0553787-6833-4b3e-a293-f9cbb157bce0&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;File and Media&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Display a document or file on your page including Word, Excel, PowerPoint, PDF, 3D models, videos, and more.&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Harness_Pinout_PF24&amp;quot;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;quot;serverRelativeUrl&amp;quot;&amp;#58;&amp;quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/Harness_Pinout_PF24.xlsx&amp;quot;,&amp;quot;wopiurl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/_layouts/15/Doc.aspx?sourcedoc=%7BF61EAFCC-9964-4D22-92DE-3A581577CECF%7D&amp;amp;file=Harness_Pinout_PF24.xlsx&amp;amp;action=embedview&amp;amp;mobileredirect=true&amp;quot;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;annotation&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;authorName&amp;quot;&amp;#58;&amp;quot;Rumsey, Helen Nicole&amp;quot;,&amp;quot;chartitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;endrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;excelSettingsType&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;file&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/Harness_Pinout_PF24.xlsx&amp;quot;,&amp;quot;listId&amp;quot;&amp;#58;&amp;quot;8ce8aa32-75a0-4212-ace3-eaab95b70613&amp;quot;,&amp;quot;modifiedAt&amp;quot;&amp;#58;&amp;quot;2024-01-29T16&amp;#58;52&amp;#58;30Z&amp;quot;,&amp;quot;photoUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/_vti_bin/afdcache.ashx/_userprofile/userphoto.jpg?_oat_=1706627336_c37effa6da7a64fbf9c301e8943057f51314cd6030cea3d0fb68c1179eb9448c&amp;amp;P1=1706548710&amp;amp;P2=-512161566&amp;amp;P3=1&amp;amp;P4=izWpeQfhY1mH2cM4s5W%2BcAg8f3NyCW8FTjz1Aox2Qs5FfEXMDzNEI0U2MSwlVUjyS3Wrjy9zaurziJeNvTW1ihJXG7OG6RRq36GQi2lHg%2F84qt2S3X3vWPsDLs%2F5vieiaVVnfsrAZX7VjcJ%2FI2cmOhUMAijarAZrdJKE%2B2OMAE%2FmTwP7YSjny5pEKWEy8LPh94B%2F3381bCSB7HE2HCqCaPgQV3I6aUe8%2FMoR%2FkBnNUdDZ02VvqrHR2hae8u8tuRjwXZ0kbaE%2FFajdMlCtu%2Bu3ZZOqx7OENuFdvtRhpSsIWr5Qetwse%2BaTrlDcLY7P3an4DfZ19S2%2BtOx%2F23S9d9ZRA%3D%3D&amp;amp;size=S&amp;amp;accountname=hrumsey%40purdue.edu&amp;quot;,&amp;quot;rangeitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;siteId&amp;quot;&amp;#58;&amp;quot;88eae796-c58f-4527-ace0-2985ecbfceb5&amp;quot;,&amp;quot;startPage&amp;quot;&amp;#58;1,&amp;quot;startrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;tableitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;uniqueId&amp;quot;&amp;#58;&amp;quot;f61eafcc-9964-4d22-92de-3a581577cecf&amp;quot;,&amp;quot;wdallowinteractivity&amp;quot;&amp;#58;true,&amp;quot;wdhidegridlines&amp;quot;&amp;#58;true,&amp;quot;wdhideheaders&amp;quot;&amp;#58;true,&amp;quot;webId&amp;quot;&amp;#58;&amp;quot;a54ce52b-a1d3-4d9d-99e9-fff3be30a096&amp;quot;,&amp;quot;webAbsoluteUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE&amp;quot;&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false&amp;#125;&quot;&gt;&lt;div data-sp-componentid=&quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&quot;&gt;&lt;/div&gt;&lt;div data-sp-htmlproperties=&quot;&quot;&gt;&lt;div data-sp-prop-name=&quot;title&quot; data-sp-searchableplaintext=&quot;true&quot;&gt;Harness_Pinout_PF24&lt;/div&gt;&lt;a data-sp-prop-name=&quot;serverRelativeUrl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/Harness_Pinout_PF24.xlsx&quot;&gt;&lt;/a&gt;&lt;a data-sp-prop-name=&quot;wopiurl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/_layouts/15/Doc.aspx?sourcedoc=%7bF61EAFCC-9964-4D22-92DE-3A581577CECF%7d&amp;amp;file=Harness_Pinout_PF24.xlsx&amp;amp;action=embedview&amp;amp;mobileredirect=true&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;4,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;9cebd48c-4dba-49a9-b836-e49a69b4f1e7&amp;quot;,&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;7,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-rte=&quot;&quot;&gt;&lt;h2 style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;i&gt;Wire Sizing Analysis&lt;/i&gt;&lt;/h2&gt;&lt;ol&gt;&lt;li&gt;&lt;strong&gt;Now it is time to find the appropriate gauge of wire to be used for the wiring harness. You may assume the routed distance from the ECU to the brake light is 3ft and that the brake light draws a maximum of 0.6A.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;A good way to decide wire gauge is to find the voltage drop across the wire. This is important for assessing sensor accuracy/error. A good baseline value to stay under is 5%, and remember that there are two wires connected to the LED.&lt;/strong&gt;&lt;/li&gt;&lt;li&gt;&lt;strong&gt;The voltage drop calculator is attached. Read through it until you understand the calculation (simple wire &#8594; resistor simplification), then size the wires for your harness and update those values in RapidHarness.&lt;/strong&gt;&lt;/li&gt;&lt;/ol&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;8,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;controlType&amp;quot;&amp;#58;3,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;7947e674-c7a1-4775-9610-c43f7524f48d&amp;quot;,&amp;quot;webPartId&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;reservedHeight&amp;quot;&amp;#58;694,&amp;quot;reservedWidth&amp;quot;&amp;#58;1188,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-webpart=&quot;&quot; data-sp-webpartdataversion=&quot;1.4&quot; data-sp-webpartdata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;7947e674-c7a1-4775-9610-c43f7524f48d&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;File and Media&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Display a document or file on your page including Word, Excel, PowerPoint, PDF, 3D models, videos, and more.&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;quot;title&amp;quot;&amp;#58;&amp;quot;VoltageDropCalculator&amp;quot;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;quot;serverRelativeUrl&amp;quot;&amp;#58;&amp;quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/VoltageDropCalculator.m&amp;quot;,&amp;quot;wopiurl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/VoltageDropCalculator.m&amp;quot;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;annotation&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;authorName&amp;quot;&amp;#58;&amp;quot;Rumsey, Helen Nicole&amp;quot;,&amp;quot;chartitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;endrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;excelSettingsType&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;file&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/VoltageDropCalculator.m&amp;quot;,&amp;quot;listId&amp;quot;&amp;#58;&amp;quot;8ce8aa32-75a0-4212-ace3-eaab95b70613&amp;quot;,&amp;quot;modifiedAt&amp;quot;&amp;#58;&amp;quot;2024-01-29T16&amp;#58;52&amp;#58;56Z&amp;quot;,&amp;quot;photoUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/_vti_bin/afdcache.ashx/_userprofile/userphoto.jpg?_oat_=1706627336_c37effa6da7a64fbf9c301e8943057f51314cd6030cea3d0fb68c1179eb9448c&amp;amp;P1=1706548710&amp;amp;P2=-512161566&amp;amp;P3=1&amp;amp;P4=izWpeQfhY1mH2cM4s5W%2BcAg8f3NyCW8FTjz1Aox2Qs5FfEXMDzNEI0U2MSwlVUjyS3Wrjy9zaurziJeNvTW1ihJXG7OG6RRq36GQi2lHg%2F84qt2S3X3vWPsDLs%2F5vieiaVVnfsrAZX7VjcJ%2FI2cmOhUMAijarAZrdJKE%2B2OMAE%2FmTwP7YSjny5pEKWEy8LPh94B%2F3381bCSB7HE2HCqCaPgQV3I6aUe8%2FMoR%2FkBnNUdDZ02VvqrHR2hae8u8tuRjwXZ0kbaE%2FFajdMlCtu%2Bu3ZZOqx7OENuFdvtRhpSsIWr5Qetwse%2BaTrlDcLY7P3an4DfZ19S2%2BtOx%2F23S9d9ZRA%3D%3D&amp;amp;size=S&amp;amp;accountname=hrumsey%40purdue.edu&amp;quot;,&amp;quot;rangeitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;siteId&amp;quot;&amp;#58;&amp;quot;88eae796-c58f-4527-ace0-2985ecbfceb5&amp;quot;,&amp;quot;startPage&amp;quot;&amp;#58;1,&amp;quot;startrange&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;tableitem&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;uniqueId&amp;quot;&amp;#58;&amp;quot;7a21ff01-f9f0-4c8c-93de-70cf26db3487&amp;quot;,&amp;quot;wdallowinteractivity&amp;quot;&amp;#58;true,&amp;quot;wdhidegridlines&amp;quot;&amp;#58;true,&amp;quot;wdhideheaders&amp;quot;&amp;#58;true,&amp;quot;webId&amp;quot;&amp;#58;&amp;quot;a54ce52b-a1d3-4d9d-99e9-fff3be30a096&amp;quot;,&amp;quot;webAbsoluteUrl&amp;quot;&amp;#58;&amp;quot;https&amp;#58;//purdue0.sharepoint.com/sites/ENGR-ME-O-FormulaSAE&amp;quot;&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false&amp;#125;&quot;&gt;&lt;div data-sp-componentid=&quot;b7dd04e1-19ce-4b24-9132-b60a1c2b910d&quot;&gt;&lt;/div&gt;&lt;div data-sp-htmlproperties=&quot;&quot;&gt;&lt;div data-sp-prop-name=&quot;title&quot; data-sp-searchableplaintext=&quot;true&quot;&gt;VoltageDropCalculator&lt;/div&gt;&lt;a data-sp-prop-name=&quot;serverRelativeUrl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/VoltageDropCalculator.m&quot;&gt;&lt;/a&gt;&lt;a data-sp-prop-name=&quot;wopiurl&quot; href=&quot;/sites/ENGR-ME-O-FormulaSAE/SiteAssets/SitePages/Step-2--Wiring-Harness-Design/VoltageDropCalculator.m&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;0,&amp;quot;pageSettingsSlice&amp;quot;&amp;#58;&amp;#123;&amp;quot;isDefaultDescription&amp;quot;&amp;#58;true,&amp;quot;isDefaultThumbnail&amp;quot;&amp;#58;true,&amp;quot;isSpellCheckEnabled&amp;quot;&amp;#58;true,&amp;quot;globalRichTextStylingVersion&amp;quot;&amp;#58;1,&amp;quot;rtePageSettings&amp;quot;&amp;#58;&amp;#123;&amp;quot;contentVersion&amp;quot;&amp;#58;5&amp;#125;,&amp;quot;isEmailReady&amp;quot;&amp;#58;false&amp;#125;&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:CanvasContent1>
<mso:ClientSideApplicationId msdt:dt="string">b6917cb1-93a0-4b97-a84d-7cf49975d4ec</mso:ClientSideApplicationId>
<mso:_TopicHeader msdt:dt="string"></mso:_TopicHeader>
<mso:BannerImageUrl msdt:dt="string">https://purdue0.sharepoint.com/_layouts/15/getpreview.ashx?path=%2Fsites%2FENGR-ME-O-FormulaSAE%2FSiteAssets%2FSitePages%2FStep-2--Wiring-Harness-Design%2FPF23-Harness-Pinout.xlsx, https://purdue0.sharepoint.com/_layouts/15/getpreview.ashx?path=%2Fsites%2FENGR-ME-O-FormulaSAE%2FSiteAssets%2FSitePages%2FStep-2--Wiring-Harness-Design%2FPF23-Harness-Pinout.xlsx</mso:BannerImageUrl>
<mso:LayoutWebpartsContent msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.4&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Title area&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Title area description&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;quot;/_layouts/15/images/sleektemplateimagetile.jpg&amp;quot;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;customMetadata&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;#123;&amp;#125;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSourceType&amp;quot;&amp;#58;2,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Step 2&amp;#58; Wiring Harness Design&amp;quot;,&amp;quot;textAlignment&amp;quot;&amp;#58;&amp;quot;Left&amp;quot;,&amp;quot;showPublishDate&amp;quot;&amp;#58;false,&amp;quot;authors&amp;quot;&amp;#58;[],&amp;quot;showTopicHeader&amp;quot;&amp;#58;false,&amp;quot;authorByline&amp;quot;&amp;#58;[],&amp;quot;layoutType&amp;quot;&amp;#58;&amp;quot;CutInShape&amp;quot;,&amp;quot;topicHeader&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;enableGradientEffect&amp;quot;&amp;#58;true,&amp;quot;isDecorative&amp;quot;&amp;#58;true&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false,&amp;quot;reservedHeight&amp;quot;&amp;#58;362&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:LayoutWebpartsContent>
<mso:_AuthorByline msdt:dt="string"></mso:_AuthorByline>
<mso:_SPAssetFolderId msdt:dt="string">137.000000000000</mso:_SPAssetFolderId>
</mso:CustomDocumentProperties>
</xml></SharePoint:CTFieldRefs><![endif]-->
<title>Step 2: Wiring Harness Design</title></head>