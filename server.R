library(markdown)
shinyServer(
    function(input, output) {
        output$MyPlot = renderPlot({
            mns = NULL
            for (i in 1 : input$sims)
                mns = switch(input$var,
                    "Binomial" =  c(mns, mean(rbinom(input$samp, 1, 0.5))),
                    "Exponential" = c(mns, mean(rexp(input$samp))),
                    "Gamma" = c(mns, mean(rgamma(input$samp, 1))),
                    "Lognormal" = c(mns, mean(rlnorm(input$samp, 1))),
                    "Normal" = c(mns, mean(rnorm(input$samp))),
                    "Poisson" = c(mns, mean(rpois(input$samp, 1))),
                    "Uniform" = c(mns, mean(runif(input$samp))))
            mn = mean(mns)
            sd = sd(mns)            
            hist((mns - mn) / sd, prob = TRUE, breaks = 30, main = expression("Distribution of the sample means"),
                xlab = "x", ylab = "Prob(x)", col = "lightblue")
            if (input$norm) curve(dnorm(x, 0, 1), col = "red", add = TRUE, lwd = 3)
            output$sd1 = renderPrint({
                cint1 = mn + c(1, -1) * sd
                round((1 - sum((mns < cint1[2]) + (mns > cint1[1])) / input$sims) * 100, 2)
            })
            output$sd2 = renderPrint({
                cint2 = mn + c(1, -1) * 2 * sd
                round((1 - sum((mns < cint2[2]) + (mns > cint2[1])) / input$sims) * 100, 2)
            })
            output$sd3 = renderPrint({
                cint3 = mn + c(1, -1) * 3 * sd
                round((1 - sum((mns < cint3[2]) + (mns > cint3[1])) / input$sims) * 100, 2)
            })
        })
    }
)

