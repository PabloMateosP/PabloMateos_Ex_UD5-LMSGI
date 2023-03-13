<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
    Nombre y apellidos: Pablo Mateos 
    <xsl:for-each select="ies/ciclos/ciclo">
        <li>
           • "<xsl:value-of select="nombre"/>" (<xsl:value-of select="grado"/>)
        </li>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>