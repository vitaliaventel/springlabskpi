package ua.kpi.lab6.models;

import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@EqualsAndHashCode
@NoArgsConstructor
public class Task {

	@Getter
	@Setter
	private String question;

	@Getter
	@Setter
	private String answer1;

	@Getter
	@Setter
	private String answer2;

	@Getter
	@Setter
	private String answer3;

	@Getter
	@Setter
	private String answer4;

	@Getter
	@Setter
	private String answer5;

	@Getter
	@Setter
	private int correctAnswer;

	@Getter
	@Setter
	private int mark;

	public Task(String question, String answer1, String answer2, String answer3, String answer4, String answer5,
			int correctAnswer, int mark) {
		this.question = question;
		this.answer1 = answer1;
		this.answer2 = answer2;
		this.answer3 = answer3;
		this.answer4 = answer4;
		this.answer5 = answer5;
		this.correctAnswer = correctAnswer;
		this.mark = mark;
	}

}
