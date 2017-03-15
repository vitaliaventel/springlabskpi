package ua.kpi.lab6.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ua.kpi.lab6.models.EntryStorage;
import ua.kpi.lab6.utils.Generator;

@Controller
@RequestMapping("/lab6_1")
public class GeneratorController {

	@RequestMapping("/arrayDataEntry")
	public String showGUI() {
		return "data-entry-form";
	}

	@RequestMapping("/result")
	public String processForm(@RequestParam("size") int size,@RequestParam("maxLimit") int maxLimit,@RequestParam("minLimit") int minLimit, Model theModel) {
		EntryStorage theEntryStorage = new EntryStorage(Generator.randomGenerateToList(size, minLimit, maxLimit));
		theModel.addAttribute("theEntryStorage", theEntryStorage.getCurrentStorage());
		int maxValue = theEntryStorage.findMaxValue();
		theModel.addAttribute("maxValue", maxValue);
		List<Integer> noMaxStorage = new ArrayList<>();
		noMaxStorage = theEntryStorage.removeMaxValue(maxValue);
		theModel.addAttribute("noMaxStorage", noMaxStorage);
		return "result";
	}
}
