package ua.kpi.lab6.models;

import java.util.ArrayList;
import java.util.List;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@EqualsAndHashCode
public class EntryStorage {

	@Getter
	@Setter
	private List<Integer> currentStorage;

	public EntryStorage() {
		currentStorage = new ArrayList<>();
	}

	public EntryStorage(List<Integer> currentStorage) {
		this.currentStorage = new ArrayList<>(currentStorage);
	}

	public int findMaxValue() {
		if (currentStorage.isEmpty()) {
			return 0;
		}
		int max = currentStorage.get(0);
		for (Integer current : currentStorage) {
			if (current > max) {
				max = current;
			}
		}
		return max;
	}

	public List<Integer> removeMaxValue(int max) {
		List<Integer> result = new ArrayList<>(currentStorage);
		for (int i = 0; i < result.size(); i++) {
			int temp = result.get(i) - max;
			result.set(i, temp);
		}
		return result;
	}
}
