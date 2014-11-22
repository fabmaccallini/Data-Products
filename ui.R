shinyUI(fluidPage(
    titlePanel("Play with the Central Limit Theorem"),
    sidebarLayout(
        sidebarPanel(
            selectInput("var", 
                        label = "Choose a distribution",
                        choices = list("Binomial", "Exponential", "Gamma", "Lognormal",
                            "Normal", "Poisson", "Uniform")),
            sliderInput("samp", "Select the number of samples", value = 100, min = 25,
                        max = 1000, step = 25),
            numericInput("sims", "Number of simulations", value = 1000, min = 25,
                         max = 10000),
            checkboxInput("norm", "Draw the Normal distribution", value = TRUE),
            br(),
            h5("A way to test the normality of the distribution is by comparing what 
                proportion of the sample means falls within"),
            p("1 sd (68.3 normal dist.)"),
            verbatimTextOutput("sd1"),
            p("2 sd (95.5 normal dist.)"),
            verbatimTextOutput("sd2"),
            p("3 sd (99.7 normal dist.)"),
            verbatimTextOutput("sd3")
        ),
        mainPanel(
        h4("Definition"),
        p("In probability theory, the central limit theorem (CLT) states that, given 
            certain conditions, the arithmetic mean of a sufficiently large number of 
            iterates of independent random variables, each with a well-defined expected 
            value and well-defined variance, will be approximately normally distributed, 
            regardless of the underlying distribution. (source: Wikipedia)"),
        p("The distribution of the sample means has the mean equal to the one of the 
              underlying distribution, and the variance equal to the one of the 
              underlying distribution divided by the square root of the sample size."),
        plotOutput('MyPlot')
        )
    )
))
