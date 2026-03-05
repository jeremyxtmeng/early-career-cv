// example.typ — Jeremy (Xiangtao) Meng's CV, written with the linked-cv template.
//
// Compile:  typst compile example.typ
// Preview:  typst watch  example.typ

#import "early-career-cv.typ": *

// Apply the CV template to the whole document.
#show: cv.with(
  font: "New Computer Modern",
  font-size: 11pt,
  paper: "us-letter",
  margin: (left: 0.5in, right: 0.5in, top: 0.1in, bottom: 0.1in),
  link-color: rgb("#1155CC"),
)

// ── Header ─────────────────────────────────────────────────────────────────────
#cv-header(
  name: "Jeremy Meng",
  phone: "(650)xxx-xxxx",
  phone-url: "tel:650xxxxxxx",
  email: "xxxx@xxxx.xxx",
  linkedin-label: "linkedin.com/jxtmeng7887",
  linkedin-url: "https://www.linkedin.com/in/jxtmeng7887",
  github-label: "github.com/jeremyxtmeng",
  github-url: "https://github.com/jeremyxtmeng",
  location: "San Fran., CA",
  location-url: "xxx",
)

// ── Education ─────────────────────────────────────────────────────────────────
= Education
#company-row([Ph.D. in Economics $|$ University of California, Davis], [Feb 2026])
#company-row([M.A. in Economics $|$ University of British Columbia], [Sept 2016--Oct 2017])
#company-row([B.A. (Hons) in Economics $|$ Queen's University], [Sept 2012--May 2016])

// ── Technical Skills ──────────────────────────────────────────────────────────
= Technical Skills
#bullets([
  - Excel, Python (Pandas, Scikit-learn, TensorFlow, PySpark), SQL, R, Stata
  - time series econometrics, causal inference (diff-in-diffs, shift-share IV, regression
    discontinuity, propensity score matching), applied ML (XGBoost, causal ML,
    neural networks/transformer)
])

// ── Selected Projects ─────────────────────────────────────────────────────────
= Selected Projects
#company-row(
  [Project on the U.S. Economy and Market Index--Driven Asset Demand Shocks],
  [#link("https://jeremyxtmeng.github.io/jm/files/benchmark_Meng.pdf")[Report]],
)
#bullets([
  - Built a country-by-month panel linking mutual fund holdings, 1K+ benchmark indices,
    and EM sovereign spreads.
  - Developed a structural credit risk model to run scenario analyses (e.g., index
    exclusion; U.S. risk-on episodes).
  - Estimated the causal impact of benchmark-driven asset demand shocks on spreads using
    event studies and shift-share IV designs; translated results into concise,
    policy-relevant takeaways.
])

#company-row(
  [Project on Machine Learning Solution to Macro Time-Series Forecasting],
  [#link("https://github.com/jeremyxtmeng/deminimishelper_v01.git")[Github]],
)
#bullets([
  - Trained XGBoost and statistical baselines to forecast 12,000+ time series with
    performance tracking.
  - Deployed forecasting models to the cloud and enabled on-demand forecasts to support
    rapid scenario updates.
])

// ── Experience ────────────────────────────────────────────────────────────────
= Experience
#company-row([Economist], [July 2025--Oct 2025])
#title-row([UC Davis], [#link("https://github.com/jeremyxtmeng/medtariff")[Github]])
#bullets([
  - Built and maintained a large database from 10K+ pages of U.S. government legal
    documents using Python/R (for natural language processing), with quality checks to
    ensure accuracy and reproducibility.
  - Produced analyses on policy changes under tight deadlines, created new datasets
    (10M+ records), and applied quasi-experimental methods to estimate causal effects;
    summarized results in tables/figures for stakeholders.
    - Improved statistical power for detecting cost impacts by tracking daily policy
      changes over a decade at a granular classification level and identifying previously
      unrecorded policy changes.
    - Informed decision-making by applying supervised classification and
      difference-in-differences to estimate heterogeneous effects across categories,
      highlighting segments requiring more urgent attention.
  - Developed metrics to assess supply-chain resilience to policy changes and supported
    repeatable reporting.
])

#company-row([Researcher in Macroeconomics], [Oct 2018--June 2025])
#title-row([UC Davis (through dissertation research)], [])
#bullets([
  - Built reproducible workflows using R/Stata/Matlab for cleaning and maintaining
    economic datasets, producing tables and charts, and conducting statistical analysis.
  - Designed and analyzed quasi-experiments in observational data (difference-in-diffs,
    shift-share IV, event studies) to quantify impacts relevant for economic monitoring
    and forecasting, including:
    - temporary regional economic booms on employment, informing expectations about
      persistence in employment.
    - market index inclusion events, identifying conditions under which credit risk can
      rise and affect financing cost.
  - Used structural models to translate estimated causal effects into forward-looking
    scenario and sensitivity analyses to inform decisions under alternative assumptions,
    including:
    - simulated how supplier and retailer pricing behavior affects pass-through under
      policy changes, supporting scenario-based interpretation of price impacts.
    - estimated mutual fund demand elasticities to assess how shifts in investor behavior
      may amplify market volatility.
])

#company-row([Economist (Research Assistant)], [March 2015--April 2016])
#title-row([Queen's University, Ontario], [])
#bullets([
  - Worked on two projects; completed in 3 months for a 6-month project on extracting
    data from 3K+ physical pages by using OCR, manual checking and summary statistics as
    cross-validation, producing an analysis-ready dataset.
])

// ── Selected Publications ─────────────────────────────────────────────────────
= Selected Publications
#pub-init([
  Kang, Manho, Xiangtao Meng, Katheryn N. Russ, and James Waters. Forthcoming.
  "#link("http://www.nber.org/papers/w34531")[Tariffs on Medical Goods: Pass-through,
  Geography, and Aggregate Costs to the US Healthcare System]."
  _National Tax Journal_.
])

#pub([
  Meng, Xiangtao, Katheryn N. Russ, and Sanjay Singh. 2023.
  "#link("https://oxfordre.com/economics/display/10.1093/acrefore/9780190625979.001.0001/acrefore-9780190625979-e-623")[Tariffs
  and the Macroeconomy]."
  _Oxford Research Encyclopedia of Economics and Finance_.
])

#pub([
  Meng, Xiangtao. 2025.
  "#link("https://jeremyxtmeng.github.io/jm/files/benchmark_Meng.pdf")[Benchmark Index
  Inclusion and Sovereign Risk]."
  Working paper.
])

#pub([
  ---. 2024. "Could Tariffs Provide a Stimulus? In Search of Elusive Benefits of
  Protectionism." Working paper.
])

#pub([
  ---. 2021.
  "#link("https://jeremyxtmeng.github.io/jm/files/pass_through_Meng.pdf")[Tariff
  pass-through at the Dock and the Store]."
  Working paper.
])
