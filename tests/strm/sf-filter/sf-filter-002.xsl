<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:f="http://www.w3.org/xslt30tests/filter"
    exclude-result-prefixes="map xs f">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
    
    <xsl:function name="f:test" as="xs:boolean">
      <xsl:param name="arg" as="item()"/>
      <xsl:sequence select="string-length($arg) gt 4"/>
    </xsl:function>  
     
    <!-- Streaming filter(): grounded operand -->
    
    <xsl:template name="r-002" use-when="$RUN">
      <xsl:stream href="../docs/books.xml">
        <out>
          <xsl:copy-of select="filter(copy-of(/BOOKLIST/BOOKS/ITEM/PRICE), f:test#1)"/>
        </out>
      </xsl:stream>
    </xsl:template>
            
    
</xsl:stylesheet>