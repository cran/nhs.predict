% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.scan.R
\name{scan.predict}
\alias{scan.predict}
\title{scan.predict}
\usage{
scan.predict(data, age.start)
}
\arguments{
\item{data}{A dataframe containing patient data with the necessary variables.Except for age at diagnosis, the other variables must be named according to SCAN}

\item{age.start}{Numeric, Age at diagnosis of the patient. Range between 25 and 85.}
}
\value{
The function attaches additional columns to the dataframe, matched for patient observation,
   containing Overall survival at the specified year, plus the additional benefit for chemotherapy at 5, 10, and 15 years interval.
   Observations containing missing values are moved to the bottom.
}
\description{
Calculates 'NHS Predict' v2.1 Overall survival and chemotherapy benefits in a simplified version with fewer inputs, suited for SCAN audit.
}
\examples{
data(scan_example_data)

scan_example_data <- scan.predict(scan_example_data, age.start = diag_age)

}
