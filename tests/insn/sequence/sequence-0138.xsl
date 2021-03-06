<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:s="http://s.uri/" exclude-result-prefixes="s">

<?spec xslt#creating-sorted-sequence?>
<?error XTSE0010?>
<!-- PURPOSE:   Test xsl:perform-sort with a sequence constructor -->
<!-- ERROR: xsl:sort elements must come first -->

<xsl:output indent="yes"/>

<xsl:template match="doc">
  <zzz>
  <xsl:perform-sort>
    <x a="3" b="5" id="1"/>
    <xsl:sort select="number(@a)"/>
    <xsl:sort select="number(@b)"/>
    <x a="2" b="5"/>
    <x a="7" b="5"/>
    <x a="3" b="6"/>
    <x a="3" b="5" id="2"/>
    <x a="1" b="5"/>
    <x a="1" b="4"/> 
  </xsl:perform-sort>                       
  </zzz>  
</xsl:template>



</xsl:stylesheet>
