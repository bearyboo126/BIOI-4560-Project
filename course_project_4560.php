<!DOCTYPE html>
<html>
<!-- Name: Erin Ledford
     Email: eledford@unomaha.edu
     Class: BIOI 4560
     Assignment #: Final Project

     Honor Pledge: On my honor as a student of the University of Nebraska at 
   Omaha, I have neither given nor received unauthorized help on 
   this programming assignment.

     Sources: List all the sources you may have used for this assignment. It is 
   not necessary to list course content or manual pages, just internet 
   resources you looked up. If none, state "NONE." -->

<!-- MIT License

Copyright (c) [2022] [Erin Ledford]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.-->
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<body>
<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.sidenav {
	height: 100%;
	width: 200px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #111;
	overflow-x: hidden;
}

.sidenav a {
	color: white;
	padding: 16px;
	text-decoration: none;
	display: block;
}

.sidenav a:hover {
	background-color: #ddd;
	color: blue;
}

.content {
	margin-left: 200px;
	padding-left: 20px;
	word-wrap: break-word;
}
</style>
</head>
<body>
<div class ="sidenav">
	<a href="course_project_4560.php">Home</a>
	<a href="Alistipes.php">Alistipes</a>
	<a href="Bacteroides.php">Bacteroides</a>
	<a href="Faecalibacterium_Prausnitzii.php">Faecalibacterium Prausnitzii</a>
	<a href="Parabacteroides.php">Parabacteroides</a>
	<a href="Ruminococcus.php">Ruminococcus</a>
	<a href="course_project_4560_FAQ.html">FAQ</a>

</div>

<div class= "content">
<h1>Alistipes, Bacteroides, Faecalibacterium, Parabacteroides, Ruminococcus and Their Association to Inflammatory Bowel 
Diseases and Irritable Bowel Syndrome</h1>
<p>This project is to develop a database of diseases that are associated with a small selection of bacteria from the human 
gut microbiome and what the healthy and unhealthy relative abundances of these bacteria look like. </p>

<h2>Diseases</h2>
<p>Diseases included in this database are: Irritable Bowel Syndrome, Inflammatory Bowel Syndrome types: Ulcerative Colitis, and Crohn's Disease.</p>


<h2>Sequencing</h2>
<p>Microbiome research is usually done using 16s rRNA sequencing or Whole Genome Shotgun Sequencing (WGS).</p>
<p>16S ribosomal RNA (rRNA) gene is used for sequencing the microbiome as it is in nearly all bacteria by using polymerase 
chain reaction (PCR). [<a href="#3">3</a>, <a href="#4">4</a>, <a href="#5">5</a>] Its function has not changed, which allows for understanding of bacterial evolution. 
This gene contains nine variable regions, V1-V3 and V3-V5 as used in the Human Microbiome Project. [<a href="#1">1</a>, <a href="#2">2</a>, <a href="#5">5</a>] 
16S rRNA provides accurate genus identification but less accurate species identification. 
Other issues with 16S rRNA sequencing are its inability to tell how closely related by sequence similarity other species may be, 
its inability to tell between recently diverged species, and poor-quality data with greater than 2% random sequencing errors. [<a href="#4">4</a>]
</p>
<p>Whole Genome Shotgun (WGS) sequencing uses random primers to sequence overlapping regions of a genome to provide analysis of 
the entire genome. WGS sequencing has better resolution of taxonomy at the genus and species level compared to 16S rRNA. 
WGS sequencing is less popular than 16S rRNA due to its cost and the time it takes to sort through the amount of data it produces.
 [<a href="#6">6</a>,<a href="#7">7</a>]</p>

<h2> Research Statistical Analysis</h2>
<p>Statistical Analysis for this database was done using MicrobiomeDB, NCBI, mBodymap, GMrepo, and Microsoft Excel.</p>
<p>Healthy relative abundances found for all genus.</p>

<h3>Research bias</h3>
<p>Literature that has huge findings about the microbiome's connection to disease may not be completely 
free of bias due to the newer nature of the research, and the statistical methods involved may cause false discovery rates. [<a href="#9">9</a>]</p>
<details>
<summary>Terms</summary>
<p> Relative Abundance: is the composition of an organism of a particular kind in comparision to total number of organisms in the
area. Can be expressed as a percentage or as a decimal (with a max of 1.0).</p>
<p>CFU/g : colony-forming unit per gram. The number of colonies counted per petri dish. </p>
<p>Differential abundance is the comparison of abundance between two different datasets (control vs. case). [<a href="#8">8</a>-<a href="#9">9</a>] </p>
</details>

<details>
<summary>References</summary>
<p><a id ="1">1. Human Microbiome Project Consortium. (2012, June 13). Structure, function and diversity of the healthy human microbiome. 
Nature. Retrieved September 21, 2022, from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3564958/</a></p>
<p><a id="2">2. Human Microbiome Project Consortium (2012). A framework for human microbiome research. 
Nature, 486(7402), 215-221. https://doi.org/10.1038/nature11209 </a></p>
<p><a id="3">3. Rinninella, E., Raoul, P., Cintoni, M., Franceschi, F., Miggiano, G. A. D., Gasbarrini, A., & Mele, M. C. 
(2019, January 10). What is the healthy gut microbiota composition? A changing ecosystem across age, environment, 
diet, and diseases. Microorganisms. Retrieved September 21, 2022, from 
https://www.ncbi.nlm.nih.gov/pmc/articles/PMC6351938/#:~:text=The%20dominant%
20gut%20microbial%20phyla,representing%2090%25%20of%20gut%20microbiota </a></p>
<p><a id="4">4. Janda, J. M., & Abbott, S. L. (2007). 16S rRNA gene sequencing for bacterial identification in the diagnostic 
laboratory: pluses, perils, and pitfalls. Journal of clinical microbiology, 
45(9), 2761-2764. https://doi.org/10.1128/JCM.01228-07</a></p>
<p><a id="5">5. Johnson, J.S., Spakowicz, D.J., Hong, BY. et al. Evaluation of 16S rRNA gene sequencing for 
species and strain-level microbiome analysis. Nat Commun 10, 5029 (2019). https://doi.org/10.1038/s41467-019-13036-1</a></p>
<p><a id="6">6. Ranjan, R., Rani, A., Metwally, A., McGee, H. S., & Perkins, D. L. (2016). 
Analysis of the microbiome: Advantages of whole genome shotgun versus 16S amplicon sequencing. 
Biochemical and biophysical research communications, 469(4), 967-977. https://doi.org/10.1016/j.bbrc.2015.12.083</a></p>
<p><a id="7">7. Li, Y., Jin, Y., Zhang, J. et al. Recovery of human gut microbiota genomes with third-generation sequencing. 
Cell Death Dis 12, 569 (2021). https://doi.org/10.1038/s41419-021-03829-y</a></p>
<p><a id="8">8. Lin, H., Peddada, S.D. Analysis of microbial compositions: a review of normalization and differential abundance analysis. 
npj Biofilms Microbiomes 6, 60 (2020). https://doi.org/10.1038/s41522-020-00160-w </a></p>
<p><a id="9">9. Stijn Hawinkel, Federico Mattiello, Luc Bijnens, Olivier Thas, A broken promise: microbiome differential abundance methods 
do not control the false discovery rate, Briefings in Bioinformatics, 
Volume 20, Issue 1, January 2019, Pages 210-221, https://doi.org/10.1093/bib/bbx104 </a></p>

</details>

<p>Found a bug? Report it here: <button onclick="document.location='https://forms.gle/7pQgSNYE8CuxDE2s9'">Bug Report</button> </p>

</div> -->

</body>

</html>
