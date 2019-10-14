<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes"/>
  <xsl:param name="product"></xsl:param>
  <xsl:template match="/">
    
    <html>
      <link rel="stylesheet" href="details.css" type="text/css"/>
      <head>
        <title>music</title>
      </head>
      <body>
          <br/>

          <xsl:for-each select="products/product[productId=$product]">
            <div>
              <xsl:variable name="img">
                img/<xsl:value-of select="slug"/><xsl:value-of select="imgtype"/>
              </xsl:variable>
              <p style="padding:0;">
                <xsl:value-of select="@category"/>
              </p>
              <h1 style="padding:0;">
                <xsl:value-of select="name"/>
              </h1>
              <h2 style="padding:0;">
                <xsl:value-of select="brand"/>
              </h2>
              <img src="{$img}" height="20%" width="20%"></img>
              <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi pharetra id lacus eget consectetur. Aenean tempor justo quis velit bibendum venenatis eu quis ex. Mauris eu massa a purus ultrices luctus et id sapien. Vivamus ac orci rutrum, fringilla arcu bibendum, sagittis est. Aenean scelerisque mi dolor, at aliquam est faucibus sed. Integer vitae dapibus mauris. Sed nec egestas nisi. Sed condimentum dolor velit, eget maximus nisi pulvinar id.

                In et urna mauris. Ut tincidunt velit a mi venenatis mollis. Pellentesque ex lacus, dapibus a ligula ut, fringilla auctor eros. Sed ac nunc sit amet leo vulputate suscipit id at mi. Sed dignissim, urna eget sollicitudin congue, sem libero convallis mi, ac convallis turpis turpis id eros. Quisque et tempor nisi. Nunc et arcu sit amet orci molestie pharetra id id turpis.
              </p>
              <div id="buy">
                <h1>
                  price: $<xsl:value-of select="price"/>
                  <br/>
                  
                  
                </h1>



              </div>
              <br/>
            </div>
            
            
            
          </xsl:for-each>
        
        </body>
    </html>
  </xsl:template>
    
</xsl:stylesheet>
