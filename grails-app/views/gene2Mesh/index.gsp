<%@ page contentType="text/html;charset=ISO-8859-1" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<meta name="layout" content="main"/>
<title>Gene2MeSH Results</title>
</head>
<%--<body>--%>
<%--  <div class="body">--%>
<%--  <g:each in="${session.searchFilter.globalFilter.getAllFilters()}" var="keyword" status="i">--%>
<%--  <ul>--%>
<%--  	<li>Keyword: ${keyword.keyword}</li>--%>
<%--  	<li>BioDataID: ${keyword.bioDataId}</li>--%>
<%--  	<li>UniqueID: ${keyword.uniqueId}</li>--%>
<%--  	<li>ID: ${keyword.id}</li>--%>
<%--  	<li>Data Category: ${keyword.dataCategory}</li>--%>
<%--  	<li>Data Source: ${keyword.dataSource}</li>--%>
<%--  	<li>Display Data Category: ${keyword.displayDataCategory}</li>--%>
<%--  	<li>Owner Auth User ID: ${keyword.ownerAuthUserId}</li>--%>
<%--  </ul>--%>
<%--  </g:each>--%>
<%--  </div>--%>
<%--</body>--%>
<%--</html>--%>
<%----%>
<%--<%@ page import="transmartapp.M2MResult" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--</head>--%>
<body>
<g:if test="${g2mResultList.size() == 0}">
	Sorry, no results found.
</g:if>
<g:else>
	<table class="trborderbottom" width="100%">
		<thead>
		<tr>
			<th>Gene Symbol</th>		
			<th>Gene ID</th>
			<th>Gene Description</th>
			<th>MeSH Descriptor</th>
<%--			<th>Descriptor ID</th>--%>
			<th>MeSH Qualifier</th>
			<th>Fold Change</th>
			<th>ChiSquare</th>
		</tr>
		</thead>
	
		<tbody>
		<g:each in="${g2mResultList}" var="g" status="i">
		<tr style="border-bottom:1px solid #CCCCCC;padding-botton:2px;">		
	  		<td><a href="http://www.ncbi.nlm.nih.gov/gene/${g.geneID}">${g.geneSymbol}</a></td>	
	  		<td><a href="http://www.ncbi.nlm.nih.gov/gene/${g.geneID}">${g.geneID}</a></td>
	  		<td>${g.geneDescription}</td>		
	  		<td><a href="http://www.ncbi.nlm.nih.gov/mesh/${g.descriptorIDNum}">${g.descriptorName}</td>	
<%--	  		<td>${m.descriptorID}</td>--%>
	  		<td><g:formatNumber number="${g.fover}" maxFractionDigits="1" /></td>	
	  		<td><g:formatNumber number="${g.chiSquare}" maxFractionDigits="1" /></td>	
	  		<td><g:formatNumber number="${g.fisherExact}" format="00.00E00" /></td>		  			
		</tr>
		</g:each>		
		</tbody>		
	</table>
</g:else>
</body>
</html>