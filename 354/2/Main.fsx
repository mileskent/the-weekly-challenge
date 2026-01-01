let shiftGrid (grid: int[][]) (k: int) : int[][] =
    let splitAt n xs = 
        List.take n xs, List.skip n xs

    let gridList = 
        grid 
        |> Array.toList 
        |> List.map Array.toList

    match gridList with
    | [] | [[]] -> grid
    | _ ->
        let flat = List.concat gridList

        let flatLen = List.length flat
        let shift = k % flatLen
        let prefix, suffix = List.splitAt (flatLen - shift) flat

        let n = List.length (List.head gridList)
        let shifted = suffix @ prefix

        let resultList = List.chunkBySize n shifted
        resultList 
        |> List.map List.toArray 
        |> List.toArray

let printGrid (grid: int[][]) =
    grid |> Array.iter (fun row -> printfn "%A" row)
    printfn ""

let example1 = [| [|1; 2; 3|]; [|4; 5; 6|]; [|7; 8; 9|] |]
printfn "Example 1 (k=1):"
printfn "Input:"
example1 |> printGrid
printfn "Output:"
shiftGrid example1 1 |> printGrid

let example2 = [| [|10; 20|]; [|30; 40|] |]
printfn "Example 2 (k=1):"
printfn "Input:"
example2 |> printGrid
printfn "Output:"
shiftGrid example2 1 |> printGrid

let example3 = [| [|1; 2|]; [|3; 4|]; [|5; 6|] |]
printfn "Example 3 (k=1):"
printfn "Input:"
example3 |> printGrid
printfn "Output:"
shiftGrid example3 1 |> printGrid

let example4 = [| [|1; 2; 3|]; [|4; 5; 6|] |]
printfn "Example 4 (k=5):"
printfn "Input:"
example4 |> printGrid
printfn "Output:"
shiftGrid example4 5 |> printGrid

let example5 = [| [|1; 2; 3; 4|] |]
printfn "Example 5 (k=1):"
printfn "Input:"
example5 |> printGrid
printfn "Output:"
shiftGrid example5 1 |> printGrid
