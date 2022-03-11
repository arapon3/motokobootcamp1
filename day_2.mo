import Nat "mo:base/Nat";
import Array "mo:base/Array";

import Nat8 "mo:base/Nat8";

actor {

    public func nat8_to_nat(n : Nat8) : async Nat8 {
      return(Nat8.toNat(n));
    };

};
