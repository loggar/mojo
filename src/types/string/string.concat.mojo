def concat_string(str1: String, str2: String) -> String:
    return str1 + str2


def concat_lieral_string(str1: String, str2: StringLiteral) -> String:
    return str1 + " " + str2


def concat_from_lieral_string(str1: StringLiteral, str2: StringLiteral) -> String:
    return str1 + " " + str2


def cannot_mutate_literal_string(str1: StringLiteral) -> StringLiteral:
    # str1 += "a"
    return str1
