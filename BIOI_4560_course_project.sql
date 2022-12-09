-- Name: Erin Ledford 
-- EMAIL: eledford@unomaha.edu
-- Class: BIOI 4560, Fall 2022 
-- Assignment #: Final Project
-- 
-- Honor Pledge: On my honor as a student of the University of Nebraska at 
-- Omaha, I have neither given nor received unauthorized help on 
-- this programming assignment.
-- 
-- Partners: List the full names and e-mail addresses of everyone you may have 
-- discussed the program with or worked on the program with. It is not necessary 
-- to list your instructor. If none, state "NONE". NONE
-- 
-- Sources: List all the sources you may have used for this assignment. It is 
-- not necessary to list course content or manual pages, just internet 
-- resources you looked up. If none, state "NONE." NCBI, Ensembl, Uniprot
-- MIT License

--Copyright (c) [2022] [Erin Ledford]

--Permission is hereby granted, free of charge, to any person obtaining a copy
--of this software and associated documentation files (the "Software"), to deal
--in the Software without restriction, including without limitation the rights
--to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
--copies of the Software, and to permit persons to whom the Software is
--furnished to do so, subject to the following conditions:

--The above copyright notice and this permission notice shall be included in all
--copies or substantial portions of the Software.

--THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
--IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
--FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
--AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
--LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
--OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
--SOFTWARE.

USE eledford;

--Drops if they already exist in the database
DROP TABLE IF EXISTS bacteria;

DROP TABLE IF EXISTS genus;

DROP TABLE IF EXISTS disease;

DROP TABLE IF EXISTS lit_references;

SET NAMES 'utf8';
SET CHARACTER SET utf8;

CREATE TABLE bacteria (
	tax_species VARCHAR(100),
	tax_domain VARCHAR(100),
	tax_phylum VARCHAR(100),
	tax_class VARCHAR(100),
	tax_order VARCHAR(100),
	tax_family VARCHAR(100),
	tax_genus VARCHAR(100)
);

CREATE TABLE genus (
	tax_genus VARCHAR(100),
	tax_id VARCHAR(100),
	gut_location VARCHAR(100),
	healthy_population TEXT,
	genus_description VARCHAR(6000)
);

CREATE TABLE disease (
	tax_genus VARCHAR(100),
	disease_name VARCHAR(100),
	disease_description VARCHAR(6000),
	disease_population TEXT
);

CREATE TABLE lit_references (
	tax_genus VARCHAR(100),
	lit_reference VARCHAR(1000)
);

INSERT INTO bacteria VALUES (
	"Faecalibacterium Prausnitzii",
	"Bacteria",
	"Bacillota",
	"Clostridia",
	"Eubacteriales",
	"Oscillospiraceae",
	"Faecalibacterium"
);

INSERT INTO genus VALUES (
	"Faecalibacterium Prausnitzii",
	"taxid853",
	"colon, stool",
	"Using the Human Microbiome Project's data, a collection of 544 samples collected from the colon, 
using 16s rRNA sequencing (V1-V3 and V3-V5) was analyzed using MicrobiomeDB to find healthy relative abundances. 
Faecalibacterium had a first quartile of 0.01, a median of 0.03, and a third quartile of 0.06 for relative abundance. <br>
Using the Human Microbiome Project's data, a collection of 146 samples collected from stool, 
using WGS was analyzed using MicrobiomeDB to find healthy relative abundances. Faecalibacterium has a first quartile of 0.0, 
a median of 0.02 and a third quartile of 0.04 for relative abundance. <br>
Using Excel, interquartile range and standard deviation were found for Faecalibacterium Prausnitzii. 
Faecalibacterium had an IQR of 0.05 and a standard deviation of 0.053988. <br>
A metadata study of faecalibacterium found a healthy population to be (7.5791 +/- 1.5812) log10 CFU/g feces, P < 0.0001.",
	"Faecalibacterium is a genus with only one species, Faecalibacterium Prausnitzii. This species is gram-positive, 
mesophilic, rod-shaped, and anaerobic in physiology. 
Faecalibacterium Prausnitzii consumes acetate and produces butyrate and bioactive anti-inflammatory molecules in the gut."
);

INSERT INTO disease VALUES (
	"Faecalibacterium Prausnitzii",
	"IBS",
	"Irritable Bowel Syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"A metadata study of faecalibacterium found the unhealthy population to be (6.7888 +/- 1.8875) log10 CFU/g feces."

);

INSERT INTO disease VALUES (
	"Faecalibacterium Prausnitzii",
	"IBS",
	"Irritable Bowel Syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"Using GMrepo relative abundances for IBS were found from 9 different datasets with 1,002 valid runs from stool 
samples (PRJEB11419, PRJNA268708, PRJNA46339, PRJNA302437, PRJNA392762, PRJNA386442, PRJDB5442, PRJNA373876, and PRJNA524547).  
Faecalibacterium had a relative abundance mean of 0.0576713, median of 0.0440823, first quartile of 0.01531798, 
third quartile of 0.08146605, IQR of 0.06614807, and standard deviation of 0.0522330. "
);

INSERT INTO disease VALUES(
	"Faecalibacterium Prausnitzii",
	"Crohn's Disease",
	"Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system.",
	"Using GMrepo relative abundances for Crohn's Disease were found from twenty-one different datasets with 1,920 valid 
runs from stool samples using 16S rRNA sequencing (PRJNA450340, PRJNA232056, PRJNA428898, 
PRJNA240346, PRJNA345074, PRJNA296920, PRJNA240658, PRJNA298762, PRJEB23207, PRJNA324147, 
PRJNA237362, PRJNA398089, PRJNA46323, PRJNA46321, PRJNA389280, PRJNA400072, PRJNA297124, 
PRJEB1220, PRJEB15371, and PRJNA603658). 
Faecalibacterium had a relative abundance mean of 0.0956357, median of 0.0684365, 
first quartile of 0.01620885, third quartile of 0.1435495, IQR of 0.12734065, and standard deviation of 0.0958836."

);

INSERT INTO disease VALUES (
	"Faecalibacterium Prausnitzii",
	"Ulcerative Colitis",
	"Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers 
in the inner lining of the colon. The causes of ulcerative colitis are not known but it is 
hypothesized that it may be caused by an immune response to a virus or bacteria that causes the 
immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for Ulcerative Colitis were found from 18 different 
datasets with 1,840 valid runs from stool samples using 16S rRNA sequencing 
(PRJNA5063, PRJEB1220, PRJNA398089, PRJNA389280, PRJNA400072, PRJNA388210, PRJNA285502, 
PRJNA450340, PRJNA368966, PRJNA438164, PRJNA240346, PRJDB4871, PRJNA318788, PRJNA232056, 
PRJNA298762, PRJNA233411, PRJNA284397, and PRJNA324147). 
Faecalibacterium has a relative abundance mean of 0.0726973, median of 0.0427561, first quartile of 0.00803849, 
third quartile of 0.103659, IQR of 0.09562051, and standard deviation of 0.0907504. "
);

INSERT INTO disease VALUES (
	"Faecalibacterium Prausnitzii",
	"IBD",
	"Irritable Bowel Disease is a combination of Crohn's Disease and Ulcerative Colitis. Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system. 
Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in the inner lining of the colon. 
The causes of ulcerative colitis are not known but it is hypothesized that it may be caused by an immune response to 
a virus or bacteria that causes the immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for IBD (Crohn's Disease and Ulcerative Colitis) 
from 8 different datasets with 605 valid runs from stool samples using 16S rRNA sequencing 
(PRJEB11419, PRJNA385949, PRJNA427597, PRJNA296920, PRJNA368966, PRJNA380944, PRJEB7949, and PRJNA284397). 
Faecalibacterium had a relative abundance mean of 0.0846279, median of 0.0780259, first quartile of 0.0069753, 
third quartile of 0.110807, IQR of 0.1038317, and standard deviation of 0.0586727. "
);

INSERT INTO lit_references VALUES (
	"Faecalibacterium Prausnitzii",
	"Parsaei, M., Sarafraz, N., Moaddab, S. Y., & Ebrahimzadeh Leylabadlo, H. (2021). 
The importance of Faecalibacterium prausnitzii in human health and diseases. 
New microbes and new infections, 43, 100928. https://doi.org/10.1016/j.nmni.2021.100928"
);

INSERT INTO bacteria VALUES (
	"Ruminococcus",
	"Bacteria",
	"Firmicutes",
	"Clostridia",
	"Clostridiales",
	"Ruminococcaceae",
	"Ruminococcus"
);

INSERT INTO genus VALUES (
	"Ruminococcus",
	"taxid1263",
	"colon, stool",
	"Using the Human Microbiome Project's data, a collection of 544 samples collected from the colon, 
using 16s rRNA sequencing (V1-V3 and V3-V5) was analyzed using MicrobiomeDB to find healthy relative abundances. 
Ruminococcus had a first quartile of 0.00, a median of 0.01, and a third quartile of 0.03 for relative abundance. <br>
Using Excel, interquartile range and standard deviation was found for Ruminococcus. Ruminococcus has an IQR of 0.03 and a 
standard deviation of 0.056998. <br>
Using the Human Microbiome Project's data, a collection of 146 samples collected from stool, 
using WGS was analyzed using MicrobiomeDB to find healthy relative abundances. 
Ruminococcus has a first quartile of 0.00, a median of 0.01, and a third quartile of 0.03 for relative abundance.",
	"Rumincoccus is a genus with 6 different species, as most of the Ruminococcus genus have been reclassified as Blautia. 
Ruminococcus is gram-positive and anaerobic. Ruminococcus degrade cellulose."

);

INSERT INTO disease VALUES (
	"Ruminococcus",
	"Crohn's Disease",
	"Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system.",
	"Using GMrepo relative abundances for Crohn's Disease were found from twenty-one different datasets with 1,920 valid 
runs from stool samples using 16S rRNA sequencing (PRJNA450340, PRJNA232056, PRJNA428898, 
PRJNA240346, PRJNA345074, PRJNA296920, PRJNA240658, PRJNA298762, PRJEB23207, PRJNA324147, 
PRJNA237362, PRJNA398089, PRJNA46323, PRJNA46321, PRJNA389280, PRJNA400072, PRJNA297124, 
PRJEB1220, PRJEB15371, and PRJNA603658). Ruminococcus had a relative abundance mean of 0.0278319, median of 0.0052573, 
first quartile of 0.000574155, third quartile of 0.0252307, IQR of 0.024656545, and standard deviation of 0.0530048."

);

INSERT INTO disease VALUES (
	"Ruminococcus",
	"Ulcerative Colitis",
	"Ulcerative colitis is an inflammatory bowel disease that causes inflammation and 
ulcers in the inner lining of the colon. The causes of ulcerative colitis are not known but it is 
hypothesized that it may be caused by an immune response to a virus or bacteria that causes the 
immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for Ulcerative Colitis were found from 18 different 
datasets with 1,840 valid runs from stool samples using 16S rRNA sequencing 
(PRJNA5063, PRJEB1220, PRJNA398089, PRJNA389280, PRJNA400072, PRJNA388210, PRJNA285502, 
PRJNA450340, PRJNA368966, PRJNA438164, PRJNA240346, PRJDB4871, PRJNA318788, PRJNA232056, 
PRJNA298762, PRJNA233411, PRJNA284397, and PRJNA324147). 
Ruminococcus had a relative abundance mean of 0.0183178, median of 0.0095594, first quartile of 0.001489625, 
third quartile of 0.01703943, IQR of 0.015549805, and standard deviation of 0.0233402."
);

INSERT INTO disease VALUES (
	"Ruminococcus",
	"IBS",
	"Irritable bowel syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"Using GMrepo relative abundances for IBS were found from 9 different datasets with 1,002 valid runs from stool samples 
(PRJEB11419, PRJNA268708, PRJNA46339, PRJNA302437, PRJNA392762, PRJNA386442, PRJDB5442, PRJNA373876, and PRJNA524547).  
Ruminococcus had a relative abundance mean of 0.0183178, median of 0.0095594, first quartile of 0.001489625, 
third quartile of 0.01703943, IQR of 0.015549805, and standard deviation of 0.0233402.  "
);

INSERT INTO disease VALUES (
	"Ruminococcus",
	"IBD",
	"Irritable Bowel Disease is a combination of Crohn's Disease and Ulcerative Colitis. Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system. 
Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in the inner lining of the colon. 
The causes of ulcerative colitis are not known but it is hypothesized that it may be caused by an immune response to 
a virus or bacteria that causes the immune system to attack the digestive tract.",
	"Using GMrepo relative abundances for IBD (Crohn's Disease and Ulcerative Colitis) from 8 different datasets with 
605 valid runs from stool samples using 16S rRNA sequencing 
(PRJEB11419, PRJNA385949, PRJNA427597, PRJNA296920, PRJNA368966, PRJNA380944, PRJEB7949, and PRJNA284397).
Ruminococcus had a relative abundance mean of 0.0409284, median of 0.0260026, first quartile of 0.00150559, 
third quartile of 0.0346045, IQR of 0.03309891, and standard deviation of 0.0498326. "
);

INSERT INTO lit_references VALUES (
	"Ruminococcus",
	"Henke, M. T., Kenny, D. J., Cassilly, C. D., Vlamakis, H., Xavier, R. J., & Clardy, J. (2019). 
Ruminococcus gnavus, a member of the human gut microbiome associated with Crohn's disease, 
produces an inflammatory polysaccharide. Proceedings of the National Academy of Sciences of the United States of 
America, 116(26), 12672-12677. https://doi.org/10.1073/pnas.1904099116"
);

INSERT INTO lit_references VALUES (
	"Ruminococcus",
	"La Reau, A. J., Meier-Kolthoff, J. P., & Suen, G. (2016). Sequence-based analysis of the genus Ruminococcus resolves 
its phylogeny and reveals strong host association. Microbial genomics, 2(12), e000099. https://doi.org/10.1099/mgen.0.000099"
);

INSERT INTO bacteria VALUES (
	"Bacteroides",
	"Bacteria",
	"Bacteroidota",
	"Bacteroidia",
	"Bacteroidales",
	"Bacteriodaceae",
	"Bacteroides"

);

INSERT INTO genus VALUES (
	"Bacteroides",
	"txid816",
	"colon, stool",
	"Using the Human Microbiome Project's data, a collection of 544 samples collected from the colon, 
using 16s rRNA sequencing (V1-V3 and V3-V5) was analyzed using MicrobiomeDB to find healthy relative abundances. 
It was found that Bacteroides has a first quartile of 0.28, a median of 0.48, and a third quartile 
of 0.66 for relative abundance. <br>
Using Excel, interquartile range and standard deviation was found for Bacteroides. Bacteroides has an IQR of 0.38 and a 
standard deviation of 0.053988. <br>
Using the Human Microbiome Project's data, a collection of 146 samples collected from stool, 
using WGS was analyzed using MicrobiomeDB to find healthy relative abundances. 
Bacteroides has a first quartile of 0.42, a median of 0.61, and a third quartile of 0.76 for relative abundance.",
	"Bacteroides consists of greater than 20 species. These species are anaerobic, bile-resistant, non-spore forming, 
gram-negative rods. Due to their physiology, Bacteroides species are antibiotic resistant as Bacteroides produce beta-lactamases, 
have ribosomal protection by tetQ class, and ribosomal modification. Bacteroides fragilis is the species of Bacteroides that is 
seen most often in clinical studies due to its virulence. Bacteroides are also known for their ability to do carbohydrate 
fermentation within the gut that allows the host to utilize as an energy source. "
);

INSERT INTO disease VALUES (
	"Bacteroides",
	"Crohn's Disease",
	"Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system.",
	"Using GMrepo relative abundances for Crohn's Disease were found from twenty-one different datasets with 1,920 valid 
runs from stool samples using 16S rRNA sequencing (PRJNA450340, PRJNA232056, PRJNA428898, 
PRJNA240346, PRJNA345074, PRJNA296920, PRJNA240658, PRJNA298762, PRJEB23207, PRJNA324147, 
PRJNA237362, PRJNA398089, PRJNA46323, PRJNA46321, PRJNA389280, PRJNA400072, PRJNA297124, 
PRJEB1220, PRJEB15371, and PRJNA603658). Bacteroides had a relative abundance mean of 0.3674688, median of 0.367715, 
first quartile of 0.1332588, third quartile of 0.5940405, IQR of 0.4607817, and standard deviation of 0.2552432."

);

INSERT INTO disease VALUES (
	"Bacteroides",
	"Ulcerative Colitis",
	"Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in 
the inner lining of the colon. The causes of ulcerative colitis are not known but it is 
hypothesized that it may be caused by an immune response to a virus or bacteria that causes the 
immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for Ulcerative Colitis were found from 18 different 
datasets with 1,840 valid runs from stool samples using 16S rRNA sequencing 
(PRJNA5063, PRJEB1220, PRJNA398089, PRJNA389280, PRJNA400072, PRJNA388210, PRJNA285502, 
PRJNA450340, PRJNA368966, PRJNA438164, PRJNA240346, PRJDB4871, PRJNA318788, PRJNA232056, 
PRJNA298762, PRJNA233411, PRJNA284397, and PRJNA324147). 
Bacteroides had a relative abundance mean of 0.3674688, median of 0.367715, first quartile of 0.1332588, 
third quartile of 0.5940405, IQR of 0.4607817, and standard deviation of 0.2552432."
);

INSERT INTO disease VALUES (
	"Bacteroides",
	"IBS",
	"Irritable bowel syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"Using GMrepo relative abundances for IBS were found from 9 different datasets with 1,002 valid runs from stool samples 
(PRJEB11419, PRJNA268708, PRJNA46339, PRJNA302437, PRJNA392762, PRJNA386442, PRJDB5442, PRJNA373876, and PRJNA524547). 
Bacteroides had a relative abundance mean of 0.2230661, median of 0.1943600, first quartile of 0.0883555405, 
third quartile of 0.300632, IQR of 0.2122764595, and standard deviation of 0.1628405. "
);

INSERT INTO disease VALUES (
	"Bacteroides",
	"IBD",
	"Irritable Bowel Disease is a combination of Crohn's Disease and Ulcerative Colitis. Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system. 
Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in the inner lining of the colon. 
The causes of ulcerative colitis are not known but it is hypothesized that it may be caused by an immune response to 
a virus or bacteria that causes the immune system to attack the digestive tract.",
	"Using GMrepo relative abundances for IBD (Crohn's Disease and Ulcerative Colitis) from 8 different datasets with 605 
valid runs from stool samples using 16S rRNA sequencing (PRJEB11419, PRJNA385949, PRJNA427597, PRJNA296920, PRJNA368966, 
PRJNA380944, PRJEB7949, and PRJNA284397). 
Bacteroides had a relative abundance mean of 0.2218626, median of 0.1953990, first quartile of 0.075642, 
third quartile of 0.300201, IQR of 0.224559, and standard deviation of 0.1651884. "

);

INSERT INTO lit_references VALUES (
	"Bacteroides",
	"Wexler H. M. (2007). Bacteroides: the good, the bad, and the nitty-gritty. Clinical microbiology reviews, 20(4), 
593-621. https://doi.org/10.1128/CMR.00008-07"

);

INSERT INTO lit_references VALUES (
	"Bacteroides",
	"Rasmussen, B. A., Bush, K., & Tally, F. P. (1993). Antimicrobial resistance in Bacteroides. 
Clinical infectious diseases : an official publication of the Infectious Diseases Society of America, 
16 Suppl 4, S390–S400. https://doi.org/10.1093/clinids/16.supplement_4.s390"
);

INSERT INTO lit_references VALUES (
	"Bacteroides",
	"Jasemi, S., Emaneini, M., Ahmadinejad, Z., Fazeli, M. S., Sechi, L. A., Sadeghpour Heravi, F., & 
Feizabadi, M. M. (2021). Antibiotic resistance pattern of Bacteroides fragilis isolated from clinical and 
colorectal specimens. Annals of clinical microbiology and antimicrobials, 20(1), 27. https://doi.org/10.1186/s12941-021-00435-w"
);

INSERT INTO bacteria VALUES (
	"Alistipes",
	"Bacteria",
	"Bacteroidota",
	"Bacteroidia",
	"Bacteroidales",
	"Rikenellacaea",
	"Alistipes"

);

INSERT INTO genus VALUES (
	"Alistipes",
	"txid239759",
	"colon, stool",
	"Using the Human Microbiome Project's data, a collection of 544 samples collected from the colon, 
using 16s rRNA sequencing (V1-V3 and V3-V5) was analyzed using MicrobiomeDB to find healthy relative abundances. Alistipes had a first quartile of 0.02, 
a median of 0.05 and a third quartile of 0.08 for relative abundance. <br>
Using Excel, interquartile range and standard devation was found for Alistipes. Alistipes has an IQR of 0.06 and a standard
deviation of 0.067779. <br>
Using the Human Microbiome Project's data, a collection of 146 samples collected from stool, 
using WGS was analyzed using MicrobiomeDB to find healthy relative abundances. Alistipes has a first quartile of 0.02, 
a median of 0.06, and a third quartile of 0.11 for relative abundance.",
	"Alistipes is a genus with 13 different species. 
Alistipes is anaerobic, gram-negative, rod-shaped, non-spore forming, and a relatively new genus as an offshoot of the 
Bacteroidetes phylum. Alistipes can hydrolyze tryptophan to indole. This genus is resistant to antimicrobials vanomycin, 
kanamycin, and colistin. "
);

INSERT INTO disease VALUES (
	"Alistipes",
	"Crohn's Disease",
	"Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system.",
	"Using GMrepo relative abundances for Crohn's Disease were found from twenty-one different datasets with 1,920 valid 
runs from stool samples using 16S rRNA sequencing (PRJNA450340, PRJNA232056, PRJNA428898, 
PRJNA240346, PRJNA345074, PRJNA296920, PRJNA240658, PRJNA298762, PRJEB23207, PRJNA324147, 
PRJNA237362, PRJNA398089, PRJNA46323, PRJNA46321, PRJNA389280, PRJNA400072, PRJNA297124, 
PRJEB1220, PRJEB15371, and PRJNA603658). 
Alistipes had a relative abundance mean of 0.0502573, median of 0.0329482, first quartile of 0.0034253, 
third quartile of 0.07318525, IQR of 0.06975995, and standard deviation of 0.0648733. "

);

INSERT INTO disease VALUES (
	"Alistipes",
	"Ulcerative Colitis",
	"Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in 
the inner lining of the colon. The causes of ulcerative colitis are not known but it is 
hypothesized that it may be caused by an immune response to a virus or bacteria that causes the 
immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for Ulcerative Colitis were found from 18 different 
datasets with 1,840 valid runs from stool samples using 16S rRNA sequencing 
(PRJNA5063, PRJEB1220, PRJNA398089, PRJNA389280, PRJNA400072, PRJNA388210, PRJNA285502, 
PRJNA450340, PRJNA368966, PRJNA438164, PRJNA240346, PRJDB4871, PRJNA318788, PRJNA232056, 
PRJNA298762, PRJNA233411, PRJNA284397, and PRJNA324147). 
Alistipes has a relative abundance mean of 0.0273334, median of 0.0112793, first quartile of 0.00114212, 
third quartile of 0.03472515, IQR of 0.03358303, and a standard deviation of 0.0442919. "
);

INSERT INTO disease VALUES (
	"Alistipes",
	"IBS",
	"Irritable bowel syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"Using GMrepo relative abundances for IBS were found from 9 different datasets with 1,002 valid runs from stool samples 
(PRJEB11419, PRJNA268708, PRJNA46339, PRJNA302437, PRJNA392762, PRJNA386442, PRJDB5442, PRJNA373876, and PRJNA524547). 
Alistipes had a relative abundance mean of 0.0341229, median of 0.0211782, first quartile of 0.004757183, 
third quartile of 0.04067645, IQR of 0.035919267, and a standard deviation of 0.0383598. "
);

INSERT INTO disease VALUES (
	"Alistipes",
	"IBD",
	"Irritable Bowel Disease is a combination of Crohn's Disease and Ulcerative Colitis. Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system. 
Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in the inner lining of the colon. 
The causes of ulcerative colitis are not known but it is hypothesized that it may be caused by an immune response to 
a virus or bacteria that causes the immune system to attack the digestive tract.",
	"Using GMrepo relative abundances for IBD (Crohn's Disease and Ulcerative Colitis) from 8 different datasets with 605 
valid runs from stool samples using 16S rRNA sequencing (PRJEB11419, PRJNA385949, PRJNA427597, PRJNA296920, PRJNA368966, 
PRJNA380944, PRJEB7949, and PRJNA284397). 
Alistipes had a relative abundance mean of 0.0332610, median of 0.0162673, first quartile of 0.0008243343, 
third quartile of 0.03440775, IQR of 0.0335834157, and standard deviation of 0.0496512. "

);

INSERT INTO lit_references VALUES (
	"Alistipes",
	"Parker, B. J., Wearsch, P. A., Veloo, A., & Rodriguez-Palacios, A. (2020). The Genus Alistipes: 
Gut Bacteria With Emerging Implications to Inflammation, Cancer, and Mental Health. Frontiers in immunology, 11, 906.
 https://doi.org/10.3389/fimmu.2020.00906"
);

INSERT INTO bacteria VALUES (
	"Parabacteroides",
	"Bacteria",
	"Bacteroidota",
	"Bacteroidia",
	"Bacteroidales",
	"Tannerellacaea",
	"Parabacteroides"

);

INSERT INTO genus VALUES (
	"Parabacteroides",
	"taxid375288",
	"colon, stool",
	"Using the Human Microbiome Project's data, a collection of 544 samples collected from the colon, 
using 16s rRNA sequencing (V1-V3 and V3-V5) was analyzed using MicrobiomeDB to find healthy relative abundances. 
Parabacteroides had a first quartile of 0.01, a median of 0.03, and a third quartile of 0.06 for relative abundance. <br>
Using Excel, interquartile range and standard deviation was found for Parabacteroides. Parabacteroides had an IQR of 0.05 and a
standard deviation of 0.042527. <br> 
Using the Human Microbiome Project's data, a collection of 146 samples collected from stool, 
using WGS was analyzed using MicrobiomeDB to find healthy relative abundances. 
Parabacteroides has a first quartile of 0.02, a median of 0.05, and a third quartile of 0.08 for relative abundance. <br>",
	"Parabacteroides are gram-negative, anaerobic, non-spore forming, non-motile and rod-shaped. Parabacteroides species were once under the Bacteroides genus 
but were moved under the new genus due to the differences in phylogeny compared to other Bacteroides species. 
There are 15 Parabacteroides species, but only 10 species have valid names. "

);

INSERT INTO disease VALUES (
	"Parabacteroides",
	"Crohn's Disease",
	"Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system.",
	"Using GMrepo relative abundances for Crohn's Disease were found from twenty-one different datasets with 1,920 valid 
runs from stool samples using 16S rRNA sequencing (PRJNA450340, PRJNA232056, PRJNA428898, 
PRJNA240346, PRJNA345074, PRJNA296920, PRJNA240658, PRJNA298762, PRJEB23207, PRJNA324147, 
PRJNA237362, PRJNA398089, PRJNA46323, PRJNA46321, PRJNA389280, PRJNA400072, PRJNA297124, 
PRJEB1220, PRJEB15371, and PRJNA603658). 
Parabacteroides had a relative abundance mean of 0.0489937, median of 0.0216133, first quartile of 0.008564, 
third quartile of 0.0523456, IQR of 0.0437816, and standard deviation of 0.1015974."

);

INSERT INTO disease VALUES (
	"Parabacteroides",
	"Ulcerative Colitis",
	"Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in 
the inner lining of the colon. The causes of ulcerative colitis are not known but it is 
hypothesized that it may be caused by an immune response to a virus or bacteria that causes the 
immune system to attack the digestive tract. ",
	"Using GMrepo relative abundances for Ulcerative Colitis were found from 18 different 
datasets with 1,840 valid runs from stool samples using 16S rRNA sequencing 
(PRJNA5063, PRJEB1220, PRJNA398089, PRJNA389280, PRJNA400072, PRJNA388210, PRJNA285502, 
PRJNA450340, PRJNA368966, PRJNA438164, PRJNA240346, PRJDB4871, PRJNA318788, PRJNA232056, 
PRJNA298762, PRJNA233411, PRJNA284397, and PRJNA324147). 
Parabacteroides has a relative abundance mean of 0.0284427, median of 0.0125685, first quartile of 0.0018509, 
third quartile of 0.0424533, IQR of 0.0406024, and standard deviation of 0.0401865.  "
);

INSERT INTO disease VALUES (
	"Parabacteroides",
	"IBS",
	"Irritable bowel syndrome is an intestinal disorder that causes bloating, abdominal pain, diarrhea, and constipation. 
It is believed that the gut microbiome may be one of the causes of irritable bowel syndrome, 
but the exact cause of IBS is not known.",
	"Using GMrepo relative abundances for IBS were found from 9 different datasets with 1,002 valid runs from stool samples 
(PRJEB11419, PRJNA268708, PRJNA46339, PRJNA302437, PRJNA392762, PRJNA386442, PRJDB5442, PRJNA373876, and PRJNA524547). 
Parabacteroides had a relative abundance mean of 0.0195690, median of 0.0118683, first quartile of 0.003970945, 
third quartile of 0.0245938, IQR of 0.020622855, and standard deviation of 0.0250039."
);

INSERT INTO disease VALUES (
	"Parabacteroides",
	"IBD",
	"Irritable Bowel Disease is a combination of Crohn's Disease and Ulcerative Colitis. Crohn's disease is a type of inflammatory bowel disease that causes inflammation in the digestive tract, 
most commonly in the small intestine. It is also hypothesized that this disease may be caused by an immune response to a 
virus or bacteria that causes the immune system to attack the digestive system. 
Ulcerative colitis is an inflammatory bowel disease that causes inflammation and ulcers in the inner lining of the colon. 
The causes of ulcerative colitis are not known but it is hypothesized that it may be caused by an immune response to 
a virus or bacteria that causes the immune system to attack the digestive tract.",
	"Using GMrepo relative abundances for IBD (Crohn's Disease and Ulcerative Colitis) from 8 different datasets with 605 
valid runs from stool samples using 16S rRNA sequencing (PRJEB11419, PRJNA385949, PRJNA427597, PRJNA296920, PRJNA368966, 
PRJNA380944, PRJEB7949, and PRJNA284397). 
Parabacteroides had a relative abundance mean of 0.0324641, median of 0.0166488, first quartile of 0.000121562, 
third quartile of 0.02909633, IQR of 0.028974768, and standard deviation of 0.0514218."
);

INSERT INTO lit_references VALUES (
	"Parabacteroides",
	"Sakamoto, M., & Benno, Y. (2006). Reclassification of Bacteroides distasonis, Bacteroides goldsteinii and 
Bacteroides merdae as Parabacteroides distasonis gen. nov., comb. nov., Parabacteroides goldsteinii comb. nov. 
and Parabacteroides merdae comb. nov. International journal of systematic and evolutionary microbiology, 56(Pt 7), 
1599-1605. https://doi.org/10.1099/ijs.0.64192-0"
);

INSERT INTO lit_references VALUES (
	"Parabacteroides",
	"Ezeji, J. C., Sarikonda, D. K., Hopperton, A., Erkkila, H. L., Cohen, D. E., Martinez, S. P., Cominelli, F., Kuwahara, 
T., Dichosa, A., Good, C. E., Jacobs, M. R., Khoretonenko, M., Veloo, A., & Rodriguez-Palacios, A. (2021). 
Parabacteroides distasonis: intriguing aerotolerant gut anaerobe with emerging antimicrobial resistance and pathogenic and 
probiotic roles in human health. Gut microbes, 13(1), 1922241. https://doi.org/10.1080/19490976.2021.1922241"
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Human Microbiome Project Consortium. (2012, June 13). Structure, function and diversity of the healthy human microbiome. 
Nature. Retrieved September 21, 2022, from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3564958/ "
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Human Microbiome Project Consortium (2012). A framework for human microbiome research. Nature, 486(7402), 
215-221. https://doi.org/10.1038/nature11209"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"National Center for Biotechnology Information (NCBI)[Internet]. Bethesda (MD): National Library of Medicine (US), 
National Center for Biotechnology Information; [1988] - [cited 2022 October 17]. Available from: https://www.ncbi.nlm.nih.gov/"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Oliveira, F. S., Brestelli, J., Cade, S., Zheng, J., Iodice, J., Fischer, S., Aurrecoechea, C., Kissinger, J. C., 
Brunk, B. P., Stoeckert, C. J., Fernandes, G. R., Roos, D. S., & Beiting, D. P. (2017). MicrobiomeDB: 
A Systems Biology platform for integrating, mining and analyzing microbiome experiments. 
Nucleic Acids Research, 46(D1). https://doi.org/10.1093/nar/gkx1027 "
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Nagao-Kitamoto, H., & Kamada, N. (2017). Host-microbial Cross-talk in Inflammatory Bowel Disease. 
Immune network, 17(1), 1-12. https://doi.org/10.4110/in.2017.17.1.1"
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Gevers, D., Kugathasan, S., Denson, L. A., Vazquez-Baeza, Y., Van Treuren, W., Ren, B., Schwager, E., 
Knights, D., Song, S. J., Yassour, M., Morgan, X. C., Kostic, A. D., Luo, C., Gonzalez, A., McDonald, D., 
Haberman, Y., Walters, T., Baker, S., Rosh, J., Stephens, M., ... Xavier, R. J. (2014). 
The treatment-naive microbiome in new-onset Crohn's disease. Cell host & microbe, 15(3), 382-392. 
https://doi.org/10.1016/j.chom.2014.02.005"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Die Dai, Jiaying Zhu, Chuqing Sun, Min Li, Jinxin Liu, Sicheng Wu, Kang Ning, Li-jie He, Xing-Ming Zhao, 
Wei-Hua Chen, GMrepo v2: a curated human gut microbiome database with special focus on disease markers and 
cross-dataset comparison, Nucleic Acids Research, Volume 50, Issue D1, 7 January 2022, 
Pages D777-D784, https://doi.org/10.1093/nar/gkab1019"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Comprehensive Database for Association Between Microbiota and Disease. Frontiers in Physiology, 12, 697059. 
https://www.frontiersin.org/articles/10.3389/fphys.2021.697059/full"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Jin, H., Hu, G., Sun, C., Duan, Y., Zhang, Z., Liu, Z., Zhao, X. M., & Chen, W. H. (2022). 
mBodyMap: a curated database for microbes across human body and their associations with health and diseases. 
Nucleic acids research, 50(D1), D808-D816. https://doi.org/10.1093/nar/gkab973"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Noecker C, Eng A, Srinivasan S, Theriot CM, Young VB, Jansson JK, Fredricks DN, Borenstein E. 
Metabolic Model-Based Integration of Microbiome Taxonomic and Metabolomic Profiles Elucidates 
Mechanistic Links between Ecological and Metabolic Variation. mSystems. 
2016 Jan-Feb;1(1):e00013-15. doi: 10.1128/mSystems.00013-15. Epub 2016 Jan 19. PMID: 27239563; PMCID: PMC4883586."
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA46879 human metagenome (ID 46879) - BioProject - NCBI (nih.gov)"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"McDonald, D., Hyde, E., Debelius, J. W., Morton, J. T., Gonzalez, A., Ackermann, G., Aksenov, A. A., Behsaz, B., 
Brennan, C., Chen, Y., DeRight Goldasich, L., Dorrestein, P. C., Dunn, R. R., Fahimipour, A. K., Gaffney, J., Gilbert, 
J. A., Gogul, G., Green, J. L., Hugenholtz, P., Humphrey, G., ... Knight, R. (2018). 
American Gut: an Open Platform for Citizen Science Microbiome Research. mSystems, 3(3), e00031-18. 
https://doi.org/10.1128/mSystems.00031-18"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Pozuelo, M., Panda, S., Santiago, A., Mendez, S., Accarino, A., Santos, J., Guarner, F., Azpiroz, F., 
& Manichanh, C. (2015). Reduction of butyrate- and methane-producing microorganisms in patients with 
Irritable Bowel Syndrome. Scientific reports, 5, 12693. https://doi.org/10.1038/srep12693"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"NIH HMP Working Group, Peterson, J., Garges, S., Giovanni, M., McInnes, P., Wang, L., Schloss, J. A., Bonazzi, V., 
McEwen, J. E., Wetterstrand, K. A., Deal, C., Baker, C. C., Di Francesco, V., Howcroft, T. K., Karp, R. W., 
Lunsford, R. D., Wellington, C. R., Belachew, T., Wright, M., Giblin, C., ... Guyer, M. (2009). 
The NIH Human Microbiome Project. Genome research, 19(12), 2317-2323. https://doi.org/10.1101/gr.096651.109"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Mizuno, S., Masaoka, T., Naganuma, M., Kishimoto, T., Kitazawa, M., Kurokawa, S., Nakashima, M., Takeshita, K., 
Suda, W., Mimura, M., Hattori, M., & Kanai, T. (2017). 
Bifidobacterium-Rich Fecal Donor May Be a Positive Predictor for Successful Fecal Microbiota Transplantation in 
Patients with Irritable Bowel Syndrome. Digestion, 96(1), 29-38. https://doi.org/10.1159/000471919"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Sicheng Wu, Chuqing Sun, Yanze Li, Teng Wang, Longhao Jia, Senying Lai, Yaling Yang, Pengyu Luo, Die Dai, 
Yong-Qing Yang, Qibin Luo, Na L Gao, Kang Ning, Li-jie He, Xing-Ming Zhao, Wei-Hua Chen, 
GMrepo: a database of curated and consistently annotated human gut metagenomes, Nucleic Acids Research, 
Volume 48, Issue D1, 08 January 2020, Pages D545-D553, https://doi.org/10.1093/nar/gkz764"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA302437 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA302437"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA392762 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA392762"
);

INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA386442 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA386442"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA373876 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA373876"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA524547 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA524547"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Hall, A. B., Yassour, M., Sauk, J., Garner, A., Jiang, X., Arthur, T., Lagoudas, G. K., Vatanen, T., Fornelos, 
N., Wilson, R., Bertha, M., Cohen, M., Garber, J., Khalili, H., Gevers, D., Ananthakrishnan, A. N., Kugathasan, 
S., Lander, E. S., Blainey, P., Vlamakis, H., ... Huttenhower, C. (2017). 
A novel Ruminococcus gnavus clade enriched in inflammatory bowel disease patients. Genome medicine, 
9(1), 103. https://doi.org/10.1186/s13073-017-0490-5"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Staley, C., Hamilton, M. J., Vaughn, B. P., Graiziger, C. T., Newman, K. M., Kabage, A. J., 
Sadowsky, M. J., & Khoruts, A. (2017). Successful Resolution of Recurrent Clostridium difficile Infection using 
Freeze-Dried, Encapsulated Fecal Microbiota; Pragmatic Cohort Study. The American journal of gastroenterology, 
112(6), 940-947. https://doi.org/10.1038/ajg.2017.6"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Goyal, A., Yeh, A., Bush, B. R., Firek, B. A., Siebold, L. M., Rogers, M. B., Kufen, A. D., & Morowitz, 
M. J. (2018). Safety, Clinical Response, and Microbiome Findings Following Fecal Microbiota Transplant in 
Children With Inflammatory Bowel Disease. Inflammatory bowel diseases, 24(2), 410-421. https://doi.org/10.1093/ibd/izx035"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Harris, R. A., Shah, R., Hollister, E. B., Tronstad, R. R., Hovdenak, N., Szigeti, R., Versalovic, J., 
& Kellermayer, R. (2016). Colonic Mucosal Epigenome and Microbiome Development in Children and Adolescents. 
Journal of immunology research, 2016, 9170162. https://doi.org/10.1155/2016/9170162"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Nielsen, H. B., Almeida, M., Juncker, A. S., Rasmussen, S., Li, J., Sunagawa, S., Plichta, D. R., 
Gautier, L., Pedersen, A. G., Le Chatelier, E., Pelletier, E., Bonde, I., Nielsen, T., Manichanh, C., 
Arumugam, M., Batto, J. M., Quintanilha Dos Santos, M. B., Blom, N., Borruel, N., Burgdorf, K. S., ...
 MetaHIT Consortium (2014). Identification and assembly of genomes and genetic elements in complex metagenomic samples 
without using reference genomes. Nature biotechnology, 32(8), 822-828. https://doi.org/10.1038/nbt.2939"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Lloyd-Price, J., Arze, C., Ananthakrishnan, A. N., Schirmer, M., Avila-Pacheco, J., Poon, T. W., 
Andrews, E., Ajami, N. J., Bonham, K. S., Brislawn, C. J., Casero, D., Courtney, H., Gonzalez, A., 
Graeber, T. G., Hall, A. B., Lake, K., Landers, C. J., Mallick, H., Plichta, D. R., Prasad, M., ... 
Huttenhower, C. (2019). Multi-omics of the gut microbial ecosystem in inflammatory bowel diseases. Nature, 
569(7758), 655-662. https://doi.org/10.1038/s41586-019-1237-9"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Franzosa, E. A., Sirota-Madi, A., Avila-Pacheco, J., Fornelos, N., Haiser, H. J., Reinker, S., Vatanen, T., 
Hall, A. B., Mallick, H., McIver, L. J., Sauk, J. S., Wilson, R. G., Stevens, B. W., Scott, J. M., Pierce, K., 
Deik, A. A., Bullock, K., Imhann, F., Porter, J. A., Zhernakova, A., ... Xavier, R. J. (2019). 
Gut microbiome structure and metabolic activity in inflammatory bowel disease. Nature microbiology, 
4(2), 293-305. https://doi.org/10.1038/s41564-018-0306-4"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Damman, C. J., Brittnacher, M. J., Westerhoff, M., Hayden, H. S., Radey, M., Hager, K. R., Marquis, S. R., 
Miller, S. I., & Zisman, T. L. (2015). Low Level Engraftment and 
Improvement following a Single Colonoscopic Administration of Fecal Microbiota to Patients with Ulcerative Colitis. 
PloS one, 10(8), e0133925. https://doi.org/10.1371/journal.pone.0133925"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Forbes, J. D., Chen, C. Y., Knox, N. C., Marrie, R. A., El-Gabalawy, H., de Kievit, T., Alfa, M., 
Bernstein, C. N., & Van Domselaar, G. (2018). A comparative study of the gut microbiota in immune-mediated 
inflammatory diseases-does a common dysbiosis exist?. Microbiome, 6(1), 221. https://doi.org/10.1186/s40168-018-0603-4"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Del Chierico, F., Gnani, D., Vernocchi, P., Petrucca, A., Alisi, A., Dallapiccola, B., Nobili, V., 
& Lorenza, P. (2014). Meta-omic platforms to assist in the understanding of NAFLD gut microbiota alterations: 
tools and applications. International journal of molecular sciences, 15(1), 684-711. https://doi.org/10.3390/ijms15010684"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Chehoud, C., Dryga, A., Hwang, Y., Nagy-Szakal, D., Hollister, E. B., Luna, R. A., Versalovic, J., 
Kellermayer, R., & Bushman, F. D. (2016). Transfer of Viral Communities between Human Individuals during 
Fecal Microbiota Transplantation. mBio, 7(2), e00322. https://doi.org/10.1128/mBio.00322-16
"
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Chehoud, C., Dryga, A., Hwang, Y., Nagy-Szakal, D., Hollister, E. B., Luna, R. A., 
Versalovic, J., Kellermayer, R., & Bushman, F. D. (2016). Transfer of Viral 
Communities between Human Individuals during Fecal Microbiota Transplantation. mBio, 
7(2), e00322. https://doi.org/10.1128/mBio.00322-16"
);

INSERT INTO lit_references VALUES (
	"Everything",
	"Harris, R. A., Shah, R., Hollister, E. B., Tronstad, R. R., Hovdenak, N., Szigeti, R., Versalovic, J., 
& Kellermayer, R. (2016). Colonic Mucosal Epigenome and Microbiome Development in Children and Adolescents. 
Journal of immunology research, 2016, 9170162. https://doi.org/10.1155/2016/9170162"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA50637 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA50637"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJEB1220 https://www.ncbi.nlm.nih.gov/bioproject/PRJEB1220"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA398089 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA398089"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA389280 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA389280"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA400072 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA400072"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA388210 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA388210"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA285502 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA285502"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA450340 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA450340"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA368966 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA368966"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA438164 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA438164"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA240346 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA240346"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJDB4871 https://www.ncbi.nlm.nih.gov/bioproject/PRJDB4871"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA318788 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA318788"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA232056 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA232056"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA298762 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA298762"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA233411 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA233411"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA284397 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA284397"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA324147 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA324147"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA428898 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA428898 (CD)"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Mondot, S., Lepage, P., Seksik, P., Allez, M., Tréton, X., Bouhnik, Y., Colombel, J. F., Leclerc, M., 
Pochart, P., Dore, J., Marteau, P., & GETAID (2016). Structural robustness of the gut mucosal microbiota is 
associated with Crohn's disease remission after surgery. Gut, 65(6), 954-962. 
https://doi.org/10.1136/gutjnl-2015-309184 PRJNA345074"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA240658 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA240658"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Gigliucci, F., von Meijenfeldt, F. A. B., Knijn, A., Michelacci, V., Scavia, G., Minelli, F., Dutilh, 
B. E., Ahmad, H. M., Raangs, G. C., Friedrich, A. W., Rossen, J. W. A., & Morabito, S. (2018). 
Metagenomic Characterization of the Human Intestinal Microbiota in Fecal Samples from STEC-Infected Patients. 
Frontiers in cellular and infection microbiology, 8, 25. https://doi.org/10.3389/fcimb.2018.00025 PRJEB23207"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Li, E., Hamm, C. M., Gulati, A. S., Sartor, R. B., Chen, H., Wu, X., Zhang, T., Rohlf, F. J., Zhu, W., Gu, C., 
Robertson, C. E., Pace, N. R., Boedeker, E. C., Harpaz, N., Yuan, J., Weinstock, G. M., Sodergren, E., & Frank, D. N. 
(2012). Inflammatory bowel diseases phenotype, C. difficile and NOD2 genotype are associated with shifts in human 
ileum associated microbial composition. PloS one, 7(6), e26284. PRJNA46323 https://doi.org/10.1371/journal.pone.0026284"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Zhang, T., DeSimone, R. A., Jiao, X., Rohlf, F. J., Zhu, W., Gong, Q. Q., Hunt, S. R., Dassopoulos, T., 
Newberry, R. D., Sodergren, E., Weinstock, G., Robertson, C. E., Frank, D. N., & Li, E. (2012). 
Host genes related to paneth cells and xenobiotic metabolism are associated with shifts in human ileum-associated 
microbial composition. PloS one, 7(6), e30044. PRJNA46323 https://doi.org/10.1371/journal.pone.0030044"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA46321 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA46321 (CD)"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Lewis, J. D., Chen, E. Z., Baldassano, R. N., Otley, A. R., Griffiths, A. M., Lee, D., Bittinger, K., Bailey, A., 
Friedman, E. S., Hoffmann, C., Albenberg, L., Sinha, R., Compher, C., Gilroy, E., Nessel, L., Grant, A., Chehoud, 
C., Li, H., Wu, G. D., & Bushman, F. D. (2015). Inflammation, Antibiotics, and Diet as Environmental 
Stressors of the Gut Microbiome in Pediatric Crohn's Disease. Cell host & microbe, 18(4), 
489-500. https://doi.org/10.1016/j.chom.2015.09.008"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJNA297124 https://www.ncbi.nlm.nih.gov/bioproject/PRJNA297124 (CD)"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"PRJEB15371 https://www.ncbi.nlm.nih.gov/bioproject/PRJEB15371 (CD)"
);
INSERT INTO lit_references VALUES (
	"Everything",
	"Ambrozkiewicz, F., Karczmarski, J., Kulecka, M., Paziewska, A., Niemira, M., Zeber-Lubecka, N., Zagorowicz, 
E., Kretowski, A., & Ostrowski, J. (2020). In search for interplay between stool microRNAs, 
microbiota and short chain fatty acids in Crohn's disease - a preliminary study. BMC gastroenterology, 
20(1), 307. PRJNA603658 https://doi.org/10.1186/s12876-020-01444-3"
);


