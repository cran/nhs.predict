% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predict.os.R
\name{os.predict}
\alias{os.predict}
\title{os.predict}
\usage{
os.predict(
  data,
  year = 10,
  age.start,
  screen,
  size,
  grade,
  nodes,
  er,
  her2,
  ki67,
  generation,
  horm,
  traz,
  bis
)
}
\arguments{
\item{data}{A dataframe containing patient data with the necessary variables.}

\item{year}{Numeric, Specify the year since surgery for which the predictions are calculated, ranges between 1 and 15. Default at 10.}

\item{age.start}{Numeric, Age at diagnosis of the patient. Range between 25 and 85.}

\item{screen}{Numeric, Clinically detected = 0, Screen detected = 1, Unknown = 2.}

\item{size}{Numeric, Tumor size in millimeters.}

\item{grade}{Numeric, Tumor grade. Values: 1,2,3. Missing=9.}

\item{nodes}{Numeric, Number of positive nodes.}

\item{er}{Numeric, ER status, ER+ = 1, ER- = 0.}

\item{her2}{Numeric, HER2 status, HER2+ = 1, HER2- = 0. Unknown = 9.}

\item{ki67}{Numeric, ki67 status, KI67+ = 1, KI67- = 0, Unknown = 9.}

\item{generation}{Numeric, Chemotherapy generation. Values: 0,2,3..}

\item{horm}{Numeric, Hormone therapy, Yes = 1, No = 0.}

\item{traz}{Numeric, Trastuzumab therapy, Yes = 1, No = 0.}

\item{bis}{Numeric, Bisphosphonate therapy, Yes = 1, No = 0..}
}
\value{
The function attaches additional columns to the dataframe, matched for patient observation,
   containing Overall survival at the specified year, plus the additional benefit for each type of therapy.
}
\description{
Calculates 'NHS Predict' v2.1 Overall survival and therapy benefits
}
\examples{

data(example_data)

example_data <- os.predict(example_data,age.start = age,screen = detection,size = t.size,
                     grade = t.grade, nodes = nodes, er = er.status, her2 = her2.status,
                     ki67 = ki67.status, generation = chemo.gen, horm = horm.t,
                     traz = trastuzumab, bis = bis.t)

data(example_data)

example_data <- os.predict(example_data,year = 15, age,detection,t.size,t.grade,
                           nodes,er.status,her2.status,ki67.status,chemo.gen,horm.t,
                           trastuzumab,bis.t)

}
