package com.model;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class UserModel {
	public static String loadHomePageData(String userID) {
		String serviceUrl, urlParameters, returnedJson;
		
		serviceUrl = "http://localhost:8080/FCISquare/rest/user/showHomePage";
		urlParameters = "userID=" + userID;
		returnedJson = Connection.connect(serviceUrl, urlParameters, "POST",
				"application/x-www-form-urlencoded;charset=UTF-8");

		JSONObject jsonPost = new JSONObject();
		JSONArray jsonPosts = new JSONArray();
		JSONParser parser = new JSONParser();
		
		try {
			jsonPost = (JSONObject) parser.parse(returnedJson);
			
			System.out.println(jsonPost.get(1));
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return returnedJson;
	}
}
