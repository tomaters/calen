
package com.calen.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.calen.domain.Account;
import com.calen.domain.AccountAuth;
import com.calen.mapper.AccountMapper;
import com.calen.service.AccountService;

@Service
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountMapper mapper;

	@Override
	public Account readByUsername(String username){
		return readByUsername(username);
	}
	
	@Transactional
	@Override
	public void signup(Account account) throws Exception {
		mapper.signup(account);
		AccountAuth accountAuth = new AccountAuth();
		accountAuth.setUsername(account.getUsername());
		accountAuth.setAuth("ROLE_MEMBER");
		mapper.signupAuth(accountAuth);
	}
}
