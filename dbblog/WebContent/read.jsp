<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="blog.Topic,java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>シンプルBlog</title>
</head>
<body>
  <h2>シンプルBlog</h2>
  <a href="read">リロード</a>
  <form action="post" method="POST">
    <br>タイトル<input type="text" name="title" size="40">
<br>
  <textarea name="content" rows="5" cols="40"></textarea>
  <br><input type="submit" value="投稿">
  </form>
  <%
  List<Topic> topics = (List<Topic>) request.
          getAttribute("topics");
  if (topics != null) {
	  for (int i = topics.size() - 1; i >= 0; i--) {
		  Topic topic = topics.get(i);
  %>
   <hr>
   タイトル:<%=topic.getTitle() %>
   (<%=topic.getPostDate() %>)
   <pre><%=topic.getContent()%></pre>
  <%
    }
  }
  %>
</body>
</html>