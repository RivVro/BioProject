CREATE DATABASE gnomad;
use gnomad;

CREATE TABLE variants (
  chrom VARCHAR(2),
  pos INTEGER(35),
  bef VARCHAR(2),
  aft VARCHAR(2),
  freq FLOAT(30),
  snpid VARCHAR(25)
);
