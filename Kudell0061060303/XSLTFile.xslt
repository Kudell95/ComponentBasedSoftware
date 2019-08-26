<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>

    <xsl:param name="category" />
    <xsl:output method="xml" indent="yes"/>

  
 

  <xsl:template match="/">
    <html>
      <head>
        <title>music</title>
      </head>
      <body>
        <table width="100%" border="1">
          <THEAD>
            <TR>
              <TD width="50%">
                <B>Category</B>
              </TD>
              <TD width="50%">
                <B>name</B>
              </TD>
            </TR>
          </THEAD>
          <TBODY>
            <xsl:for-each select="products/product[@category=$category]">
              <TR>
                <TD width="50%">
                  <xsl:value-of select="@category" />
                </TD>
                <TD width="50%">
                  <xsl:value-of select="name" />
                </TD>
              </TR>
            </xsl:for-each>
          </TBODY>
        </table>
      </body>
    </html>
  </xsl:template>



</xsl:stylesheet>
