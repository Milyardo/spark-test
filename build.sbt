name := "Simple Project"

version := "1.0"

scalaVersion := "2.11.11"

libraryDependencies += "org.apache.spark" %% "spark-sql" % "2.4.4"

addCommandAlias("sparkSubmit", ";package; \"")
