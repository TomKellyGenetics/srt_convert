args <- commandArgs()

file <- args[6]

print(file)

out <- paste0(strsplit(file, "[.]")[[1]][1], ".srt")
out

text <- readLines(file)
str(text)

text <- lapply(text, function(x) unlist(strsplit(x, split = "[{]")[[1]][2:3]))
text[[1]]
text <- lapply(text, function(x) unlist(lapply(x, function(y) strsplit(y, split = "[}]")[[1]])))

frame_to_time <- function(frame, rate = 23.98){
    library("lubridate")
    frame <- as.numeric(frame)
    time_seconds <- frame / rate
    full_time <- lubridate::seconds_to_period(time_seconds)
    remainder <- as.integer(round(time_seconds %% 1, 3)*1000)
    time_out <- sprintf('%02d:%02d:%02d,%02d', as.integer(full_time@hour), as.integer(minute(full_time)), as.integer(second(full_time)), remainder)
    time_out
}

text <- lapply(text, function(x) c(frame_to_time(x[1]), frame_to_time(x[2]), x[3]))

text <- lapply(1:length(text), function(x) paste0(x, "\n", text[[x]][1], " --> ", text[[x]][2], "\n", text[[x]][3], "\n")[[1]])
#text[1:3]

writeLines(unlist(text), con = out)
