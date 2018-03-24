context("evolve_function")

alive <- "alive"
dead  <- "dead"

test_that(desc = paste("Any live cell",
                       "with fewer than two live neighbours",
                       "dies,",
                       "as if caused by underpopulation."),
          code = {
              state <- alive

              evolved_state_0 <- evolve(state, neigb = 0)
              evolved_state_1 <- evolve(state, neigb = 1)

              expect_equal(evolved_state_0, dead)
              expect_equal(evolved_state_1, dead)
          })

test_that(desc = paste("Any live cell",
                       "with two or three live neighbours",
                       "lives",
                       "on to the next generation."),
          code = {
              state <- alive

              evolved_state_2 <- evolve(state, neigb = 2)
              evolved_state_3 <- evolve(state, neigb = 3)

              expect_equal(evolved_state_2, alive)
              expect_equal(evolved_state_3, alive)
          })

test_that(desc = paste("Any live cell",
                       "with more than three live neighbours",
                       "dies,",
                       "as if by overpopulation."),
          code = {
              state <- alive

              evolved_state <- evolve(state, neigb = 4)

              expect_equal(evolved_state, dead)
          })

test_that(desc = paste("Any dead cell",
                       "with exactly three live neighbours",
                       "becomes a live cell,",
                       "as if by reproduction."),
          code = {
              state <- dead

              evolved_state <- evolve(state, neigb = 3)

              expect_equal(evolved_state, alive)
          })

