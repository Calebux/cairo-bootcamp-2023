use debug::PrintTrait;

// this function sums 2 integer values and returns the result
fn add(num_1: u32, num_2: usize) -> u32 {
    let result: usize = num_1 + num_2;
    result.print();
    result
}

// this function subtracts an integer value and returns the result
fn sub(num_3: u32, num_4: u32) -> u32 {
    let result: u32 = num_3 - num_4;
    result.print();
    result
}

fn mutiply(num_5: u32, num_6: u32) -> u32 {
    let result: u32 = num_5 * num_6;
    result.print();
    result
}

fn div(num_7: u32, num_8: u32) -> u32 {
    let result: u32 = num_7 / num_8;
    result.print();
    result
}

fn check_even(num_1: usize, num_2: usize) -> bool {
    let result: usize = add(num_1, num_2);
    if result % 2 == 0 {
        'true'.print();
        true
    } else {
        'false'.print();
        false
    }
}

