import Types "./Types";
import Map "mo:map/Map";
import { phash } "mo:map/Map";
import Result "mo:base/Result";
import Principal "mo:base/Principal";
  /*
  What does this canister need?
  A Deposit function
    - icrc2_approve
    - icrc2_transfer
  A way for users to login ( Try NFID )
  An account Type that stores
  ( Don't call Account, call it Profile )
    - Username
    - Balance
    - Address
    - Reputation 
  */

actor Main {
  type ProfRes = Result.Result<Text, Text>;

  let profileMap = Map.new<Principal, Types.Profile>();

  public shared ({ caller }) func createProfile(username: Text ): async Text {
    let newProfile: Types.Profile = {
      username;
      address = caller;
      balance = 0;
      reputation = 0;
    };

    Map.set(profileMap, phash, caller, newProfile);


    return "ok";
  };

  public shared ({ caller }) func checkAccount(): async ProfRes {
    let profile = Map.get(profileMap, phash, caller);

    switch(profile) {
      case(null) {
        return #err("Account does not exist!");
      };
      case(?prof) {
        return #ok("Your account username is " # prof.username)
      };
    };
  };

  //Next implement NFID Below
  //Test to see that it works and create an account


    //Import ledger
    public type Ledger = actor{
        // transfer: TransferArgs -> async TransferResult;
        // account_balance: query AccountBalanceArgs -> async Token;
        icrc1_fee: query () -> async Nat;
        icrc2_approve: Types.ApproveArgs -> async Types.Result_1;
        icrc2_transfer_from: Types.TransferFromArgs -> async Types.Result_2;
    };

    let ledger: Ledger = actor("ryjl3-tyaaa-aaaaa-aaaba-cai");

  //Now implement a deposit function using 
  //icrc2_approve & icrc2_transfer

    //Create approve function
    //Test approve function being called from frontend
    public shared ({ caller }) func approveFunc(): async Types.Result_1 {
        let canisterP = Principal.fromActor(Main);
        let amount = 100_000_000;
        let approveArgs: Types.ApproveArgs = {
            fee = ?10_000;
            memo = null;
            from_subaccount = null;
            created_at_time = null;
            amount;
            expected_allowance = ?amount;
            expires_at = null;
            spender = { owner = caller; subaccount = null; };
        };

        let approveFunc: Types.Result_1 = await ledger.icrc2_approve(approveArgs);
        return approveFunc;

    };

    //Transfer


};
