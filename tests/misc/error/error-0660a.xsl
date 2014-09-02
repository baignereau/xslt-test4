<?xml version="1.0" encoding="UTF-8"?>
<!--It is a static error if a  
                        package contains more than one template with the same name and the same
                        import precedence, unless it
                     also contains a template with the same
                     name and higher import
                     precedence.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- Error: xsl:template - duplicate name -->
<?spec xslt#errors?><?error XTSE0660?>

   <xsl:include href="error-0660a2.xsl"/>

   <xsl:template name="one"/>

  
  <xsl:template match="doc">
      <out>
         <xsl:call-template name="one"/>
         <xsl:message>Error not detected!</xsl:message>
      </out>
  </xsl:template>
  


</xsl:stylesheet>
