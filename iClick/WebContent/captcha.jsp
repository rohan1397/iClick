<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.Font"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.GradientPaint"%>
<%@page import="java.awt.Graphics2D"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%
int width = 155;
int height = 50;
BufferedImage buf = new BufferedImage(width,height,BufferedImage.TYPE_INT_RGB);
Graphics2D g2d = buf.createGraphics();
GradientPaint gp = new GradientPaint(0,0,Color.gray,0,height/2,Color.WHITE,true);
g2d.setPaint(gp);
Font f = new Font("Monotype Corsiva",Font.BOLD,22);
g2d.setFont(f);
g2d.fillRect(0, 0, width, height);
Color c=new Color(255,153,0);
g2d.setColor(c);
String data = "ABCDEFGHIKJLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
String captcha= "";
String captcha1= "";
//Storing String into a Character Array
char ch[]=data.toCharArray();
for(int i=0;i<5;i++)
{
	int j = (int)((Math.random())*62);
	captcha = captcha +" "+ch[j];
	captcha1=captcha1+ch[j];
}
session.setAttribute("captcha", captcha1);
response.setContentType("image/png");
g2d.drawString(captcha, 10, 35);
g2d.dispose();
// file is flushed and image is dispose
OutputStream os = response.getOutputStream();
ImageIO.write(buf, "png", os);
os.close();
%>
<body>

</body>
</html>