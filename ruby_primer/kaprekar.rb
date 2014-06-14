=begin
Kaprekar's Number

Problem Statement

9 is a Kaprekar number since
9 ^ 2 = 81 and 8 + 1 = 9

297 is also Kaprekar number since
297 ^ 2 = 88209 and 88 + 209 = 297.

In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1
digits, the resultant sum is k.
Find if a given number is a Kaprekar number.
=end

def kaprekar?(k)
  digit = (k**2).to_s.split(//)
  n = digit.count if digit.count >= 2
  left = digit[0..((n/2)-1)].join("")
  right = digit[n/2..n-1].join("")
  sum = left.to_i + right.to_i
  sum == k
end