<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">
    <html>
        <body>
            <h5>Nombre y apellidos: Pablo Mateos</h5>
            <h1>IES NUESTRA SRA. DE LOS REMEDIOS</h1>
            <table border="1">
            <tr>
                <td>Nombre</td>
                <td>Año</td>
            </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="decretoTitulo"/></td>
                </tr>
            </xsl:for-each>
            </table>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>