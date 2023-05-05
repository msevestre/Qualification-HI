rm(list = ls())
library(ospsuite.reportingengine)
workingDirectory <- "C:/dev/Qualification-HI/Qualification"
setwd(workingDirectory)
source("workflow.R")

createQualificationReport(
   qualificationRunnerFolder="C:/dev/QualificationRunner/src/QualificationRunner/bin/Debug/net472",
   pkSimPortableFolder= "C:/dev/PK-Sim/src/PKSim/bin/Debug/net472",
   versionInfo = QualificationVersionInfo$new("1.0", "11.0", "3.0")
   )
