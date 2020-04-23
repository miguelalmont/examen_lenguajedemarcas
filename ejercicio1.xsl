<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <body>
        <h1>Calificaciones de la convocatoria de Junio y Septiembre</h1>
        <table border="1">
          <tr>
            <th colspan="3">Datos</th>
            <th colspan="3">Notas</th>
          </tr>
          <tr>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Tareas</th>
            <th>Cuestionarios</th>
            <th>Examen</th>
            <th>Final</th>
          </tr>
          <xsl:for-each select="/notas/alumno">
          <tr>
            <td>
              <xsl:value-of select="nombre"/>
            </td>
              <td>
              <xsl:value-of select="apellidos"/>
            </td>
             <td>
              <xsl:value-of select="tareas"/>
            </td>
            <td>
              <xsl:value-of select="cuestionarios"/>
            </td>
            <td>
              <xsl:value-of select="examen"/>
            </td>
            <td>
              <xsl:choose>
                 <xsl:when test="final &lt; 5"><font color="red">Suspenso</font></xsl:when>
                 <xsl:otherwise><font color="green">Aprobado</font></xsl:otherwise>
                 </xsl:choose>
            </td>
          </tr>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
