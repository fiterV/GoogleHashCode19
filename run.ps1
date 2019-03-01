g++ *.cpp --std=c++11 -o compiled
Get-ChildItem "tests/" -Filter *.txt | 
Foreach-Object {
    $input  = $_.Name
    $output = $_.BaseName + ".out"
    
    start compiled.exe "tests/$input tests/$output"

}
#start compiled.exe "tests/a.txt tests/a.out"
#start compiled.exe "tests/b.txt tests/b.out"
#start compiled.exe "tests/c.txt tests/c.out"
#start compiled.exe "tests/d.txt tests/d.out"
#start compiled.exe "tests/e.txt tests/e.out"