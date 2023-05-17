<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <xsl:value-of select="concat('&#10;','title : ', normalize-space(descendant::titleStmt/title=>string()))" />
        <xsl:apply-templates select="//text//div" />

    </xsl:template>

    <xsl:template match="div">
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="name(.)=>concat(' : ',@type)" />
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="head" />
    </xsl:template>

    <xsl:template match="head">
        <xsl:value-of select="name(.)=>concat(' : ', .,'&#10;')" />
    </xsl:template>

    <xsl:template match="lb">
        <xsl:value-of select="concat('&#10;', 'riga ' , current()/@n, ' : ')" />
    </xsl:template>

</xsl:stylesheet>




 <!-- 

<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:strip-space elements="*" />

    <xsl:template match="/">
        <xsl:value-of select="concat('&#10;','title : ', normalize-space(descendant::titleStmt/title=>string()))" />
        <xsl:apply-templates select="//text//div" />
    </xsl:template>

    <xsl:template match="div">
        <xsl:text>&#10;</xsl:text>
        <xsl:value-of select="name(.)=>concat(' : ',@type)" />
        <xsl:text>&#10;</xsl:text>
        <xsl:apply-templates select="head" />
    </xsl:template>

    <xsl:template match="head">
        <xsl:value-of select="name(.)=>concat(' : ', .,'&#10;')" />
        <xsl:apply-templates select="following-sibling::*" />
    </xsl:template>

    <xsl:template match="lb">
        <xsl:value-of select="concat('&#10;', 'riga ' , current()/@n, ' : ')" />
    </xsl:template>

</xsl:stylesheet>

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
