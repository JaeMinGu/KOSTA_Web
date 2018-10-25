package kr.or.kosta.jsp;

/**
 * JavaBean
 * 
 * @author 최재민 
 */
public class Account { // class는 public 이거나 default이거나 두 가지밖에 없음

	public static final String BANKNAME = "하나은행";

	private String accountNum;
	private String accountOwner;
	private int passwd;
	private long restMoney;

	public Account() {
		this(null, null);
	}

	public Account(String accountNum, String accountOwner) {
		this(accountNum, accountOwner, 0, 0);
	}

	public Account(String accountNum, String accountOwner, int passwd, long restMoney) {
		this.accountNum = accountNum;
		this.accountOwner = accountOwner;
		this.passwd = passwd;
		this.restMoney = restMoney;
	}

	public void setAccountNum(String accountNum) {
		this.accountNum = accountNum;
	}

	public String getAccountNum() {
		return accountNum;
	}

	public void setAccountOwner(String accountOwner) {
		this.accountOwner = accountOwner;
	}

	public String getAccountOwner() {
		return accountOwner;
	}

	public void setPasswd(int passwd) {
		this.passwd = passwd;
	}

	public int getPasswd() {
		return passwd;
	}

	public void setRestMoney(long restMoney) {
		this.restMoney = restMoney;
	}

	public long deposit(long money) throws AccountException {
		if(money <= 0) {
			throw new AccountException("양수의 값을 입금해주세요.", -3);
		}
		
		restMoney += money;
		return restMoney;
	}

	public long withdraw(long money) throws AccountException {
		if (money <= 0) {
			throw new AccountException("출금하고자 하는 금액은 음수일 수 없습니다.", -1);
		}
		if (money > restMoney) {
			throw new AccountException("잔액이 부족합니다.", -2);
		}
		restMoney -= money;
		return restMoney;
	}

	public long getRestMoney() {
		return restMoney;
	}

	public boolean checkPasswd(int passwd) {
		return (this.passwd == passwd);
	}

	public String toString() {
		return getAccountNum() + "\t" + getAccountOwner() + "\t" + "****" + "\t" + getRestMoney();
	}

	@Override
	public boolean equals(Object obj) {
//			return account1.toString().equals(account2.toString());
		boolean eq = false;
		if (obj instanceof Account) {
			eq = toString().equals(obj.toString());
		}
		return eq;
	}


}
