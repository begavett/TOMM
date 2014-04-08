# R Script to obtain item-level data from TOMM output via PsychManager
# PsychManager outputs all data into one .txt file. You do not need to export data for each participant individually.

# The MIT License (MIT)
# 
# Copyright (c) 2014 Brandon Gavett
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#   
#   The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

library(taRifx)

tomm.data <- readLines(file.choose())

part1 <- seq(,length(tomm.data), by = 19)
for (part in 2:19) {
  assign(paste0("part", part), part1 + (part - 1))
}
tp1 <- data.frame(matrix(unlist(strsplit(tomm.data[part1], ",")), nrow = length(tomm.data)/19, byrow=T))
tp2 <- data.frame(matrix(unlist(strsplit(tomm.data[part2], ",")), nrow = length(tomm.data)/19, byrow=T))
tp3 <- data.frame(matrix(unlist(strsplit(tomm.data[part3], ",")), nrow = length(tomm.data)/19, byrow=T))
tp4 <- data.frame(matrix(unlist(strsplit(tomm.data[part4], ",")), nrow = length(tomm.data)/19, byrow=T))
tp5 <- data.frame(matrix(unlist(strsplit(tomm.data[part5], ",")), nrow = length(tomm.data)/19, byrow=T))
tp6 <- data.frame(matrix(unlist(strsplit(tomm.data[part6], ",")), nrow = length(tomm.data)/19, byrow=T))
tp7 <- data.frame(matrix(unlist(strsplit(tomm.data[part7], ",")), nrow = length(tomm.data)/19, byrow=T))
tp8 <- data.frame(matrix(unlist(strsplit(tomm.data[part8], ",")), nrow = length(tomm.data)/19, byrow=T))
tp9 <- data.frame(matrix(unlist(strsplit(tomm.data[part9], ",")), nrow = length(tomm.data)/19, byrow=T))
tp10 <- data.frame(matrix(unlist(strsplit(tomm.data[part10], ",")), nrow = length(tomm.data)/19, byrow=T))
tp11 <- data.frame(matrix(unlist(strsplit(tomm.data[part11], ",")), nrow = length(tomm.data)/19, byrow=T))
tp12 <- data.frame(matrix(unlist(strsplit(tomm.data[part12], ",")), nrow = length(tomm.data)/19, byrow=T))
tp13 <- data.frame(matrix(unlist(strsplit(tomm.data[part13], ",")), nrow = length(tomm.data)/19, byrow=T))
tp14 <- data.frame(matrix(unlist(strsplit(tomm.data[part14], ",")), nrow = length(tomm.data)/19, byrow=T))
tp15 <- data.frame(matrix(unlist(strsplit(tomm.data[part15], ",")), nrow = length(tomm.data)/19, byrow=T))
tp16 <- data.frame(matrix(unlist(strsplit(tomm.data[part16], ",")), nrow = length(tomm.data)/19, byrow=T))
tp17 <- data.frame(matrix(unlist(strsplit(tomm.data[part17], ",")), nrow = length(tomm.data)/19, byrow=T))
tp18 <- data.frame(matrix(unlist(strsplit(tomm.data[part18], ",")), nrow = length(tomm.data)/19, byrow=T))
tp19 <- data.frame(matrix(unlist(strsplit(tomm.data[part19], ",")), nrow = length(tomm.data)/19, byrow=T))

tomm.org <- cbind(tp1, tp2, tp3, tp4, tp5, tp6, tp7, tp8, tp9, tp10, tp11, tp12, tp13, tp14, tp15, tp16, tp17, tp18, tp19)

names(tomm.org) <- c("Record", "Status", "Version", "Pt", "Date", "Time", "Remark", 
                     "T1", "T1.SumCorrectRT.I", "T1.AvgCorrectRT.I", "T1.SumCorrectRT", "T1.AvgCorrectRT", "T1.TotIncorrect", "T1.SumIncorrectRT.I", "T1.AvgIncorrectRT.I", "T1.SumIncorrectRT", "T1.AvgIncorrectRT", 
                     "T2", "T2.SumCorrectRT.I", "T2.AvgCorrectRT.I", "T2.SumCorrectRT", "T2.AvgCorrectRT", "T2.TotIncorrect", "T2.SumIncorrectRT.I", "T2.AvgIncorrectRT.I", "T2.SumIncorrectRT", "T2.AvgIncorrectRT", 
                     "Ret", "Ret.SumCorrectRT.I", "Ret.AvgCorrectRT.I", "Ret.SumCorrectRT", "Ret.AvgCorrectRT", "Ret.TotIncorrect", "Ret.SumIncorrectRT.I", "Ret.AvgIncorrectRT.I", "Ret.SumIncorrectRT", "Ret.AvgIncorrectRT", 
                     "Resp.T1.1", "Resp.T1.2", "Resp.T1.3", "Resp.T1.4", "Resp.T1.5", "Resp.T1.6", "Resp.T1.7", "Resp.T1.8", "Resp.T1.9", "Resp.T1.10", 
                     "Resp.T1.11", "Resp.T1.12", "Resp.T1.13", "Resp.T1.14", "Resp.T1.15", "Resp.T1.16", "Resp.T1.17", "Resp.T1.18", "Resp.T1.19", "Resp.T1.20", 
                     "Resp.T1.21", "Resp.T1.22", "Resp.T1.23", "Resp.T1.24", "Resp.T1.25", "Resp.T1.26", "Resp.T1.27", "Resp.T1.28", "Resp.T1.29", "Resp.T1.30", 
                     "Resp.T1.31", "Resp.T1.32", "Resp.T1.33", "Resp.T1.34", "Resp.T1.35", "Resp.T1.36", "Resp.T1.37", "Resp.T1.38", "Resp.T1.39", "Resp.T1.40", 
                     "Resp.T1.41", "Resp.T1.42", "Resp.T1.43", "Resp.T1.44", "Resp.T1.45", "Resp.T1.46", "Resp.T1.47", "Resp.T1.48", "Resp.T1.49", "Resp.T1.50", 
                     "Resp.T2.1", "Resp.T2.2", "Resp.T2.3", "Resp.T2.4", "Resp.T2.5", "Resp.T2.6", "Resp.T2.7", "Resp.T2.8", "Resp.T2.9", "Resp.T2.10", 
                     "Resp.T2.11", "Resp.T2.12", "Resp.T2.13", "Resp.T2.14", "Resp.T2.15", "Resp.T2.16", "Resp.T2.17", "Resp.T2.18", "Resp.T2.19", "Resp.T2.20", 
                     "Resp.T2.21", "Resp.T2.22", "Resp.T2.23", "Resp.T2.24", "Resp.T2.25", "Resp.T2.26", "Resp.T2.27", "Resp.T2.28", "Resp.T2.29", "Resp.T2.30", 
                     "Resp.T2.31", "Resp.T2.32", "Resp.T2.33", "Resp.T2.34", "Resp.T2.35", "Resp.T2.36", "Resp.T2.37", "Resp.T2.38", "Resp.T2.39", "Resp.T2.40", 
                     "Resp.T2.41", "Resp.T2.42", "Resp.T2.43", "Resp.T2.44", "Resp.T2.45", "Resp.T2.46", "Resp.T2.47", "Resp.T2.48", "Resp.T2.49", "Resp.T2.50", 
                     "Resp.Ret.1", "Resp.Ret.2", "Resp.Ret.3", "Resp.Ret.4", "Resp.Ret.5", "Resp.Ret.6", "Resp.Ret.7", "Resp.Ret.8", "Resp.Ret.9", "Resp.Ret.10", 
                     "Resp.Ret.11", "Resp.Ret.12", "Resp.Ret.13", "Resp.Ret.14", "Resp.Ret.15", "Resp.Ret.16", "Resp.Ret.17", "Resp.Ret.18", "Resp.Ret.19", "Resp.Ret.20", 
                     "Resp.Ret.21", "Resp.Ret.22", "Resp.Ret.23", "Resp.Ret.24", "Resp.Ret.25", "Resp.Ret.26", "Resp.Ret.27", "Resp.Ret.28", "Resp.Ret.29", "Resp.Ret.30", 
                     "Resp.Ret.31", "Resp.Ret.32", "Resp.Ret.33", "Resp.Ret.34", "Resp.Ret.35", "Resp.Ret.36", "Resp.Ret.37", "Resp.Ret.38", "Resp.Ret.39", "Resp.Ret.40", 
                     "Resp.Ret.41", "Resp.Ret.42", "Resp.Ret.43", "Resp.Ret.44", "Resp.Ret.45", "Resp.Ret.46", "Resp.Ret.47", "Resp.Ret.48", "Resp.Ret.49", "Resp.Ret.50", 
                     "Cor.T1.1", "Cor.T1.2", "Cor.T1.3", "Cor.T1.4", "Cor.T1.5", "Cor.T1.6", "Cor.T1.7", "Cor.T1.8", "Cor.T1.9", "Cor.T1.10", 
                     "Cor.T1.11", "Cor.T1.12", "Cor.T1.13", "Cor.T1.14", "Cor.T1.15", "Cor.T1.16", "Cor.T1.17", "Cor.T1.18", "Cor.T1.19", "Cor.T1.20", 
                     "Cor.T1.21", "Cor.T1.22", "Cor.T1.23", "Cor.T1.24", "Cor.T1.25", "Cor.T1.26", "Cor.T1.27", "Cor.T1.28", "Cor.T1.29", "Cor.T1.30", 
                     "Cor.T1.31", "Cor.T1.32", "Cor.T1.33", "Cor.T1.34", "Cor.T1.35", "Cor.T1.36", "Cor.T1.37", "Cor.T1.38", "Cor.T1.39", "Cor.T1.40", 
                     "Cor.T1.41", "Cor.T1.42", "Cor.T1.43", "Cor.T1.44", "Cor.T1.45", "Cor.T1.46", "Cor.T1.47", "Cor.T1.48", "Cor.T1.49", "Cor.T1.50", 
                     "Cor.T2.1", "Cor.T2.2", "Cor.T2.3", "Cor.T2.4", "Cor.T2.5", "Cor.T2.6", "Cor.T2.7", "Cor.T2.8", "Cor.T2.9", "Cor.T2.10", 
                     "Cor.T2.11", "Cor.T2.12", "Cor.T2.13", "Cor.T2.14", "Cor.T2.15", "Cor.T2.16", "Cor.T2.17", "Cor.T2.18", "Cor.T2.19", "Cor.T2.20", 
                     "Cor.T2.21", "Cor.T2.22", "Cor.T2.23", "Cor.T2.24", "Cor.T2.25", "Cor.T2.26", "Cor.T2.27", "Cor.T2.28", "Cor.T2.29", "Cor.T2.30", 
                     "Cor.T2.31", "Cor.T2.32", "Cor.T2.33", "Cor.T2.34", "Cor.T2.35", "Cor.T2.36", "Cor.T2.37", "Cor.T2.38", "Cor.T2.39", "Cor.T2.40", 
                     "Cor.T2.41", "Cor.T2.42", "Cor.T2.43", "Cor.T2.44", "Cor.T2.45", "Cor.T2.46", "Cor.T2.47", "Cor.T2.48", "Cor.T2.49", "Cor.T2.50", 
                     "Cor.Ret.1", "Cor.Ret.2", "Cor.Ret.3", "Cor.Ret.4", "Cor.Ret.5", "Cor.Ret.6", "Cor.Ret.7", "Cor.Ret.8", "Cor.Ret.9", "Cor.Ret.10", 
                     "Cor.Ret.11", "Cor.Ret.12", "Cor.Ret.13", "Cor.Ret.14", "Cor.Ret.15", "Cor.Ret.16", "Cor.Ret.17", "Cor.Ret.18", "Cor.Ret.19", "Cor.Ret.20", 
                     "Cor.Ret.21", "Cor.Ret.22", "Cor.Ret.23", "Cor.Ret.24", "Cor.Ret.25", "Cor.Ret.26", "Cor.Ret.27", "Cor.Ret.28", "Cor.Ret.29", "Cor.Ret.30", 
                     "Cor.Ret.31", "Cor.Ret.32", "Cor.Ret.33", "Cor.Ret.34", "Cor.Ret.35", "Cor.Ret.36", "Cor.Ret.37", "Cor.Ret.38", "Cor.Ret.39", "Cor.Ret.40", 
                     "Cor.Ret.41", "Cor.Ret.42", "Cor.Ret.43", "Cor.Ret.44", "Cor.Ret.45", "Cor.Ret.46", "Cor.Ret.47", "Cor.Ret.48", "Cor.Ret.49", "Cor.Ret.50", 
                     "RCS.T1.1", "RCS.T1.2", "RCS.T1.3", "RCS.T1.4", "RCS.T1.5", "RCS.T1.6", "RCS.T1.7", "RCS.T1.8", "RCS.T1.9", "RCS.T1.10", 
                     "RCS.T1.11", "RCS.T1.12", "RCS.T1.13", "RCS.T1.14", "RCS.T1.15", "RCS.T1.16", "RCS.T1.17", "RCS.T1.18", "RCS.T1.19", "RCS.T1.20", 
                     "RCS.T1.21", "RCS.T1.22", "RCS.T1.23", "RCS.T1.24", "RCS.T1.25", "RCS.T1.26", "RCS.T1.27", "RCS.T1.28", "RCS.T1.29", "RCS.T1.30", 
                     "RCS.T1.31", "RCS.T1.32", "RCS.T1.33", "RCS.T1.34", "RCS.T1.35", "RCS.T1.36", "RCS.T1.37", "RCS.T1.38", "RCS.T1.39", "RCS.T1.40", 
                     "RCS.T1.41", "RCS.T1.42", "RCS.T1.43", "RCS.T1.44", "RCS.T1.45", "RCS.T1.46", "RCS.T1.47", "RCS.T1.48", "RCS.T1.49", "RCS.T1.50", 
                     "RCS.T2.1", "RCS.T2.2", "RCS.T2.3", "RCS.T2.4", "RCS.T2.5", "RCS.T2.6", "RCS.T2.7", "RCS.T2.8", "RCS.T2.9", "RCS.T2.10", 
                     "RCS.T2.11", "RCS.T2.12", "RCS.T2.13", "RCS.T2.14", "RCS.T2.15", "RCS.T2.16", "RCS.T2.17", "RCS.T2.18", "RCS.T2.19", "RCS.T2.20", 
                     "RCS.T2.21", "RCS.T2.22", "RCS.T2.23", "RCS.T2.24", "RCS.T2.25", "RCS.T2.26", "RCS.T2.27", "RCS.T2.28", "RCS.T2.29", "RCS.T2.30", 
                     "RCS.T2.31", "RCS.T2.32", "RCS.T2.33", "RCS.T2.34", "RCS.T2.35", "RCS.T2.36", "RCS.T2.37", "RCS.T2.38", "RCS.T2.39", "RCS.T2.40", 
                     "RCS.T2.41", "RCS.T2.42", "RCS.T2.43", "RCS.T2.44", "RCS.T2.45", "RCS.T2.46", "RCS.T2.47", "RCS.T2.48", "RCS.T2.49", "RCS.T2.50", 
                     "RCS.Ret.1", "RCS.Ret.2", "RCS.Ret.3", "RCS.Ret.4", "RCS.Ret.5", "RCS.Ret.6", "RCS.Ret.7", "RCS.Ret.8", "RCS.Ret.9", "RCS.Ret.10", 
                     "RCS.Ret.11", "RCS.Ret.12", "RCS.Ret.13", "RCS.Ret.14", "RCS.Ret.15", "RCS.Ret.16", "RCS.Ret.17", "RCS.Ret.18", "RCS.Ret.19", "RCS.Ret.20", 
                     "RCS.Ret.21", "RCS.Ret.22", "RCS.Ret.23", "RCS.Ret.24", "RCS.Ret.25", "RCS.Ret.26", "RCS.Ret.27", "RCS.Ret.28", "RCS.Ret.29", "RCS.Ret.30", 
                     "RCS.Ret.31", "RCS.Ret.32", "RCS.Ret.33", "RCS.Ret.34", "RCS.Ret.35", "RCS.Ret.36", "RCS.Ret.37", "RCS.Ret.38", "RCS.Ret.39", "RCS.Ret.40", 
                     "RCS.Ret.41", "RCS.Ret.42", "RCS.Ret.43", "RCS.Ret.44", "RCS.Ret.45", "RCS.Ret.46", "RCS.Ret.47", "RCS.Ret.48", "RCS.Ret.49", "RCS.Ret.50", 
                     "IRT.T1.1", "IRT.T1.2", "IRT.T1.3", "IRT.T1.4", "IRT.T1.5", "IRT.T1.6", "IRT.T1.7", "IRT.T1.8", "IRT.T1.9", "IRT.T1.10", 
                     "IRT.T1.11", "IRT.T1.12", "IRT.T1.13", "IRT.T1.14", "IRT.T1.15", "IRT.T1.16", "IRT.T1.17", "IRT.T1.18", "IRT.T1.19", "IRT.T1.20", 
                     "IRT.T1.21", "IRT.T1.22", "IRT.T1.23", "IRT.T1.24", "IRT.T1.25", "IRT.T1.26", "IRT.T1.27", "IRT.T1.28", "IRT.T1.29", "IRT.T1.30", 
                     "IRT.T1.31", "IRT.T1.32", "IRT.T1.33", "IRT.T1.34", "IRT.T1.35", "IRT.T1.36", "IRT.T1.37", "IRT.T1.38", "IRT.T1.39", "IRT.T1.40", 
                     "IRT.T1.41", "IRT.T1.42", "IRT.T1.43", "IRT.T1.44", "IRT.T1.45", "IRT.T1.46", "IRT.T1.47", "IRT.T1.48", "IRT.T1.49", "IRT.T1.50", 
                     "IRT.T2.1", "IRT.T2.2", "IRT.T2.3", "IRT.T2.4", "IRT.T2.5", "IRT.T2.6", "IRT.T2.7", "IRT.T2.8", "IRT.T2.9", "IRT.T2.10", 
                     "IRT.T2.11", "IRT.T2.12", "IRT.T2.13", "IRT.T2.14", "IRT.T2.15", "IRT.T2.16", "IRT.T2.17", "IRT.T2.18", "IRT.T2.19", "IRT.T2.20", 
                     "IRT.T2.21", "IRT.T2.22", "IRT.T2.23", "IRT.T2.24", "IRT.T2.25", "IRT.T2.26", "IRT.T2.27", "IRT.T2.28", "IRT.T2.29", "IRT.T2.30", 
                     "IRT.T2.31", "IRT.T2.32", "IRT.T2.33", "IRT.T2.34", "IRT.T2.35", "IRT.T2.36", "IRT.T2.37", "IRT.T2.38", "IRT.T2.39", "IRT.T2.40", 
                     "IRT.T2.41", "IRT.T2.42", "IRT.T2.43", "IRT.T2.44", "IRT.T2.45", "IRT.T2.46", "IRT.T2.47", "IRT.T2.48", "IRT.T2.49", "IRT.T2.50", 
                     "IRT.Ret.1", "IRT.Ret.2", "IRT.Ret.3", "IRT.Ret.4", "IRT.Ret.5", "IRT.Ret.6", "IRT.Ret.7", "IRT.Ret.8", "IRT.Ret.9", "IRT.Ret.10", 
                     "IRT.Ret.11", "IRT.Ret.12", "IRT.Ret.13", "IRT.Ret.14", "IRT.Ret.15", "IRT.Ret.16", "IRT.Ret.17", "IRT.Ret.18", "IRT.Ret.19", "IRT.Ret.20", 
                     "IRT.Ret.21", "IRT.Ret.22", "IRT.Ret.23", "IRT.Ret.24", "IRT.Ret.25", "IRT.Ret.26", "IRT.Ret.27", "IRT.Ret.28", "IRT.Ret.29", "IRT.Ret.30", 
                     "IRT.Ret.31", "IRT.Ret.32", "IRT.Ret.33", "IRT.Ret.34", "IRT.Ret.35", "IRT.Ret.36", "IRT.Ret.37", "IRT.Ret.38", "IRT.Ret.39", "IRT.Ret.40", 
                     "IRT.Ret.41", "IRT.Ret.42", "IRT.Ret.43", "IRT.Ret.44", "IRT.Ret.45", "IRT.Ret.46", "IRT.Ret.47", "IRT.Ret.48", "IRT.Ret.49", "IRT.Ret.50", 
                     "TRT.T1.1", "TRT.T1.2", "TRT.T1.3", "TRT.T1.4", "TRT.T1.5", "TRT.T1.6", "TRT.T1.7", "TRT.T1.8", "TRT.T1.9", "TRT.T1.10", 
                     "TRT.T1.11", "TRT.T1.12", "TRT.T1.13", "TRT.T1.14", "TRT.T1.15", "TRT.T1.16", "TRT.T1.17", "TRT.T1.18", "TRT.T1.19", "TRT.T1.20", 
                     "TRT.T1.21", "TRT.T1.22", "TRT.T1.23", "TRT.T1.24", "TRT.T1.25", "TRT.T1.26", "TRT.T1.27", "TRT.T1.28", "TRT.T1.29", "TRT.T1.30", 
                     "TRT.T1.31", "TRT.T1.32", "TRT.T1.33", "TRT.T1.34", "TRT.T1.35", "TRT.T1.36", "TRT.T1.37", "TRT.T1.38", "TRT.T1.39", "TRT.T1.40", 
                     "TRT.T1.41", "TRT.T1.42", "TRT.T1.43", "TRT.T1.44", "TRT.T1.45", "TRT.T1.46", "TRT.T1.47", "TRT.T1.48", "TRT.T1.49", "TRT.T1.50", 
                     "TRT.T2.1", "TRT.T2.2", "TRT.T2.3", "TRT.T2.4", "TRT.T2.5", "TRT.T2.6", "TRT.T2.7", "TRT.T2.8", "TRT.T2.9", "TRT.T2.10", 
                     "TRT.T2.11", "TRT.T2.12", "TRT.T2.13", "TRT.T2.14", "TRT.T2.15", "TRT.T2.16", "TRT.T2.17", "TRT.T2.18", "TRT.T2.19", "TRT.T2.20", 
                     "TRT.T2.21", "TRT.T2.22", "TRT.T2.23", "TRT.T2.24", "TRT.T2.25", "TRT.T2.26", "TRT.T2.27", "TRT.T2.28", "TRT.T2.29", "TRT.T2.30", 
                     "TRT.T2.31", "TRT.T2.32", "TRT.T2.33", "TRT.T2.34", "TRT.T2.35", "TRT.T2.36", "TRT.T2.37", "TRT.T2.38", "TRT.T2.39", "TRT.T2.40", 
                     "TRT.T2.41", "TRT.T2.42", "TRT.T2.43", "TRT.T2.44", "TRT.T2.45", "TRT.T2.46", "TRT.T2.47", "TRT.T2.48", "TRT.T2.49", "TRT.T2.50", 
                     "TRT.Ret.1", "TRT.Ret.2", "TRT.Ret.3", "TRT.Ret.4", "TRT.Ret.5", "TRT.Ret.6", "TRT.Ret.7", "TRT.Ret.8", "TRT.Ret.9", "TRT.Ret.10", 
                     "TRT.Ret.11", "TRT.Ret.12", "TRT.Ret.13", "TRT.Ret.14", "TRT.Ret.15", "TRT.Ret.16", "TRT.Ret.17", "TRT.Ret.18", "TRT.Ret.19", "TRT.Ret.20", 
                     "TRT.Ret.21", "TRT.Ret.22", "TRT.Ret.23", "TRT.Ret.24", "TRT.Ret.25", "TRT.Ret.26", "TRT.Ret.27", "TRT.Ret.28", "TRT.Ret.29", "TRT.Ret.30", 
                     "TRT.Ret.31", "TRT.Ret.32", "TRT.Ret.33", "TRT.Ret.34", "TRT.Ret.35", "TRT.Ret.36", "TRT.Ret.37", "TRT.Ret.38", "TRT.Ret.39", "TRT.Ret.40", 
                     "TRT.Ret.41", "TRT.Ret.42", "TRT.Ret.43", "TRT.Ret.44", "TRT.Ret.45", "TRT.Ret.46", "TRT.Ret.47", "TRT.Ret.48", "TRT.Ret.49", "TRT.Ret.50")

tomm.org$Status <- as.character(tomm.org$Status)
tomm.org$Version <- as.character(tomm.org$Version)
tomm.org$Record <- as.numeric(as.character(tomm.org$Record))
tomm.org$Pt <- as.numeric(as.character(tomm.org$Pt))
tomm.org$Date <- as.Date(as.character(tomm.org$Date), format="%Y%m%d")
tomm.org$Time <- as.numeric(as.character(tomm.org$Time))
tomm.org$Remark <- as.character(tomm.org$Remark)

tomm.org <- japply(tomm.org, which(sapply(tomm.org, class)=="factor"), function(x) as.numeric(as.character(x)))

tomm.org <- tomm.org[order(tomm.org$Record),]

write.csv(tomm.org, "TOMM_organized.csv")
