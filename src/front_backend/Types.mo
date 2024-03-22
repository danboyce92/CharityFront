import Principal "mo:base/Principal";
import Text "mo:base/Text";
import Nat "mo:base/Nat";


module {

    public type Profile = {
        username: Text;
        address: Principal;
        balance: Nat;
        reputation: Nat;

    };


}
