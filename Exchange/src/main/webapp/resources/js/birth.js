var today = new Date();
var toyear = parseInt(today.getFullYear());
var start = toyear - 5
var end = toyear - 70;

document.write("<font size=2><select name=mem_birth1>");
document.write("<option value='' selected>");
for (i = start; i >= end; i--)
	document.write("<option>" + i);
document.write("</select>년  ");

document.write("<select name=mem_birth2>");
document.write("<option value='' selected>");
for (i = 1; i <= 12; i++)
	document.write("<option>" + i);
document.write("</select>월  ");

document.write("<select name=mem_birth3>");
document.write("<option value='' selected>");
for (i = 1; i <= 31; i++)
	document.write("<option>" + i);
document.write("</select>일   </font>");