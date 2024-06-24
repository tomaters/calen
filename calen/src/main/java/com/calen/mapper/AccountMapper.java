package com.calen.mapper;

import com.calen.domain.Account;
import com.calen.domain.AccountAuth;

public interface AccountMapper {

	public Account readByUsername(String username);
	
	public void signup(Account account) throws Exception;
	
	public void signupAuth(AccountAuth accountAuth) throws Exception;
}