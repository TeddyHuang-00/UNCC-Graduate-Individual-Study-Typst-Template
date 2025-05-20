#import "template.typ": template-config, detail

// TODO: Update your information
#show: doc => template-config(
  name: "John Doe",
  id: 801234567,
  email: "jdoe@charlotte.edu",
  instructor: "Dr. Jane Smith",
  department: "Department of Computer Science",
  title: "Independent Study in Typst Programming",
  credit: 3,
  term: "Fall 2025",
  substitution: none,
  doc,
)

// --- Course Application to Plan of Study ---

#detail[Expected Student Learning Outcomes/Objectives][
  // TODO: Add expected student learning outcomes/objectives.
]

#detail[Grading/Evaluation Criteria][
  // TODO: Add grading/evaluation criteria.
]

#detail[Assignments (readings, description of assignments, etc.)][
  // TODO: Add assignments (readings, description of assignments, etc.).
]
