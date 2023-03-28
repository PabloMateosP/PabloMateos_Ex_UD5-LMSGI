<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
                <h1>Nombre y Apellidos: Pablo mateos Palas</h1>
                    <ul> <!-- El elemento ul nos funciona como una lista desordenada -->
                        <xsl:for-each select="bib/book">
                            <li><xsl:value-of select="title"/> - "<xsl:value-of select="publisher"/>" (<xsl:value-of select="year"/>)</li>
                        </xsl:for-each>
                    </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>