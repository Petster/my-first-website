<% dim s, q, f, s1 %>
<div align="center" style="height: 100%; width: 100%; background-color: #CCC; padding-top: 50px; padding: 0; margin: 0;">Here's your form data:
<p>
<%
   s=request.form
   if len(s)=0 then
      q="get"
      s=request.querystring
	  for each f in request.querystring
		 s1= s1 & "<tr><td>" & f & "</td><td style='color:blue'>"  & request.querystring(f) & "</tr>"
      next
   else
       q="post"
       for each f in request.form
	     s1 = s1 & "<tr><td>" & f & "</td><td style='color:blue'>"  & request.form(f) & "</tr>"
	   next
   end if%>
<table border=2>
<caption>Using <% =q %> method</caption>
<tr><th>Field</th><th>Value</th></tr>
<% =s1 %>

</table>
<p style="margin-top: 25px;"><a href="../index.html"><input name="return" type="submit" value="Return to Home"></a></p>
</div>
<div style="display: none;">
<h3>string submitted from form:
<span style="color:blue"><% =s %></span>
</h3>
<ul>
<li>Plus signs replace spaces</li>
<li>Ampersands seperate fields</li>
<li>Equals signs seperate name/value pairs</li>
<li>%nn encodes hex values for special symbols like those above</li>
<ul><li>%2B for plus</li>
<li>%26 for ampersand</li>
<li>%3D for equals</li>
<li>%25 for percent</li>
</ul></ul>
</div>
