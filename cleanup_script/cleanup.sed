#!/bin/sed -f

# Cleanup links
s/\\href/\r&/g
# $!N; /\\href[^}]*$/!P; D ;

# Blank lines
# /^$/N;/^\n$/D 

# Quotes
s/{\\textquoted\(bl\)\?left}/``/g
s/{\\textquoted\(bl\)\?right}/''/g
s/{\\textquoteright}/'/g
s/{\\textquotesingle}/'/g

s/e.g./&\\/g

# AWK handles these
# s/{\\bfseries\\color{black//g
# s/\({\)\?\\sffamily\\color{black\(}\)\?//g

# Unwanted strings
s/{\\sffamily\\color{black}//g
s/\\bigskip//g
s/{\\color{black//g
s/\(\\ \\\)\{0,30\}//g
s/\.}$/\./g
/\\centering.*$/d
/\\par/d
/\\end{document/d

# Fix images
s/\\includegraphics\(.*\)$/\\begin{figure}\[h!\]\n\t&\n\t\\caption{FIGURECAPTION}\n\\end{figure}/
s/ \\begin{figure}/\\begin{figure}/g
s/\\includegraphics.*{/&\.\/src\/figure\//g

# Delete pre-amble
1,/\\begin/d


# EOF
