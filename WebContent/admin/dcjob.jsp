<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.bwm.db.Data"%>
<%
session.getAttribute("admin");
String strJobid=(String)request.getParameter("jobid");
Data data=new Data();
int intT=data.delete("DELETE FROM job WHERE jobId='"+strJobid+"'");
	if(intT>0){
		out.print("<script>alert('The job was deleted successfully.');document.location='login.htm';</script>");
	}else{
		out.print("<script>alert('Failed to Connect to Database.');document.location='login.htm';</script>");
	}
%>
