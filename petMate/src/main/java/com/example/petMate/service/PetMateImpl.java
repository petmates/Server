package com.example.petMate.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.petMate.dao.AccountDao;
import com.example.petMate.dao.BuyDao;
import com.example.petMate.dao.ItemDao;
import com.example.petMate.domain.Account;
import com.example.petMate.domain.Item;
import com.example.petMate.domain.buy;

@Service
@Transactional
public class PetMateImpl implements PetMateFacade {
	@Autowired
	private ItemDao itemDao;
	
	@Autowired
	private AccountDao accountDao;
	
	@Autowired
	private BuyDao buyDao;
	
	private static Logger logger = LoggerFactory.getLogger(PetMateImpl.class);


	@Override
	public Account getAccountById(String username) throws DataAccessException{
		// TODO Auto-generated method stub
		logger.info("before getAccount-param1, username = " + username);
		
		return accountDao.getAccountById(username);
	}

	@Override
	public Account getAccount(String username, String password) throws DataAccessException{
		// TODO Auto-generated method stub
		logger.info("before getAccount-param2, username = " + username);

		return accountDao.getAccount(username, password);
	}

	@Override
	public void insertAccount(Account account) {
		logger.info("Before insertAccount, account_username = " + account.getU_name());
		
		accountDao.insertAccount(account);
		
		logger.info("After InsertAccount");

	}

	@Override
	public void updateAccount(Account account) {
		accountDao.updateAccount(account);

	}


	@Override
	public List<Item> getItemList(int sort) {
		// TODO Auto-generated method stub
		List<Item> items;
		if(sort == 0){
			items = itemDao.getAllItemList();
		}else{
			items = itemDao.getItemListByCategory(sort);
		}
		for(Item t : items) {
			String[] urls = itemDao.getItemImageUrls(t.getI_idx());
			t.setIi_url(urls);
		}
		logger.info("aaa" + items.toString());
		return items;
	}

	@Override
	public Item getItemByItemIdx(int itemIdx) {
		// TODO Auto-generated method stub
		Item item = itemDao.getItemByItemIdx(itemIdx);
		String[] urls = itemDao.getItemImageUrls(itemIdx);
		item.setIi_url(urls);
		return item;
	}

	@Override
	public Item getItemByItemTitle(String itemTitle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateItem(Item itemIdx, Item Item) {
		// TODO Auto-generated method stub

	}

	@Override
	public List<String> getItemnameList() {
		// TODO Auto-generated method stub
		return null;
	}
	

	@Override
	public boolean isItemInStock(int itemIdx){
		return itemDao.isItemInStock(itemIdx);
	}

	@Override
	public void insertBuy(Item item,buy buy) {
		// TODO Auto-generated method stub
		buyDao.insertBuy(item, buy);
	}

	@Override
	public buy getBuy(int b_idx) {
		// TODO Auto-generated method stub
		return buyDao.getBuy(b_idx);
	}

	@Override
	public List<buy> getOrdersByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	/*@Override
	public void deleteItem(int item_idx) {
		// TODO Auto-generated method stub
		itemDao.deleteItem(item_idx);
	}

	@Override
	public void deleteItemImage(int item_idx) {
		// TODO Auto-generated method stub
		itemDao.deleteItemImage(item_idx);
	}*/

	@Override
	public void updateItem(int item_idx) {
		// TODO Auto-generated method stub
		itemDao.updateItem(item_idx);
	}



}
