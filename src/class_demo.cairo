#[starknet::contract]
use starknet::{ContractAddress, get_caller_address};



mod class_demo {
    #[storage]
    struct studentstructValue{
        _name: felt252,
        _is_active: bool,
        _age: u8,
        has_reward: bool,
        is_owing: bool,
    }

    #[storage]
    struct storage {
        name: felt252,
        age: u8,
        is_active: bool,
        has_reward: bool,
        reward_balanced: u256,
        is_owing: bool,
        legacy_mapping: LegacyMap<ContractAddress, studentstructValue>
    }
}

#[external(v0)]
fn set_class_character(
    ref self: ContractState,
    _name: felt252,
    _w_address: ContractAddress,
    _age: u8,
    _is_active: bool,
    has_reward: bool,
    reward_balance: u256,
    is_owing: bool
) {
    self.name.write(_name);
    self.age.write(_age);
    self.is_active.write(_is_active);
    self.has_reward.write(_has_reward);
    self.reward_balance.write(_reward_balance);
    self.is_owing.write(_is_owing);
}

#[external(v0)]
fn get_name(self: @ContractState) -> felt252 {
    self.name.read()
}
#[external(v0)]
fn get_w_address(self: @ContractState) -> ContractAddress {
    self.w_address.read()
}
#[external(v0)]
fn get_age(self: @ContractState) -> u8 {
    self.age.read()
}
#[external(v0)]
fn get_is_active(self: @ContractState) -> bool {
    self.is_active.read()
}


#[external(v0)]
fn get_has_reward(self: @ContractState) -> bool {
    self.has_reward.read()
}

#[external(v0)]
fn get_reward_balance(self: @ContractState) -> u256 {
    self.reward_balance.read()
}

#[external(v0)]
fn get_is_owing(self: @ContractState) -> bool {
    self.is_owing.read()
}


    // this function saves data to a LegacyMap given an address and a student_struct instance 
    #[external(v0)]
    fn get_student_struct_value (ref self: ContractState, _name: felt252, _age: u8, _is_active: bool, _has_reward: bool, _reward_balance: u8, _is_owing: bool) {
        
        let caller = get_caller_address();

        let mut student = Student_struct{name: _name, age: _age, is_active: _is_active, has_reward: _has_reward, reward_balance: _reward_balance, is_owing: _is_owing};
    
        self.student_map.write(caller, student);
    }

    // this function reads data from a LegacyMap in storage called student_map when passed an address as key
    #[external(v0)]
    fn get_student_struct_value (self: @ContractState) -> Student_struct {
        let caller = get_caller_address();
        self.student_map.read(caller)
    }
       



