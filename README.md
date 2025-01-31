# Silent Dropping of Invalid Column Names in R Data Frame Subsetting

This repository demonstrates a common but subtle bug in R related to subsetting data frames using character vectors containing invalid column names.  R silently drops these invalid names without issuing any warnings, potentially leading to unexpected behavior and difficult-to-debug errors.

The `bug.R` file contains the problematic code, showing how attempting to select a non-existent column results in a subset that omits the intended column without any error message.  The `bugSolution.R` file provides solutions to this problem, demonstrating how to robustly handle column selection and ensure that errors are properly reported.