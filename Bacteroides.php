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
	<h1>Bacteroides</h1>
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
$query = "SELECT * FROM bacteria WHERE tax_genus = 'Bacteroides'";
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

$query2 = "SELECT * FROM genus WHERE tax_genus = 'Bacteroides'";
$result2 = mysqli_query($connect, $query2) 
	  or trigger_error("Query Failed! SQL: $query - Error: "
	  . mysqli_error($connect), E_USER_ERROR);

if ($result2 = mysqli_query($connect, $query2)) {
    while ($row = mysqli_fetch_row($result2)) {
	    printf(" Taxon ID: %s <br>", $row[1]);
	    printf(" Location: %s <br>", $row[2]);
	    printf(" Species Description: %s [<a href='#1'>1</a>, <a href='#2'>2</a>, <a href='#3'>3</a>]<br>", $row[4]);
	    printf("</details>");
	    printf("<h2> Healthy vs Disease Relative Abundances</h2>");
	    printf("<h4>Healthy Relative Abundance</h4> %s <br>", $row[3]);

}

    mysqli_free_result($result2);
}else{
	echo "No results";
}

$query3 = "SELECT * FROM disease WHERE tax_genus = 'Bacteroides'";
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
<p>[<a href="#4">4</a>-<a href="#66">66</a>]</p>
<h3>Analysis</h3>
<table>
<caption>Table 1. Percent Change in Bacteroides (Healthy vs. Disease)</caption>
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
	<td>0.48</td>
	<td>0.474819</td>
	<td>0.238521</td>
	<td>0.28</td>
	<td>0.66</td>
	<td>0.38</td>
	<td>N/A</td>
</tr>
<tr>
	<td>IBS</td>
	<td>0.1943600</td>
	<td>0.2230661</td>
	<td>0.1628405</td>
	<td>0.0883555405</td>
	<td>0.300632</td>
	<td>0.2122764595</td>
	<td>-59.5083</td>
</tr>
<tr>
	<td>IBD</td>
	<td>0.1953990</td>
	<td>0.2218626</td>
	<td>0.1651884</td>
	<td>0.075642</td>
	<td>0.300201</td>
	<td>0.224559</td>
	<td>-59.2919</td>
</tr>
<tr>
	<td>Crohn's Disease</td>
	<td>0.367715</td>
	<td>0.3674688</td>
	<td>0.2552432</td>
	<td>0.1332588</td>
	<td>0.5940405</td>
	<td>0.4607817</td>
	<td>-23.3927083333</td>
</tr>
<tr>
	<td>Ulcerative Colitis</td>
	<td>0.2491515</td>
	<td>0.2952188</td>
	<td>0.2471365</td>
	<td>0.1332588</td>
	<td>0.5940405</td>
	<td>0.4607817</td>
	<td>-48.0934375</td>
</tr>
</table>

<br>
<p>Bacteroides had a negative percent change for each disease. 
This may mean that Bacteroides functions within the instestines is reduced by these diseases.</p>

<?php
$referencenum = 1;
$query4 = "SELECT * FROM lit_references WHERE (tax_genus = 'Bacteroides' OR tax_genus = 'Everything')";
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