import Types "./Types";
import Map "mo:map/Map";
import { phash } "mo:map/Map";
import Result "mo:base/Result";
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

actor {
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
};
