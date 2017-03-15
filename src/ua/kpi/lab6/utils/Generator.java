package ua.kpi.lab6.utils;

import java.util.Arrays;
import java.util.List;
import java.util.Random;

public class Generator {

	public static List<Integer> randomGenerateToList(int size, int minimumLimit, int maximumLimit) {
		Integer[] entryArray = new Integer[size];
		Random rnd = new Random();
		for (int i = 0; i < size; i++) {
			entryArray[i] = rnd.nextInt((maximumLimit - minimumLimit) + 1) + minimumLimit;
		}
		return Arrays.asList(entryArray);
	}

}
