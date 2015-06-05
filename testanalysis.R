change_CTDB <- function(x) {
  if (length(x) = 1) {      # Does a species by trait combination have more than 1 value?
    x <- type.convert(x, as.is=TRUE)
    if (is.character(x)) {
      return(x[1])          # If values are strings (characters), then return the first value
    } else {
      return(as.character(max(x)))  # If values are numbers, then return the max (converted back to character). for depth range, we're interested in max.
    }
  } else {
    return(x) # If a species by trait combination has 1 value, then just return that value 
  }
}

