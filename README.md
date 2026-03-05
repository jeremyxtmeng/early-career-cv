# linked-cv

A Typst template for clean, hyperlink-rich academic and professional CVs.
Ported from a LaTeX original; faithful to its spacing and visual style.

## Files

```
linked-cv/
├── linked-cv.typ   # template — import this in your CV file
├── example.typ     # complete example (Jeremy Meng's CV)
└── README.md       # this file
```

## Quick start

```typst
#import "linked-cv.typ": *

#show: cv                   // apply default CV styles

#cv-header(
  name: "Jane Doe",
  email: "jane@example.com",
  linkedin-label: "linkedin.com/in/janedoe",
  linkedin-url:   "https://www.linkedin.com/in/janedoe",
  location: "San Francisco, CA",
)

= Education
#company-row([Ph.D. in Computer Science | MIT], [May 2025])

= Experience
#company-row([Software Engineer], [2023--Present])
#title-row([Google, Mountain View CA], [])
#bullets([
  - Built a distributed system handling 1M+ requests per day.
  - Led migration to Kubernetes, reducing deploy time by 40%.
])

= Publications
#pub-init([
  Doe, Jane. 2024. "A Paper Title." _Journal of Examples_.
])
```

Compile with:

```sh
typst compile your-cv.typ
```

---

## API reference

### `cv` — document template

Apply to the whole document with `#show: cv` or `#show: cv.with(...)`.

| Parameter    | Type       | Default                        | Description                          |
|--------------|------------|--------------------------------|--------------------------------------|
| `font`       | string     | `"New Computer Modern"`        | Body font family                     |
| `font-size`  | length     | `11pt`                         | Base font size                       |
| `paper`      | string     | `"us-letter"`                  | Page size (`"a4"`, `"us-letter"`, …) |
| `margin`     | dictionary | `(l/r: 0.5in, t/b: 0.1in)`     | Page margins                         |
| `link-color` | color      | `rgb("#1155CC")`               | Hyperlink color in body text         |

---

### `cv-header` — contact header

Renders a centered name with an icon-separated contact bar.
Header links are always black regardless of `link-color`.

| Parameter        | Type   | Required | Description                                         |
|------------------|--------|----------|-----------------------------------------------------|
| `name`           | string | yes      | Full display name                                   |
| `phone`          | string | no       | Display string, e.g. `"(650) 787-6157"`             |
| `phone-url`      | string | no       | Override for `tel:` URL (defaults to `"tel:" + phone`) |
| `email`          | string | no       | Email address (used for display and `mailto:` link) |
| `linkedin-label` | string | no       | Short label, e.g. `"linkedin.com/in/janedoe"`       |
| `linkedin-url`   | string | no       | Full LinkedIn URL                                   |
| `github-label`   | string | no       | Short label, e.g. `"github.com/janedoe"`            |
| `github-url`     | string | no       | Full GitHub URL                                     |
| `location`       | string | no       | Display string, e.g. `"Davis, CA"`                  |
| `location-url`   | string | no       | Optional map link                                   |

---

### `company-row(l, r)` — bold name row

Left-flush bold text, right-flush plain text.
Use for company names, institutions, degree titles, or project names.

```typst
#company-row([Ph.D. in Economics | UC Davis], [2020--2026])
#company-row([My Project Title], [#link("https://github.com/...")[Github]])
```

---

### `title-row(l, r)` — italic subtitle row

Left-flush bold-italic 10 pt text, right-flush italic 10 pt text.
Use for job titles, research roles, or organizational sub-labels.

```typst
#title-row([Senior Economist], [Washington, DC])
#title-row([UC Davis (dissertation research)], [])
```

---

### `bullets(body)` — bullet list wrapper

Adds consistent 3 pt vertical padding around a standard Typst list.
Place directly after a `company-row` / `title-row` pair.

```typst
#bullets([
  - First responsibility or achievement.
  - Second responsibility.
    - Sub-point with a nested bullet.
])
```

Bullets automatically render at 10 pt.
Outer bullets use `•`; nested bullets use `◦`.

---

### `pub-init(x)` — first publication entry

Renders a hanging-indent paragraph with a 3 pt top gap.
Use for the **first** entry immediately after the `= Publications` heading.

```typst
= Selected Publications
#pub-init([
  Last, First. 2024. "#link("https://doi.org/...")[Title]." _Journal Name_.
])
```

---

### `pub(x)` — subsequent publication entries

Same hanging-indent paragraph, no extra top gap (previous entry's bottom spacing acts as separator).

```typst
#pub([
  Last, First. 2023. "Another Title." Working paper.
])
```

---

## Spacing model

All vertical spacing uses Typst's *weak* `v()` so adjacent identical values collapse
automatically — no double-spacing between elements.

| Gap             | Value    | Used by                                          |
|-----------------|----------|--------------------------------------------------|
| Section heading | 3 pt top | `show heading.where(level: 1)`                  |
| Row             | 3 pt top + bottom | `row`, `company-row`, `title-row`       |
| Bullet wrapper  | 3 pt top + bottom | `bullets`                               |
| Between items   | 0.65 em  | `list(spacing:)`, `pub`, nested lists            |

## Dependencies

The template requires two packages from the Typst preview registry:

```typst
#import "@preview/fontawesome:0.5.0": *
#import "@preview/scienceicons:0.1.0": email-icon, linkedin-icon, github-icon
```

These are imported automatically inside `linked-cv.typ`; you do not need to
re-import them in your CV file.
