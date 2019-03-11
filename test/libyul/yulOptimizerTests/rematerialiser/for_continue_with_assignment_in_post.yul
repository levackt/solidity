{
	let a
	let b
	for {let i := 0} lt(i, 10) {i := add(a, b) b := origin()}
	{
		a := origin()
		b := origin()

		b := caller()
		if callvalue() { continue }
		a := caller()
	}
	let c := b
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
//         b := origin()
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
//     let c := b
// }
