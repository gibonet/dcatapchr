# Size (in bytes) of a file
f <- system.file("cubi_POL_01_INFORMAZIONI.txt", package = "dcatapchr")
s <- file.size(f)
s

# Create a dcat:byteSize tag
dcat_byteSize(size = s)

# Remove f and s
rm(f, s)
