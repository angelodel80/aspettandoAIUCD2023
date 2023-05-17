<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="UTF-8" />

    <xsl:key name="lang" match="language" use="@ident"></xsl:key>

    <xsl:template match="/">
            <xsl:if test="key('lang','la')">
                <xsl:value-of 
                   select="key('lang','la')"
                />
            </xsl:if>
    </xsl:template>

</xsl:stylesheet>




 <!-- 

 <xsl:template match="/">
            <xsl:if test="key('lang','la')">
                <xsl:variable name="latLang" select="key('lang','la')" />
                <xsl:value-of select="
                               concat('Selected Language: ',$latLang/text(), ' (' ,$latLang/@ident,')')
                 "/>
            </xsl:if>
    </xsl:template>

<xsl:template match="/">
           <xsl:for-each select="distinct-values(//w/@lemma)">
            <xsl:sort select="." data-type="text" lang="la"/>
            <xsl:text>&#32;</xsl:text>
            <xsl:value-of select="." />
            <xsl:text>&#32;</xsl:text>
           </xsl:for-each>
    </xsl:template>

-->
