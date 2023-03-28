<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <ul>Nombre y Apellidos: Pablo Mateos Palas</ul>
            <xsl:for-each select="ies/ciclos/ciclo">
            <ul>
                "<xsl:value-of select="nombre"/>"
            </ul>
        </xsl:for-each>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>