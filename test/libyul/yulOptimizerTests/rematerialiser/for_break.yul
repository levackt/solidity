{
	let a
	let b
	for {let i := 0} lt(i, 10) {i := add(a, b)} {
		a := origin()
		b := origin()

		b := caller()
		if callvalue() { break }
		a := caller()
	}
}
// ----
// rematerialiser
// {
//     let a
//     let b
//     for {
//         let i := 0
//     }
//     lt(i, 10)
//     {
//         i := add(caller(), caller())
//     }
//     {
//         a := origin()
//         b := origin()
//         b := caller()
//         if callvalue()
//         {
//             break
//         }
//         a := caller()
//     }
// }
