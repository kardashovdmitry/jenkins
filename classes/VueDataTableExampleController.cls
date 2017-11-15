public with sharing class VueDataTableExampleController {

    @RemoteAction
    public static List<Account> getAccounts() {
        List<Account> accounts = [
                                    SELECT Id,
                                           Name,
                                           Phone,
                                           Type,
                                           NumberOfEmployees
                                    FROM   Account
        ];
        return accounts;
    }

    @RemoteAction
    public static void updateAccount(String accountToUpdate) {
        Account updatedAccount = (Account)JSON.deserialize(accountToUpdate, Account.class);
        update updatedAccount;
    }

}