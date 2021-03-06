% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_sbe_batch.R
\name{run_sbe_batch}
\alias{run_sbe_batch}
\title{Function to run SBE19 batch file}
\usage{
run_sbe_batch(
  vessel,
  year,
  region,
  xmlcon_file = NA,
  bat_file = NA,
  derive_file = NA,
  rodbc_channel = NA,
  haul_csv = NA,
  make_NMEA = TRUE
)
}
\arguments{
\item{vessel}{Required. Vessel number as a numeric vector.}

\item{year}{Required. Year as a numeric vector.}

\item{region}{Required. Region as a character vector. Either "bs", "ai", or "goa".}

\item{xmlcon_file}{Optional. Character vector specifying the name of the .xmlcon file. Default NA automatically retrieves the filename from psa_xmlcon subdirectory of the working directory.}

\item{bat_file}{Optional. Character vector specifying the name of the .bat file in the working directory to use to run data conversion, filter, alignment, cell thermal mass correction, and split. If not provided, defaults to *getdata.bat}

\item{derive_file}{Optional. Character vectory specifying the .bat file for deriving EOS80 and TEOS-10. If not provided, defaults to *derive.bat}

\item{rodbc_channel}{Required if haul_csv is not provided. Must provide an open RODBC channel (this parameter) or path to haul_csv. Default = NA.}

\item{haul_csv}{Required if rodbc_channel is not provided. Path to a csv file that contains VESSEL, CRUISE, HAUL, START_TIME, START_LONGITUDE, START_LATITUDE, END_LONGITUDE, END_LATITUDE.}

\item{make_NMEA}{Required. Should NMEA files be generated? Default = TRUE.}
}
\description{
Wrapper function to run SBE DataProcessing on Windows using command line in the local directory. Run after gapctd::setup_ctd_processing_dir().
}
