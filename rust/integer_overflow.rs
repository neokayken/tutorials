fn main() {

    println!("\n[Rust Tutrorial 1 - Integer]");
    println!("*Integer Overflow Problem");

    let mut overflow_u8: u8 = 255;

    println!("overflow_u8 : {}", overflow_u8);
    
    // runtime error will occur
    // use 'cargo run --release' to avoid program panic 
    overflow_u8 = overflow_u8 + 1;
    println!("overflow_u8 + 1 : {}", overflow_u8);

}
