repeat {

  pack <- NULL

  tryCatch(

    {
      renv::restore(prompt = FALSE)
      pack <<- NULL
    },

    error = function(e) {

      pattern <- "(?<=Error installing package ')[^']+(?=')"
      pack <<- regmatches(e$message, regexpr(pattern, e$message, perl = TRUE))

      message("Package '", pack, "' installation failed. Installing manually and updating.")

      renv::install(pack, prompt = FALSE)
      renv::record(pack)
    }
  )

  if (pack |> is.null()) break;
}
