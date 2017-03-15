package ua.kpi.lab6.models;

import java.util.HashMap;
import java.util.Map;

public class TestFactory {

	public static TaskContent createTest(TaskContent currentContent, int size) {
		TaskContent tc = new TaskContent();
		Map<String, Task> newContent = new HashMap<>();
		int counter = 0;
		for (Map.Entry<String, Task> entry : currentContent.getContent().entrySet()) {
			if (counter == size) {
				break;
			}
			newContent.put(entry.getKey(), entry.getValue());
			counter++;
		}
		tc.setContent(newContent);
		return tc;
	}
}
