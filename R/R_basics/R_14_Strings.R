c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quotes'
print(d)

e <- 'Mixed quotes"'
print(e)

f <- 'single quote \'\' inside single quote' # nolint
print(f)


# Manulation

abc <- "hello man"
def <- "How"
hij <- 'are you feeling? ' # nolint: quotes_linter.

print(paste(abc, def, hij))


print(paste(abc, def, hij, sep = "-"))

print(paste(abc, def, hij, sep = "-",collapse = ""))
