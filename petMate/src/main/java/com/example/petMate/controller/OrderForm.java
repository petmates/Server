package com.example.petMate.controller;

import com.example.petMate.domain.Account;
import com.example.petMate.domain.Buy;

public class OrderForm {
	private Account account;
	private final Buy buy = new Buy();
	private String bankName;
	private String accountNumber;
	

	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Buy getBuy() {
		return buy;
	}

	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	
}
