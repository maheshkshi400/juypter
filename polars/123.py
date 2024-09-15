import polars as pl

df = pl.read_csv(r"C:\Users\User\juypter\files\empdf12.CSV")
df = df.unique()
print(df)