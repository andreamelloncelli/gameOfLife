

test_that(desc = paste("Any live cell",
                       "with fewer than two live neighbours",
                       "dies,",
                       "as if caused by underpopulation."),
          code = {
              
          })
test_that(desc = paste("Any live cell",
                       "with two or three live neighbours",
                       "lives",
                       "on to the next generation."),
          code = {
              
          })
test_that(desc = paste("Any live cell",
                       "with more than three live neighbours",
                       "dies,",
                       "as if by overpopulation."),
          code = {
              
          })
test_that(desc = paste("Any dead cell",
                       "with exactly three live neighbours",
                       "becomes a live cell,",
                       "as if by reproduction."),
          code = {
              
          })