#!/usr/bin/python3
if __name__ == "__main__":
    from calculator_1 import add, sub, mul, div

    a = 10
    b = 5

    # Perform addition
    result_add = add(a, b)
    # Perform subtraction
    result_sub = sub(a, b)
    # Perform multiplication
    result_mul = mul(a, b)
    # Perform division
    result_div = div(a, b)

    print("{} + {} = {}".format(a, b, result_add))
    print("{} - {} = {}".format(a, b, result_sub))
    print("{} * {} = {}".format(a, b, result_mul))
    print("{} / {} = {}".format(a, b, result_div))
