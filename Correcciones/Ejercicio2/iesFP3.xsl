<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <n>Nombre y Apellidos: Pablo Mateos Palas</n>
                <!-- El elemento n es un elemento sin funcionalidad especial pero que sirve 
                para en nuestro caso escribir el nombre -->
                <ul>
                    <xsl:for-each select="ies/ciclos/ciclo">
                        <li><xsl:value-of select="nombre"/> (<xsl:value-of select="grado"/>)</li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>