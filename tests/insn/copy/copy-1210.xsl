<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

<!-- test xsl:copy on-empty - content comprises namespaces only; on-empty value is a document node -->

    
<xsl:template match="/">
  <xsl:variable name="var1"><rtf/></xsl:variable>
  <out>
    <xsl:copy on-empty="$var1/*">
        <xsl:namespace name="n">http://example.com/nnnnnnn</xsl:namespace> 
    </xsl:copy>  
  </out>  
</xsl:template>

</xsl:stylesheet>