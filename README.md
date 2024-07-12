# Expert elicitation of state shifts and divergent sensitivities to climate warming across northern ecosystems

Data and code used in the article Expert elicitation of state shifts and divergent sensitivities to climate warming across northern ecosystems
doi: 

## Description of the data

The data is based on a structured expert elicitation of expert judgment that quantified the relative sensitivity of the interacting components of northern ecosystems across a broad latitudinal gradient. We assessed where and at what rate state shifts of ecosystem components are most likely to occur under warmer conditions along a ~100 km-wide, 3,700 km latitudinal transect that extends from the polar desert of northern Ellesmere and Ward Hunt (83°04’N), the northernmost islands of the Canadian Arctic Archipelago to Matagami (49°45’N), located in the boreal forest biome of the James Bay region. 

We used structured expert elicitation inspired by the Delphi technique in which we combined multidisciplinary workshops with several rounds of expert assessments to ensure that all experts had the same interpretation of the questions and fully understood the aim of the project23,57. Our team is composed of 31 experts  covering a wide range of disciplines (geomorphology, hydrology, nivology, limnology, plant and animal ecology and plant paleoecology) and carrying out research across the entire study region. Experts were separated into 6 groups (one per component, 2 to 8 experts per group). Facilitators then addressed a series of questions to each group. Facilitators also provided the following guidelines during the elicitation process: contrasting states and state changes had to be defined at the landscape scale (i.e. 30 km x 30 km, except for vertebrates at 100 km x 100 km), state definitions had to be based on measurable characteristics with marked differences between states, and experts had to clearly describe the conditions for a state change as well as for the definition of a southern limit. Experts first identified contrasting states currently found along the transect.

For each ecosystem component, we present: 
1) the southernmost location (± 2.5 latitudinal degrees) of all contrasting states along the latitudinal transect, and
2) the relative sensitivity of an ecosystem component at each critical threshold given by the by time necessary for a component located at the southern limit of its current state to shift to another existing contrasting state under a hypothetical warming scenario (3 categories of response time, in years: high sensitivity = 1-10, moderate sensitivity = 10-100, low sensitivity = >100).

These data can be foud in the Response_time.R file.

## Code software

To test whether high, moderate and low sensitivities (response time intervals of 1-10, 10-100 and >100 years) were randomly distributed among the observed critical threshold locations (n = 22), we conducted permutation tests using the R software. We first estimated the probability that the observed mean latitude of critical thresholds with low sensitivity (i.e., thresholds for which the maximum response time was >100 years, n = 8) was lower or higher than expected by chance. We computed the mean latitude for each possible permutation (n = 319,770). Using the resulting distribution, we calculated the p-value to determine if the observed mean latitude was unlikely to appear in a random situation. Following the same method, we estimated the probability that the observed mean latitude of critical thresholds with high and moderate sensitivity (i.e., critical thresholds for which the minimum response time was 1-10 years, n = 3; 1,540 permutations, and critical thresholds with a response time of 10-100 years, n = 14; 319,770 permutations), was lower or higher than expected by chance. 

These analyses can be found in the sensitivities_permutation_tests.R file. This file sources the Response_time.R file.
