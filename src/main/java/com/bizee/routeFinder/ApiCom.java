package com.bizee.routeFinder;

import com.google.maps.DistanceMatrixApi;
import com.google.maps.FindPlaceFromTextRequest.InputType;
import com.google.maps.GeoApiContext;
import com.google.maps.PlacesApi;
import com.google.maps.model.DistanceMatrix;
import com.google.maps.model.DistanceMatrixRow;
import com.google.maps.model.FindPlaceFromText;
import com.google.maps.model.TravelMode;

import secrets.Secrets;

public class ApiCom {
	private static GeoApiContext context;
	private static DistanceMatrix matrix;

	public static void initialiseApiCom() {
		context = new GeoApiContext.Builder().apiKey(Secrets.getApiKey()).build();
	}

	public static GeoApiContext getContext() {
		return context;
	}

	public static DistanceMatrixRow[] getDistances(String[] origins, String[] destinations) {
		try {
			matrix = DistanceMatrixApi.newRequest(getContext()).origins(origins).destinations(destinations)
					.mode(TravelMode.DRIVING).await();
		} catch (Exception e) {
			System.out.println("Failed");
			return null;
		}

		return matrix.rows;
	}

	public static boolean checkPlaceExistance(String place) {
		try {
			FindPlaceFromText placesResult = PlacesApi.findPlaceFromText(getContext(), place, InputType.TEXT_QUERY)
					.await();
			if (placesResult.candidates.length > 0) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			System.out.println("Failed");
			return false;
		}
	}
}
