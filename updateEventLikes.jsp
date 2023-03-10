<%@ page language="java" contentType="application/json; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="teampackage.*, java.util.stream.Collectors, javax.json.*" %>

<%
  // Get the request body as a JSON string
  String json = request.getReader().lines().collect(Collectors.joining());

  // Parse the JSON string into a Java object
  JsonReader reader = Json.createReader(new StringReader(json));
  JsonObject data = reader.readObject();
  reader.close();

  // Get the values from the JSON object
  String event_id = data.getString("event_id");
  String username = data.getString("username");
  String is_interested = data.getString("is_interested");

  // Update the database using the DAO and DB classes
  LikesDAO likesDAO = new LikesDAO();
  likesDAO.updateEventLikes(event_id, username, is_interested);

  // Send a success response back to the client
  JsonObject responseJson = Json.createObjectBuilder()
                              .add("status", "success")
                              .build();
  response.setContentType("application/json");
  response.getWriter().write(responseJson.toString());
%>