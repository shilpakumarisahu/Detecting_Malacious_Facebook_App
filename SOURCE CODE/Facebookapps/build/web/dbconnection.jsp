<%@page contentType="text/html" import="java.sql.*"%>
<%@page pageEncoding="UTF-8"%>
<%! Connection con,con1,con2,con3=null;
Statement st,st1,st2,st3,st4;
 %>
<%
 try {
                        Class.forName("com.mysql.jdbc.Driver");
                    } catch (Exception e) {
                        out.println(e);
                    }
                    try {
                        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fb", "root", "root");
                        //  con1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/collectivebehaviour", "root", "root");
                         //   con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/collectivebehaviour", "root", "root");
                          //    con3 = DriverManager.getConnection("jdbc:mysql://localhost:3306/collectivebehaviour", "root", "root");

                    //  out.println("sucess");
                    } catch (Exception ex) {
                        out.println(ex);
                    }
 %>

