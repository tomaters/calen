package com.calen.service;

import com.calen.domain.Account;

public interface AccountService {

	public Account readByUsername(String username) throws Exception;

	public void signup(Account account) throws Exception;
}