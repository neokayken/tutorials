fn main() {

    println!("\n[Rust Tutrorial 1 - Integer]");

    let my_favorite_int: i32 = 23;

    println!("- My Favorite Integer is {}", my_favorite_int);

    // you can't possibly assign a value to immutable variable
    // my_favorite_int = 40;
    
    let mut mutable_int: i64 = 156;
    println!("- mutable int : {}", mutable_int);

    // you can change the variable with mut keyword
    mutable_int = 256;

    println!("- mutable int : {}", mutable_int);
}
