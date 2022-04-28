from difflib import SequenceMatcher
str__a = open("C:/Users/ak781/Desktop/BIo Info/lab2/str1.txt")
str__b = open("C:/Users/ak781/Desktop/BIo Info/lab2/str2.txt")
str_a = str__a.read()
str_b = str__b.read()
#  print(str_a)
#  print(str_b)
# str_a = "aaccttgg"
# str_b = "acactgtga"


def lcs(s1, s2):
    matrix = [["" for x in range(len(s2))] for x in range(len(s1))]
    for i in range(len(s1)):
        for j in range(len(s2)):
            if s1[i] == s2[j]:
                if i == 0 or j == 0:
                    matrix[i][j] = s1[i]
                else:
                    matrix[i][j] = matrix[i-1][j-1] + s1[i]
            else:
                matrix[i][j] = max(matrix[i-1][j], matrix[i][j-1], key=len)
    cs = matrix[-1][-1]
    return len(cs), cs


print(lcs(str_a, str_b))
