package com.example.petMate.service;

import java.util.List;
import com.example.petMate.domain.Account;
import com.example.petMate.domain.Item;
import com.example.petMate.domain.buy;

public interface PetMateFacade {
	// User
	Account getAccount(String username, String password);// throws DataAccessException;
	
	Account getAccountById(String username);

	void insertAccount(Account account);// throws DataAccessException;

	void updateAccount(Account account);// throws DataAccessException;



	// Item 
	List<Item> getItemList(int sort);// throws DataAccessException;

	Item getItemByItemIdx(int itemIdx);// throws DataAccessException;

	Item getItemByItemTitle(String itemTitle);// throws DataAccessException;

	void updateItem(Item itemIdx, Item Item);// throws DataAccessException;

	List<String> getItemnameList(); // throws DataAccessException;

	boolean isItemInStock(int itemIdx);
	
	void insertBuy(Item item, buy buy);

	buy getBuy(int b_idx);

	List<buy> getOrdersByUsername(String username);
	
	//void deleteItem(int item_idx);
	
	//void deleteItemImage(int item_idx);
	
	void updateItem(int item_idx);

}
