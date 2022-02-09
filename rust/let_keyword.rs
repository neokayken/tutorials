fn main() {

    println!("\n[Rust Tutrorial - let keyword]");

    let var1: i32 = 126;
    let var2 = var1 + 15000;

    let true_or_false = true;

    let my_array = [1,3,5];

    let my_tuple:(i8, i8) = (2, 4);

    println!("var1 : {}", var1);
    println!("var2 : {}", var2);
    println!("true or false : {}", true_or_false);

    println!("my array : [{}, {}, {}]", my_array[0], my_array[1], my_array[2]);

    println!("my tuple : ({}, {}) ", my_tuple.0, my_tuple.1)

}
