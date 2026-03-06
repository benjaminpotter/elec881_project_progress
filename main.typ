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
  + Synthesize all existing research on camera simulation for navigation via skylight polarization
  + Provide a reference from which to offset future contributions

  #framed[
    there are systematic reviews that ask questions that are primarily of interest to researchers.
    Such reviews ask questions that identify and/or scope future research activities [1] 
  ]

  #set text(size: 12pt)
  #set align(bottom)
  [1] Kitchenham, Barbara. (2004). Procedures for Performing Systematic Reviews. Keele, UK, Keele Univ.. 33. 
]

#slide(title: "Research Questions")[
  - What physical models are used to predict the atmospheric polarization of skylight?
  - What camera models are used to simulate measurement of skylight polarization?
  - What methods are available for quantifying the accuracy of such camera models?
  - How are simulated skylight polarization measurements used for navigation?
]

#slide(title: "RQ 1")[
  What physical models are used to predict the atmospheric polarization of skylight?
]

#slide(title: "RQ 2")[
  What camera models are used to simulate measurement of skylight polarization?
]

#slide(title: "RQ 3")[
  What methods are available for quantifying the accuracy of such camera models?
]

#slide(title: "RQ 4")[
  How are simulated skylight polarization measurements used for navigation?
]

#slide(title: "Search Method: Search String Generation")[
  #framed["polarization" AND "sky" AND "navigation" AND ("simulation" OR "model") AND ("camera" OR "sensor" OR "lens")]

  - Search over all fields
  - Date range from 2016 through 2026
  - Test results for control group of known good publications
]

#slide(title: "Search Method: Publication Collection")[
  + Download results from databases as .bib files
    - Scopus, IEEExplore, Web of Science, ACM
    - Title, author, abstract, venue, date, etc.
  + Combine results and deduplicate
    - Deduplication by unique DOI
  + Assign unique citation key to each entry
]


#slide(title: "Search Method: Application of Exclusion Criteria")[
  + English language title and abstract are not available
  + DOI is not available (or does not exist)
  + No contribution toward application of polarization to navigation
  + No application of a skylight polarization model in methodology
  + Publication is not a primary study
]

#slide(title: "Search Results")[
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

#slide(title: "Challenges and Next Steps")[
  Challenges:
  - Defining research questions

  Next steps:
  - Complete title and abstract screening
]

