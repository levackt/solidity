{
	let a
	let b
	for {let i := 0} lt(i, 10) {i := add(a, b)}
	{
		a := origin()
		b := origin()

		b := caller()
		if callvalue() { continue }
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
//         i := add(a, caller())
//     }
//     {
//         a := origin()
//         b := origin()
//         b := caller()
//         if callvalue()
//         {
//             continue
//         }
//         a := caller()
//     }
// }
