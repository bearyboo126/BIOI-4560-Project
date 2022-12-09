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
<link rel="stylesheet" href="4560.css">
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
<h1>Ruminococcus</h1>

<?php

/*Connection variables at top
* Makes it easy to change if needed*/
$server="localhost";
$username="eledford";
$password="";
$database="eledford";

/*Connect to my database
* and throw errors if its unable to connect.
* Greets the web user if it is able to connect.*/
$connect = mysqli_connect($server,$username,"",$database);

if($connect->connect_error){
	echo "Something has gone terribly wrong";
	echo "Connection error:" .$connect->connect_error;
}else{

}

/* Run a basic SQL query and throw
 * an error if its unable to perform the query
 */
$query = "SELECT * FROM bacteria WHERE tax_genus = 'Ruminococcus'";
$result = mysqli_query($connect, $query) 
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

/*If there are results from the query, print the 0th
 * token in the current tuple from the result relation
 * If there are no results, print an error message.
 */
if ($result = mysqli_query($connect, $query)) {
    while ($row = mysqli_fetch_row($result)) {
	    printf("<details>");
	    printf("<summary> <b>Taxonomy </b></summary>");
	    printf(" Domain: %s <br>", $row[1]);
	    printf(" Phylum: %s <br>", $row[2]);
	    printf(" Class: %s <br>", $row[3]);
	    printf(" Order: %s <br>", $row[4]);
	    printf(" Family: %s <br>", $row[5]);
	    printf(" Genus: %s <br>", $row[6]);
    }

    mysqli_free_result($result);
}else{
	echo "No results";
}

$query2 = "SELECT * FROM genus WHERE tax_genus = 'Ruminococcus'";
$result2 = mysqli_query($connect, $query2) 
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

if ($result2 = mysqli_query($connect, $query2)) {
    while ($row = mysqli_fetch_row($result2)) {
	    printf(" Taxon ID: %s <br>", $row[1]);
	    printf(" Location: %s <br>", $row[2]);
	    printf(" Species Description: %s <br> [<a href='#1'>1</a>, <a href='#2'>2</a>, <a href='#5'>5</a>]", $row[4]);
	    printf("</details>");
	    printf("<h2> Healthy vs Disease Relative Abundances</h2>");
	    printf("<h4>Healthy Relative Abundance</h4> %s <br>", $row[3]);

}

    mysqli_free_result($result2);
}else{
	echo "No results";
}

$query3 = "SELECT * FROM disease WHERE tax_genus = 'Ruminococcus'";
$result3 = mysqli_query($connect, $query3) 
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

if ($result3 = mysqli_query($connect, $query3)) {
    while ($row = mysqli_fetch_row($result3)) {
	    printf("<h4> %s </h4>", $row[1]);
	    printf("%s <br><br>", $row[2]);
	    printf("%s <br>", $row[3]);
}

    mysqli_free_result($result3);
}else{
	echo "No results";
}
?>

<p>[<a href="#3">3</a>-<a href="#65">65</a>]</p>
<h3>Analysis</h3>
<table>
<caption>Table 1. Percent Change in Ruminococcus (Healthy vs. Disease)</caption>
<tr>
	<th>Relative Abundance</th>
	<th>Median</th>
	<th>Mean</th>
	<th>Standard Deviation</th>
	<th>Q1</th>
	<th>Q3</th>
	<th>IQR</th>
	<th>Percent Change (Healthy vs. Disease) (%)</th>
</tr>
<tr>
	<td>Healthy</td>
	<td>0.01</td>
	<td>0.026243</td>
	<td>0.056998</td>
	<td>0.00</td>
	<td>0.03</td>
	<td>0.03</td>
	<td>N/A</td>
</tr>
<tr>
	<td>IBS</td>
	<td>0.0095594</td>
	<td>0.0183178</td>
	<td>0.0233402</td>
	<td>0.001489625</td>
	<td>0.01703943</td>
	<td>0.015549805</td>
	<td>-4.406</td>
</tr>
<tr>
	<td>IBD</td>
	<td>0.0260026</td>
	<td>0.0409284</td>
	<td>0.0498326</td>
	<td>0.00150559</td>
	<td>0.0346045</td>
	<td>0.03309891</td>
	<td>160.026</td>
</tr>
<tr>
	<td>Crohn's Disease</td>
	<td>0.0052573</td>
	<td>0.0278319</td>
	<td>0.0530048</td>
	<td>0.000574155</td>
	<td>0.0252307</td>
	<td>0.024656545</td>
	<td>-47.427</td>
</tr>
<tr>
	<td>Ulcerative Colitis</td>
	<td>0.0080915</td>
	<td>0.0294842</td>
	<td>0.0517572</td>
	<td>0.001489625</td>
	<td>0.01703943</td>
	<td>0.015549805</td>
	<td>-19.085</td>
</tr>
</table>

<br>

<p>Ruminococcus had negative percent change for most diseases. This may mean that Ruminococcus function decreases in the intestines by these diseases.
Ruminococcus had a positive percent change for IBD. This may mean that Ruminococcus survives this disease better than other bacteria.</p>

<?php
$referencenum = 1;
$query4 = "SELECT * FROM lit_references WHERE (tax_genus = 'Ruminococcus' OR tax_genus = 'Everything')";
$result4 = mysqli_query($connect, $query4) 
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);
	   printf("<details>");
	   printf("<summary>References</summary>");
if ($result4 = mysqli_query($connect, $query4)) {
    while ($row = mysqli_fetch_row($result4)) {
	    printf("<a id ='$referencenum'>$referencenum. %s </a><br><br>", $row[1], $referencenum++);
}
	    printf("</details>");

    mysqli_free_result($result4);
}else{
	echo "No results";
}


/*Always close your connection. 
 * Its a courtesy to your fellow users.
 */
mysqli_close($connect);
?>

<p>Found a bug? Report it here: <button onclick="document.location='https://forms.gle/7pQgSNYE8CuxDE2s9'">Bug Report</button> </p>



</div>
</body>
</html>