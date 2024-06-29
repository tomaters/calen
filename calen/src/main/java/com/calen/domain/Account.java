package com.calen.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

// Account represents core user account information; model for user entity
@Getter
@Setter
@ToString
// implementing Serializable allows Account object to be serialized and deserialized
public class Account implements Serializable {

	// CustomAccounts uses 1L. each should have own unique serialVersionUID
	private static final long serialVersionUID = 2L;
	
	@NotBlank
	private String username;
	
	@NotBlank
	private String password;
	
	@NotBlank
	private String first_name;
	
	private String last_name;
	
	@NotBlank
	private String email;
	
	@NotBlank
	private String account_status;
	
	@NotBlank
	private String account_type;
	
	@NotNull
	// "MM" represents two-digit months and "mm" represents minutes
	@DateTimeFormat(pattern = "yy-MM-dd")
	private Date reg_date;
	
	private String name;
	
	// allow account to hold objects of AccountAuth table, 1:N
	private List<AccountAuth> authList;
}