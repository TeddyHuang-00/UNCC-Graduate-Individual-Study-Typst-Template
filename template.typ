// Graduate Independent Study Form - Typst Template
// Based on UNC Charlotte Graduate Independent Study Template (Revised 2.20.2019)

// --- Helper function for input lines ---
#let input(width: 100%, body) = {
  box(width: width, height: 1em, stroke: (bottom: 0.5pt + black))[#body]
}

#let checkbox(checked) = {
  if checked {
    box(
      stroke: .05em + black,
      fill: white,
      height: .8em,
      width: .8em,
      {
        box(move(dy: .48em, dx: 0.1em, rotate(45deg, reflow: false, line(length: 0.3em, stroke: black + .1em))))
        box(move(dy: .38em, dx: -0.05em, rotate(-45deg, reflow: false, line(length: 0.48em, stroke: black + .1em))))
      },
    )
  } else {
    box(stroke: .05em + black, fill: white, height: .8em, width: .8em)
  }
}

#let text-area(min-height: 3, body) = context {
  layout(size => {
    let fake-content = [F]
    let body-height = measure(box(width: size.width, body)).height
    let min-height = measure(fake-content).height * min-height
    if body-height < min-height {
      block(height: min-height)[#body]
    } else {
      body
    }
  })
}

#let field(no-column: false, field-name, field-value) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 2pt,
    if no-column { field-name } else [#field-name:], input[#field-value],
  )
}

#let detail(field-name, field-text) = {
  [=== #field-name:]
  text-area(field-text)
}

// --- Template Setup ---
#let template-config(
  name: "John Doe",
  id: "80xxxxxxx",
  email: "jdoe@charlotte.edu",
  instructor: "Dr. Jane Smith",
  department: "Computer Science",
  title: "Independent Study in Typst Programming",
  credit: "3",
  term: "Fall 2025",
  substitution: none,
  doc,
) = {
  set page(
    paper: "us-letter",
    margin: (x: 1in, y: 0.8in),
  )
  set text(font: "Arial", size: 11pt)
  set par(spacing: 1.25em, justify: true)
  show figure.where(kind: table): set figure.caption(position: top)

  // --- Header ---
  align(center)[
    #set par(spacing: 0.5em)
    #image("assets/logo.svg", height: 7em)
    #text(size: 14pt)[
      *Graduate Independent Study Template*
    ]

    _(To be completed by the student and supervising faculty member)_
  ]

  // --- Student and Course Information ---

  field[Student Name][#name]
  grid(
    columns: (3fr, 5fr),
    field[Student ID \#][#id], field[Student Email Address][#email],
  )
  field[Supervising Instructor][#instructor]
  field[Department][#department]
  field[Course Title/Topic][#title]
  grid(
    columns: (1fr, 1fr),
    field[Credit Hours][#credit], field[Term][#term],
  )

  [How will this course apply to your plan of study?]

  // Determine if this is a course substitution or an elective.
  let is-substitution = substitution != none
  grid(
    columns: (1fr, 5em, auto, 5em),
    field(no-column: true)[#align(left)[#checkbox(is-substitution) Course substitution for]][#substitution],
    align(center)[or],
    [#checkbox(not is-substitution) Elective],
  )

  // Heading show rules.
  doc

  // --- Signatures and Dates ---
  place(
    bottom,
    float: true,
    clearance: 6pt,
    block(breakable: false)[
      #v(2em)
      #grid(
        columns: (3fr, 1fr),
        row-gutter: 0.5em,
        input[], input[],
        [Student Signature], [Date],
      )
      #grid(
        columns: (3fr, 1fr),
        row-gutter: 0.5em,
        input[], input[],
        [Supervising Instructor Signature], [Date],
      )
      #v(2em)
      #grid(
        columns: (auto, auto, 1fr),
        column-gutter: 2em,
        align: left + top,
        [CC:],
        [
          Graduate Program Director\
          Department File
        ],
      )
      #v(1em)

      #text(size: 8pt)[
        #align(center)[
          This form does not apply to Thesis or Dissertation research. Departments are free to use their own form, if they prefer.

          However, the form and syllabus must be filled with the department before this IS begins.
        ]
      ]
    ],
  )
}
