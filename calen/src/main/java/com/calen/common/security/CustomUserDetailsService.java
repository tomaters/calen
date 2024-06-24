package com.calen.common.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.calen.common.domain.CustomAccount;
import com.calen.domain.Account;
import com.calen.mapper.AccountMapper;

@Service
public class CustomUserDetailsService implements UserDetailsService {

	@Autowired
	private AccountMapper accountMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Account account = accountMapper.readByUsername(username);
		// check if retrieved account is null. if null, return null. if not null, create custom account
		return account == null ? null : new CustomAccount(account);
	}
}
