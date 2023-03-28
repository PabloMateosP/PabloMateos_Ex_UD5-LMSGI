<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
    <body>
    <n>Nombre y Apellidos: Pablo Mateos Palas</n>
        <ol>
            <xsl:for-each select="bib/libro/autor">
            <xsl:sort select="apellido" order="ascending"/>
                <li>
                    <xsl:value-of select="apellido"/>,<xsl:value-of select="nombre"/>
                </li>
            </xsl:for-each>
        </ol>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>