import Nat "mo:base/Nat";
import Array "mo:base/Array";

actor {
    public func greet(name : Text) : async Text {
        return "Hello, " # name # "!";
    };

    //Challenge 1
    public func add(n : Nat,m : Nat) : async Nat {
        return (n + m);
    };
    
    //Challenge 2
    public func square(n : Nat) : async Nat {
        return (n * n);
    };

    //Challenge 3
    public func days_to_second(n : Nat) : async Nat {
        return (n * 86400);
    };
    
    //Challenge 4
    stable var currentValue : Nat = 0;

    public func increment_counter() : async () {
        currentValue += 1;
        };

    public query func get() : async Nat {
        currentValue
        };

    public func clear_counter(n: Nat) : async () {
        currentValue := n;
        };

    //Challenge 5
    public func divide(n : Nat,m : Nat) : async Text {
        var x : Nat = n % m;
        if(x == 0) {
            return("true");
        } else {
            return ("false");
        };
    };
    

    //Challenge 6
    public func s_even(n : Nat) : async Text {
        var x : Nat = n % 2;
        if(x == 0) {
            return("true");
        } else {
            return ("false");
        };
    };

    // Challenge 7
    public func sum_of_array(nums : [Nat]) : async Nat {
        if (nums.size() != 0) {
            var sum = 0;
            for (num in nums.vals()){
                sum += num;
            };
            return sum;
        };
        return 0;
    };

    // Challenge 8
    public func maximum(nums : [Nat]) : async Nat {
        if (nums.size() != 0) {
            var max = nums[0];
            for (num in nums.vals()){
                if (num > max) {
                    max := num;
                };
            };
            return max;
        };
        return 0;
    };

    // Challenge 9
    public func remove_from_array(nums : [Nat], n : Nat) : async [Nat] {
        return Array.filter(nums, func (_n : Nat) : Bool {
            return _n != n;
        });
    };

    // Challenge 10
    public func selection_sort(nums : [Nat]) : async [Nat] {
        return Array.sort(nums, Nat.compare);
    };

};

