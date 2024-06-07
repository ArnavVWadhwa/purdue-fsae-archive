<%@ Page language="C#" Inherits="Microsoft.SharePoint.WebControls.ClientSidePage, Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %><%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html xmlns:mso="urn:schemas-microsoft-com:office:office" xmlns:msdt="uuid:C2F41010-65B3-11d1-A29F-00AA00C14882"><head>
<!--[if gte mso 9]><SharePoint:CTFieldRefs runat=server Prefix="mso:" FieldList="FileLeafRef,ClientSideApplicationId,PageLayoutType,CanvasContent1,BannerImageUrl,BannerImageOffset,PromotedState,FirstPublishedDate,LayoutWebpartsContent,_TopicHeader,_SPSitePageFlags,_SPAssetFolderId,_SPCallToAction,_SPHiddenHighlightsMetadata"><xml>
<mso:CustomDocumentProperties>
<mso:ContentTypeId msdt:dt="string">0x0101009D1CB255DA76424F860D91F20E6C4118</mso:ContentTypeId>
<mso:PageLayoutType msdt:dt="string">Article</mso:PageLayoutType>
<mso:_SPSitePageFlags msdt:dt="string"></mso:_SPSitePageFlags>
<mso:CanvasContent1 msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;4,&amp;quot;id&amp;quot;&amp;#58;&amp;quot;1212fc8d-dd6b-408a-8d5d-9f1cc787efbb&amp;quot;,&amp;quot;position&amp;quot;&amp;#58;&amp;#123;&amp;quot;controlIndex&amp;quot;&amp;#58;2,&amp;quot;sectionIndex&amp;quot;&amp;#58;1,&amp;quot;sectionFactor&amp;quot;&amp;#58;12,&amp;quot;zoneIndex&amp;quot;&amp;#58;1,&amp;quot;layoutIndex&amp;quot;&amp;#58;1&amp;#125;,&amp;quot;addedFromPersistedData&amp;quot;&amp;#58;true&amp;#125;&quot;&gt;&lt;div data-sp-rte=&quot;&quot;&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Purpose&amp;#58;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;To teach you the basics of Java&lt;/li&gt;&lt;li&gt;To teach you the basics of STAR-CCM+ API&lt;/li&gt;&lt;li&gt;Get you familiar with the workflow you need to go through to learn STAR-CCM+ API&amp;#160;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Who is this for&amp;#58;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;People who want to be involved in the maintenance and development of fsaeSTAR&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Prerequisite&amp;#58;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Have finished the 2D airfoil project&lt;/li&gt;&lt;li&gt;Basic knowledge of Java&lt;ul&gt;&lt;li&gt;Go through YouTube tutorials if you need to learn Java&lt;/li&gt;&lt;li&gt;Bug Chenkai if you have questions&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Downloads&amp;#58;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Java IDE (Intellij is recommended, but other work too)&lt;/li&gt;&lt;li&gt;STAR-CCM+&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Learning Resources&amp;#58;&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Google&lt;/li&gt;&lt;li&gt;Trial and error&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Required Reading&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;&lt;a href=&quot;https&amp;#58;//wiki.itap.purdue.edu/pages/createpage.action?spaceKey=PFSAE&amp;amp;title=Computational+Fluid+Dynamics+%28CFD%29+and+Automation+Macros+%28fsaeSTAR%29&amp;amp;linkCreation=true&amp;amp;fromPageId=242979667&quot;&gt;&lt;u&gt;Old confluence pages&lt;/u&gt;&lt;/a&gt; (this is a link&lt;u&gt;)&lt;/u&gt;&lt;ul&gt;&lt;li&gt;Some of these are outdated, but most are still relevant&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Project Description&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;You will create a automation script to automate parameters sweeps in your 2D airfoil simulation&lt;ul&gt;&lt;li&gt;Parameters to sweep&amp;#58;&lt;ul&gt;&lt;li&gt;Freestream velocity&lt;/li&gt;&lt;li&gt;Angle of attack&lt;/li&gt;&lt;li&gt;Mesh base size&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;These number will be provided in a config file&lt;ul&gt;&lt;li&gt;An example of which is can be downloaded here&amp;#58; &lt;a href=&quot;https&amp;#58;//wiki.itap.purdue.edu/download/attachments/242979667/config.txt?version=2&amp;amp;modificationDate=1668487956000&amp;amp;api=v2&quot;&gt;config.txt&lt;/a&gt;&lt;/li&gt;&lt;li&gt;This config file means run a sweep of angle of attack of 0 to 10 degrees with 2 degrees of increment, and a sweep of base size of 50 mm to 100 mm with 10 mm increment, at all freestream of 20 m/s&lt;ul&gt;&lt;li&gt;If this config file is ran, 6*6=36 simulations should be ran&lt;/li&gt;&lt;li&gt;This file is only an example, I won't make you run 36 simulations&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;All three parameters can be either a constant, or a series in the forms shown&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;You will need to find a way to determine convergence, either through a custom convergence checker, or a STAR-CCM+ stopping criteria&lt;/li&gt;&lt;li&gt;Output&amp;#58; a csv file containing swept parameter(s), cl, and cd, and CpT plots of swept parameters&lt;ul&gt;&lt;li&gt;Note&amp;#58; remember to update references&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;This is also an exercise of trial and error and googling relevant information, no questions regarding specifics of STAR-CCM+ API will be answered&lt;ul&gt;&lt;li&gt;STAR-CCM+ API documentation pretty much does not exist&lt;/li&gt;&lt;li&gt;The only way to learn is to record macros in STAR and modify the auto generated code&lt;/li&gt;&lt;li&gt;You have to go through this process all the time (I still do this pretty much every time I write code in fsaeSTAR), that's why no questions of &amp;quot;how to do this&amp;quot; will be answered. It is a skill you need to develop to be successful at developing STAR-CCM+ macros&lt;/li&gt;&lt;li&gt;However, feel free to ask any other questions, including Java questions&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-left&amp;#58;0px;&quot;&gt;&lt;strong&gt;&lt;u&gt;Requirements&lt;/u&gt;&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;To get you guys familiar with working with classes, two classes are required&amp;#58;&lt;ul&gt;&lt;li&gt;Main class which runs the STAR-CCM+ pipeline&lt;/li&gt;&lt;li&gt;A custom config reading class&lt;ul&gt;&lt;li&gt;This class&amp;#160;&lt;u&gt;cannot&lt;/u&gt; be a static class&lt;/li&gt;&lt;li&gt;To reference the config file values, an object of this class must be used&lt;/li&gt;&lt;li&gt;This class has to contain a constructor&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;/ul&gt;&lt;/li&gt;&lt;li&gt;The only thing you are doing manually is importing geometry and renaming it to something your code can recognize, and running your code. In other words, there should be zero user interaction from the moment you clicked on run script to the moment when all the results are exported&lt;/li&gt;&lt;li&gt;&amp;#160;After you are done, a config file will be provided by Chenkai to test your script&lt;/li&gt;&lt;/ul&gt;&lt;p aria-hidden=&quot;true&quot;&gt;&amp;#160;&lt;/p&gt;&lt;/div&gt;&lt;/div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.0&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;controlType&amp;quot;&amp;#58;0,&amp;quot;pageSettingsSlice&amp;quot;&amp;#58;&amp;#123;&amp;quot;isDefaultDescription&amp;quot;&amp;#58;true,&amp;quot;isDefaultThumbnail&amp;quot;&amp;#58;true,&amp;quot;isSpellCheckEnabled&amp;quot;&amp;#58;true,&amp;quot;globalRichTextStylingVersion&amp;quot;&amp;#58;1,&amp;quot;rtePageSettings&amp;quot;&amp;#58;&amp;#123;&amp;quot;contentVersion&amp;quot;&amp;#58;5&amp;#125;,&amp;quot;isEmailReady&amp;quot;&amp;#58;false&amp;#125;&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:CanvasContent1>
<mso:ClientSideApplicationId msdt:dt="string">b6917cb1-93a0-4b97-a84d-7cf49975d4ec</mso:ClientSideApplicationId>
<mso:_TopicHeader msdt:dt="string"></mso:_TopicHeader>
<mso:BannerImageUrl msdt:dt="string">https://purdue0.sharepoint.com/_layouts/15/images/sitepagethumbnail.png, /_layouts/15/images/sitepagethumbnail.png</mso:BannerImageUrl>
<mso:LayoutWebpartsContent msdt:dt="string">&lt;div&gt;&lt;div data-sp-canvascontrol=&quot;&quot; data-sp-canvasdataversion=&quot;1.4&quot; data-sp-controldata=&quot;&amp;#123;&amp;quot;id&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;instanceId&amp;quot;&amp;#58;&amp;quot;cbe7b0a9-3504-44dd-a3a3-0e5cacd07788&amp;quot;,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;Title area&amp;quot;,&amp;quot;description&amp;quot;&amp;#58;&amp;quot;Title area description&amp;quot;,&amp;quot;audiences&amp;quot;&amp;#58;[],&amp;quot;serverProcessedContent&amp;quot;&amp;#58;&amp;#123;&amp;quot;htmlStrings&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;searchablePlainTexts&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;imageSources&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;quot;/_layouts/15/images/sleektemplateimagetile.jpg&amp;quot;&amp;#125;,&amp;quot;links&amp;quot;&amp;#58;&amp;#123;&amp;#125;,&amp;quot;customMetadata&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSource&amp;quot;&amp;#58;&amp;#123;&amp;#125;&amp;#125;&amp;#125;,&amp;quot;dataVersion&amp;quot;&amp;#58;&amp;quot;1.4&amp;quot;,&amp;quot;properties&amp;quot;&amp;#58;&amp;#123;&amp;quot;imageSourceType&amp;quot;&amp;#58;2,&amp;quot;title&amp;quot;&amp;#58;&amp;quot;(Optional) STAR-CCM+ Macros&amp;quot;,&amp;quot;textAlignment&amp;quot;&amp;#58;&amp;quot;Left&amp;quot;,&amp;quot;showPublishDate&amp;quot;&amp;#58;false,&amp;quot;authors&amp;quot;&amp;#58;[],&amp;quot;showTopicHeader&amp;quot;&amp;#58;false,&amp;quot;authorByline&amp;quot;&amp;#58;[],&amp;quot;layoutType&amp;quot;&amp;#58;&amp;quot;CutInShape&amp;quot;,&amp;quot;topicHeader&amp;quot;&amp;#58;&amp;quot;&amp;quot;,&amp;quot;enableGradientEffect&amp;quot;&amp;#58;true,&amp;quot;isDecorative&amp;quot;&amp;#58;true&amp;#125;,&amp;quot;containsDynamicDataSource&amp;quot;&amp;#58;false,&amp;quot;reservedHeight&amp;quot;&amp;#58;309&amp;#125;&quot;&gt;&lt;/div&gt;&lt;/div&gt;</mso:LayoutWebpartsContent>
<mso:_AuthorByline msdt:dt="string"></mso:_AuthorByline>
</mso:CustomDocumentProperties>
</xml></SharePoint:CTFieldRefs><![endif]-->
<title>(Optional) STAR-CCM+ Macros</title></head>