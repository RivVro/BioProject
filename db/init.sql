#creeer een database
CREATE DATABASE gnomad;
use gnomad;

#wat voor soort waarden komen er in de tabel
CREATE TABLE variants (
  chrom VARCHAR(2),
  pos INTEGER(35),
  bef VARCHAR(2),
  aft VARCHAR(2),
  freq FLOAT(30),
  snpid VARCHAR(25)
);

INSERT INTO variants
  (chrom, pos, bef, aft, freq, snpid)
#waarden afkomstig uit gnomad
VALUES
  ('Y','3453','A','G','0.3533','snp'),
  ('Y','3432','T','G','0.323432','snp');
