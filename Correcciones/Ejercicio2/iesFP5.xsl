<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
        <h4>Nombre y apellidos: Pablo Mateos Palas</h4>
        <h1>IES Nuestra Sra. de los Remedios</h1>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Año</th>
            </tr>
            <xsl:for-each select="ies/ciclos/ciclo">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <xsl:choose>
                    <xsl:when test="decretoTitulo/@año &gt; 2009">
                        <td style="color: green;"><xsl:value-of select="decretoTitulo/@año"/></td>
                        <!-- De esta forma es como se debería de pintar el texto -->
                    </xsl:when>
                    <xsl:when test="decretoTitulo/@año &lt; 2009">
                        <td style="color: red;"><xsl:value-of select="decretoTitulo/@año"/></td>
                    </xsl:when>
                    <xsl:otherwise> <!-- Decimos que en los otros casos se pinte de azul --> 
                        <td style="color: blue;"><xsl:value-of select="decretoTitulo/@año"/></td>
                    </xsl:otherwise>
                </xsl:choose>
            </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>    

</xsl:stylesheet>