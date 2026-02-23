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
  title: "Bio-Inspired Celestial Compass for Aircraft Navigation",
  authors: "Ben Potter, Devyansh Agarwal, Dr. Muhammad Alam, Dr. Yahia Antar, Dr. Jawad Siddiqui",
  info: [Royal Military College of Canada, Collège Militaire Royal du Canada \ Queen's University],
)

#slide(title: "Outline")[

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

#slide(title: "Research Questions")[

]

#slide(title: "RQ 0")[
  This is my mapping research question.
]

#slide(title: "RQ 1")[]
#slide(title: "RQ 1")[]

#slide(title: "Search Method")[
  #framed[This is the search string]

  + Download results from databases as .bib files
    - Title, author, abstract, venue, date, etc.
  + Test results for control group of known good publications
  + Combine results and deduplicate
  + Apply filtering by title
  + Apply filtering by abstract
]

#slide(title: "Control Publications")[

]

#slide(title: "Search Results")[]

#slide(title: "Exclusion Criteria")[]

