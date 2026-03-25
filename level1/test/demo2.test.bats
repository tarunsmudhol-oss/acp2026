#!/usr/bin/env bats

@test "test 1 - rectangle 1 is largest" {
run bash -c './demo2.exe <<EOF
Rect1
10
5
Rect2
4
5
Rect3
3
6
EOF'

echo "$output" >&3

[[ "$output" = *"Largest Rectangle: Rect1"* ]]
}

@test "test 2 - rectangle 2 is largest" {
run bash -c './demo2.exe <<EOF
R1
2
3
R2
10
2
R3
4
4
EOF'

echo "$output" >&3

[[ "$output" = *"Largest Rectangle: R2"* ]]
}

@test "test 3 - rectangle 3 is largest" {
run bash -c './demo2.exe <<EOF
A
3
3
B
2
5
C
6
2
EOF'

echo "$output" >&3

[[ "$output" = *"Largest Rectangle: C"* ]]
}

@test "test 4 - equal largest areas" {
run bash -c './demo2.exe <<EOF
R1
4
5
R2
2
10
R3
3
6
EOF'

echo "$output" >&3

[[ "$output" = *"Two or more rectangles have equal largest area."* ]]
}