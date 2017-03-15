package ua.kpi.lab6.models;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@EqualsAndHashCode
public class TaskContent {

	@Getter
	@Setter
	private Map<String, Task> content;
	
	@Getter
	@Setter
	private String name;

	public TaskContent() {
		content = new HashMap<>();
	}

	public boolean addTask(Task t) {
		if (content.containsKey(t.getQuestion())) {
			return false;
		}
		content.put(t.getQuestion(), t);
		return true;
	}

	public boolean removeTask(String question) {
		if (content.containsKey(question)) {
			content.remove(question);
			return true;
		}
		return false;
	}

	public Task getTask(String question) {
		return content.get(question);
	}

	public Map<String, Task> union(TaskContent anotherContent) {
		this.content.putAll(anotherContent.getContent());
		return content;
	}

	public Map<String, Task> substract(TaskContent anotherContent) {
		Set<String> set = new HashSet<>();
		set = anotherContent.getContent().keySet();
		this.content.keySet().removeAll(set);
		return content;
	}

	public Map<String, Task> cross(TaskContent anotherContent) {
		Set<String> set = new HashSet<>();
		set = anotherContent.getContent().keySet();
		this.content.keySet().retainAll(set);
		return content;
	}
}
