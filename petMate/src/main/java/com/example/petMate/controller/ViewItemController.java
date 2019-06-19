package com.example.petMate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.petMate.domain.Item;
import com.example.petMate.service.PetMateFacade;


@Controller
public class ViewItemController { 

	private PetMateFacade petStore;

	@Autowired
	public void setPetStore(PetMateFacade petStore) {
		this.petStore = petStore;
	}

	@RequestMapping("/viewItem.do")
	public String handleRequest(
			@RequestParam("itemId") int i_idx,
			ModelMap model) throws Exception {
		Item item = this.petStore.getItemByItemIdx(i_idx);
		model.put("item", item);
		return "itemDetail";
	}

}