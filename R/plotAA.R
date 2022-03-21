#' Plot occurrence
#'
#' Description
#' Plotting the occurrence of AA in the input stringAA
#'
#' @param stringAA
#'
#' @importFrom magrittr %>%

plotAAOccur <- function(stringAA = ""){
  #create the categories
  uniqueAA <- stringAA %>%
    #splitting the input string for every character
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    #making everything in the final string a character
    as.character() %>%
    #keep only unique entries in the string
    unique()

# counting occurance of the uniqe charaters in the original string

  counts <- sapply(uniqueAA, function(occurrenceAA) stringr::str_count(string = stringAA, pattern =  occurrenceAA)) %>%
    as.data.frame()



  colnames(counts) <- c("Counts")
  counts[["stringAA"]] <- rownames(counts)

  #plotting the entries in the input and the occurrence of each
  occurrenceAAplot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = stringAA, y = Counts, fill = stringAA)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()


  return(occurrenceAAplot)
}


