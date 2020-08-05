[#assign title = content.title!"Hello Magnolia :-)"]

<!DOCTYPE html>
<html>
   <head>
      <title>${title}</title>
      ${resfn.js(["/hello-magnolia/webresources/js/.*vue.min.js","/hello-magnolia/webresources/js/.*js"])!}
      <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Raleway:200" type="text/css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
      <link rel="stylesheet" href="${ctx.contextPath}/.resources/hello-magnolia/webresources/css/style.css">
      <link rel="stylesheet" href="${ctx.contextPath}/.resources/hello-magnolia/webresources/css/style2.css">
      [@cms.page /]
   </head>
   <body>
      <div class="container">
         <header>
            <h1>${title}</h1>
            [#if content.introText?has_content]<p>${content.introText}</p>[/#if]
         </header>
          <div class="main">
          [@cms.area name="main"/]
          </div>
      </div>
   </body>
</html>