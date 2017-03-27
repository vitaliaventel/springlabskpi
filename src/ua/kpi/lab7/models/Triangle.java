package ua.kpi.lab7.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import ua.kpi.lab7.exceptions.IllegalTriangleSides;

@ToString
@NoArgsConstructor
public class Triangle {

	@Getter
	@Setter
	private int firstSide;

	@Getter
	@Setter
	private int secondSide;

	@Getter
	@Setter
	private int thirdSide;

	public Triangle(int firstSide, int secondSide, int thirdSide) {
		this.firstSide = firstSide;
		this.secondSide = secondSide;
		this.thirdSide = thirdSide;
	}

	public int calculatePerimeter() {
		return firstSide + secondSide + thirdSide;
	}

	public int calculatePerimeterNoSpec() {
		return (firstSide + secondSide + thirdSide) / 0;
	}

	public int calculatePerimeterStandart() throws ArithmeticException {
		return (firstSide + secondSide + thirdSide) / 0;
	}

	public int calculatePerimeterOwn() throws IllegalTriangleSides {
		if (firstSide < 0 || secondSide < 0 || thirdSide < 0) {
			throw new IllegalTriangleSides("One or more triangle sides are lower than ZERO!");
		}
		return (firstSide + secondSide + thirdSide);
	}

}
