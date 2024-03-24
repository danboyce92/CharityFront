import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Nat "mo:base/Nat";


module {

    //PROFILE & EVENT TYPES

    public type Profile = {
        username: Text;
        address: Principal;
        balance: Nat;
        reputation: Nat;

    };


    //APPROVE_TRANSFER TYPES
    //Approve

    public type Account = {
        owner: Principal;
        subaccount: ?Blob;
    };

    public type ApproveArgs = {
        fee : ?Nat;
        memo : ?[Nat8];
        from_subaccount : ?[Nat8];
        created_at_time : ?Nat64;
        amount : Nat;
        expected_allowance : ?Nat;
        expires_at : ?Nat64;
        spender : Account;
    };

    public type ApproveError = {
        #BadFee : { expected_fee : Nat };
        #InsufficientFunds : { balance : Nat };
        #AllowanceChanged : { current_allowance : Nat };
        #Expired : { ledger_time : Nat64 };
        #TooOld;
        #CreatedInFuture : { ledger_time : Nat64 };
        #Duplicate : { duplicate_of : Nat };
        #TemporarilyUnavailable;
        #GenericError : { error_code : Nat; message : Text };
    };

    public type Result_1 = {
        #Ok : Nat;
        #Err : ApproveError;
    };

    //Transfer types
    public type TransferFromArgs = {
        spender_subaccount : ?[Nat8];
        from : Account;
        to : Account;
        amount : Nat;
        fee : ?Nat;
        memo : ?[Nat8];
        created_at_time : ?Nat64;
    };

    public type TransferFromError = {
        #BadFee : { expected_fee : Nat };
        #BadBurn : { min_burn_amount : Nat };
        #InsufficientFunds : { balance : Nat };
        #InsufficientAllowance : { allowance : Nat };
        #TooOld;
        #CreatedInFuture : { ledger_time : Nat64 };
        #Duplicate : { duplicate_of : Nat };
        #TemporarilyUnavailable;
        #GenericError : { error_code : Nat; message : Text };
    };

    public type Result_2 = {
        #Ok : Nat;
        #Err : TransferFromError;
    };

}
