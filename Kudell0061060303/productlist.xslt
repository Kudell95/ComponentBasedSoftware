<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

    <xsl:param name="category" />
    
    <xsl:output method="xml" indent="yes"/>
  
  
 

  <xsl:template match="/">

    <html>
      <link rel="stylesheet" type="text/css" href="ProductList.css"/>
      <head>

        <title>music</title>
      </head>
      <body >

        <div id="product_container">
        <xsl:for-each select="products/product[starts-with(@category, $category)]">
          <div id="product">
            <xsl:value-of select="@category" />
            <div id="brand">
            <xsl:value-of select="brand" />
            </div>
            <div id="name">
            <xsl:value-of select="name" />
            </div>
            $<xsl:value-of select="price" />
            <xsl:variable name="url">
              ProductDetails.aspx?pid=<xsl:value-of select="productId"/>
            </xsl:variable>
            <a href="{$url}">
              details
            </a>
          </div>

        </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>



</xsl:stylesheet>
