# UNCC Independent Study Template

This is a [Typst](https://typst.app/)-based Independent Study application form template for the University of North Carolina at Charlotte (UNC Charlotte). This template provides a clean, easy-to-fill digital version based on UNCC's official independent study form.

## Prerequisites

To use this template, you need to have [Typst](https://typst.app/) installed or use the Typst web editor.

## How to Use

1. Clone or download this repository to your local device
2. Open the `main.typ` file
3. Update the following personal information section:

   ```typst
   #show: doc => template-config(
    name: "John Doe", // Your name
    id: 801234567, // Your student ID
    email: "jdoe@charlotte.edu", // Your email
    instructor: "Dr. Jane Smith", // Instructor name
    department: "Department of Computer Science", // Department name
    title: "Independent Study in Typst Programming", // Independent study title
    credit: 3, // Credit hours
    term: "Fall 2025", // Term
    substitution: none, // If this is a course substitution, enter the course number; otherwise keep none for an elective
    doc,
    )
   ```

4. Fill in the required content below:
   - **Expected Student Learning Outcomes/Objectives**: The expected learning outcomes and objectives
   - **Grading/Evaluation Criteria**: Grading and evaluation standards
   - **Assignments**: Description of assignments, reading materials, etc.

## Compilation Methods

### Using Typst CLI

If you have the Typst CLI installed, you can compile the document with the following command:

```bash
typst compile main.typ
```

### Using Typst Web

1. Visit the [Typst web application](https://typst.app/)
2. Create a new project
3. Upload all files (including `main.typ`, `template.typ`, and the `assets` folder)
4. Open the `main.typ` file, and the system will compile it automatically

## File Structure

- `main.typ`: Main file containing your personal information and application details
- `template.typ`: Template file defining the form style and layout (usually doesn't need modification)
- `assets/logo.svg`: UNCC logo image

## Important Notes

- This form needs to be printed for signatures
- After completion and signing, please submit the form to your instructor, Graduate Program Director, and department office
- This form does not apply to Thesis or Dissertation research

## License

Please see the [LICENSE](LICENSE) file for licensing information.
