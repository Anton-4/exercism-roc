module [combinations]

Combination : List U8

combinations : { sum : U8, size : U8, exclude ?? List U8 } -> List Combination
combinations = |{ sum, size, exclude ?? [] }|
    help = |target, digits|
        if target == 0 then
            [[]]
        else
            when digits is
                [] -> []
                [single] -> if single == target then [[single]] else []
                [first, .. as rest] ->
                    if first > target then
                        []
                    else
                        help((target - first), rest)
                        |> List.map(|combi| combi |> List.append(first))
                        |> List.concat(help(target, rest))
    available_digits =
        [1, 2, 3, 4, 5, 6, 7, 8, 9]
        |> List.drop_if(|digit| exclude |> List.contains(digit))
    help(sum, available_digits)
    |> List.keep_if(|combi| List.len(combi) == size |> Num.to_u64)
    |> List.map(List.reverse)
