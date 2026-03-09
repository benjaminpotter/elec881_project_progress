#import "@preview/typslides:1.3.2": *
#import "@preview/fletcher:0.5.8" as fletcher: diagram, node, edge
#import fletcher.shapes: hexagon, diamond

#let blob(pos, label, tint: white, ..args) = node(
	pos, align(center, label),
	width: 28mm,
	fill: tint.lighten(60%),
	stroke: 1pt + tint.darken(20%),
	corner-radius: 5pt,
	..args,
)

// Project configuration
#show: typslides.with(
  ratio: "16-9",
  // theme: "bluey",
  theme: rgb("D80621"), // FIP Red
  font: "Fira Sans",
  font-size: 20pt,
  link-style: "color",
  show-progress: true,
)

#front-slide(
  title: "Systematic Mapping of Polarization-based Navigation Methods",
  subtitle: "Project Progress Report: March 9, 2026",
  authors: [Ben Potter \ Supervisors: Dr. Muhammad Alam, Dr. Yahia Antar \ Instructor: Dr. Mariam Guizani],
  info: [Royal Military College of Canada, Collège Militaire Royal du Canada \ Queen's University],
)

#slide(title: "Outline")[
  + Research Context
  + Research Questions
  + Search Method
  + Preliminary Search Results
  + Challenges and Next Steps
]

#slide(title: "Motivation")[
  Currently there are only two #stress[self-sufficient] means for computation of bearing that has been widely accepted in technical systems [1]: 
  - #stress[Magnetic compass]: 
    - Suffers from distortion of the magnetic field by electric currents in the airframe
    - Geomagnetic field is not uniform which requires additional compensation scheme
  - #stress[Gyrocompass]: 
    - Have strong anti-interference ability but accumulate error over time [2] 
    - Relative position according to the initial position instead of absolute position 
    - Long time to stabilize in case of a power failure

  #set text(size: 12pt)
  #set align(bottom)
  [1] A. Dawadee, Towards an optical aircraft navigation system, Applied Mechanics and Materials 629: 321-326 (2014). \
  [2] J. Liu et al, Global positioning method based on polarized light compass system, Review of scientific instruments 89: 054503 (2018).
]

#slide(title: "A solution inspired by nature...")[
  #cols(columns: (2fr, 1fr))[
    #stress[Case study:] The Sahara desert ant

    - Desert environment poses existential challenges:
      - Pheromone trails employed by other ant species for navigation cannot survive high temperature
      - No visual cues for use as path markers
      - Foraging durations are limited by intense heat
    - Despite challenges, the ant manages to thrive!
    - The remarkable navigation ability is achieved with the limited resources available

    #stress[What is the underlying physical principle?]
  ][
    #image("figures/ant.webp")
  ]
]

#slide(title: "Polarization of Skylight")[

  - When sunlight passes through the atmosphere, it becomes partially polarized
  - Electric field for the polarized light becomes tangent to the sun’s circumference 
  - Polarization becomes stronger with increasing distance from the sun
  - The position of sun can be determined from analyzing the polarization of light

  #grid(
    columns: (1fr, 1fr),
    align: center,
    image("figures/polarization_skylight.png"),
    image("figures/polarization_skylight_2d.png"),
  )
]

#slide(title: "Objectives")[
  + Synthesize research on navigation via skylight polarization
  + Provide a reference from which to offset future contributions
  + Prepare a literature review for my master's thesis

  #framed[
    there are systematic reviews that ask questions that are primarily of interest to researchers.
    Such reviews ask questions that identify and/or scope future research activities [1] 
  ]

  #set text(size: 12pt)
  #set align(bottom)
  [1] Kitchenham, Barbara. (2004). Procedures for Performing Systematic Reviews. Keele, UK, Keele Univ.. 33. 
]

#slide(title: "Prior Search Results")[
  #framed["polarization" AND "sky" AND "navigation" AND ("simulation" OR "model") AND ("camera" OR "sensor" OR "lens")]

  - Search over all fields
  - Date range from 2016 through 2026
  - Test results for control group of known good publications

  #table(
    columns: (1fr, 1fr),
    table.header()[Database][Number of Publications],
    [ACM], [10],
    [Scopus], [779],
    [Web of Science], [35],
    [IEEEXplore], [19],
    [Total], [843]
  )

  All results retrieved on Feb. 23, 2026
]

#slide(title: "Changes from Proposal")[
  - Expand objective to _full_ mapping study of polarization navigation
  - Limit prior objective (investigation of camera models) to one research question
  - Mapping study rather than review
  
  Motivation: I need to prepare a _full_ mapping study for my thesis, so why should I limit the objectives to just camera models in this case?
]

#slide(title: "Research Questions: Overview")[
  Methodological Questions:
  - What are the dominant sensor technologies used to measure skylight polarization?
  - What computational methods are used to extract navigational cues from skylight polarization?

  Performance and Evaluation Questions:
  - What evaluation methods are used to quantify the performance of skylight polarization navigation systems?
  - How has the performance of skylight polarization navigation systems changed over time?
]

// #slide(title: "Research Questions 1 & 2: The Ant's Eyes and Brain")[
//   #cols(columns: (2fr, 1fr))[
//     What are the dominant sensor technologies used to measure skylight polarization?
//     - Need to replicate the ant's ability to measure skylight polarization
//
//     What algorithms are used to extract navigational cues from skylight polarization?
//     - Need to parse the measured skylight polarization information into useful navigational cues
//   ][
//     #image("figures/ant_head_single.jpg")
//   ]
// ]
//
// #slide(title: "Research Questions 3 & 4: Evaluation and Trends")[
//   - What evaluation methods are used to quantify the performance of skylight polarization navigation systems?
//   - How has the performance of skylight polarization navigation systems changed over time?
// ]
//

#slide(title: "Search Method: Procedure Overview")[
  + Search string generation and piloting (iterate)
  + Develop exclusion criteria
  + Title and abstract screening
  + Develop data extraction form
  + Full-text screening and data extraction
]

#slide(title: "Search Method: Search String Generation")[
  
  #table(
    columns: (1fr, 3fr),
    table.header()[Concept][Keywords],
    [Skylight Polarization],
    [
      skylight polarization,
      sky polarization,
      polarized skylight,
      polarization pattern
    ],

    [Navigation],
    [
      navigation,
      orientation,
      heading estimation,
      localization,
      positioning,
      compass
    ],

    [Autonomous Systems\*],
    [
      robot,
      robotic,
      UAV,
      drone,
      car,
      autonomous vehicle,
      navigation system
    ]
  )

  - Balancing recall against precision
  - Alternative spellings e.g., localisation 
  - AND together concepts; OR together keywords
  - \*Include this concept to avoid biology-only publications
]

#slide(title: "Search Method: Piloting with Known Relevant Papers")[
  #grid(
    columns: (1fr, 2fr),
    [
      Determine strength of search string by ensuring known relevant papers are included.
      - Build list of relevant papers from preliminary literature review 
      - Include my previous publications in this list
    ],
    [
      #image("figures/screenshot-20260309-121004.png")
    ]
  )
]

#slide(title: "Search Method: Publication Collection")[
  #grid(
    columns: (1fr, 1fr),
    [
      + Download results from databases in RIS format
        - Scopus, IEEExplore, Web of Science, ACM
        - Title, author, abstract, venue, date, etc.
      + Combine results and deduplicate
        - Deduplication by unique DOI
      + Assign unique citation key to each entry
    ],
    [
      #image("figures/scopus.png")
      #image("figures/ieee_xplore.jpg")
    ]
  )
]

#slide(title: "Search Method: Exclusion Criteria")[
  + English language title and abstract are not available
  + DOI is not available (or does not exist)
  + No contribution toward application of skylight polarization to navigation
  + Publication is not a primary study
]


#slide(title: "Search Method: Title and Abstract Screening")[
  #set align(center)
  Custom Bib Review Tool
  #image("figures/bib_review_tool.png", height: 80%)
]

#slide(title: "Search Method: Title and Abstract Screening")[
  #set align(center)
  Abstrackr Review Tool
  #image("figures/abstrakr.png", height: 80%)
]

#slide(title: "Search Method: Classification Scheme")[
  #table(
    columns: (1fr, 2fr),

    table.header()[Category][Fields],

    "Bibliographic Information",
    [Paper ID & Title, Authors & Year, Venue & Publisher],

    "Application Context",
    [Platform (robot / UAV / vehicle), Environment (outdoor / indoor / sim), Navigation task, Bio-inspired approach (Y/N)],

    "Sensor Technology  (RQ1)",
    [Sensor type & category, Polarization params (AoP, DoP, Stokes), Spectral range & channels, Commercial vs. custom],

    "Computational Methods  (RQ2)",
    [Algorithm category, Heading extraction method, Sky model (e.g., Rayleigh), Sensor fusion & real-time capability],

    "Evaluation Methodology  (RQ3)",
    [Evaluation environment, Experiment type, Ground truth source, Dataset availability & \# trials],

    "Performance Metrics  (RQ4)",
    [Heading & max error (°), Localization error, Robustness evaluation, Computational cost],
  )
]

#slide(title: "Challenges and Next Steps")[
  Challenges:
  - Defining research questions and scope
  - Balancing recall against precision in the search string
  - Managing large numbers of publications efficiently

  Next steps:
  - Apply new search string to databases
  - Complete title and abstract screening
  - Refine and apply data extraction form during full-text screening
]

