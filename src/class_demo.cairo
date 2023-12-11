#[starknet::contract]
use starknet::ContractAddress;
use starknet::Vec;


mod class_demo {
    #[storage]
    struct storage {
        name: felt252,
        age: u8,
        is_active: bool,
        has_reward: bool,
        reward_balanced: u256,
        is_owing: bool,
        legacy_mapping: Vec<(ContractAddress, LegacyMappingValue)>,
    }

    // #[storage]
    struct LegacyMappingValue {
       wallet_address: u256,
        active: bool,
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

