use dep::b::foo;
use dep::c::C;

fn main(c: C) -> pub Field {
    foo(c)
}

#[test]
fn test_main() {
    let c = C { c: 6 };
    let x = main(c);
    assert(x == 36);
}
