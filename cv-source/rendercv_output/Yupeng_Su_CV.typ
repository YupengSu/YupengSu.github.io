// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Yupeng Su",
  title: "Yupeng Su - CV",
  footer: context { [#emph[Yupeng Su -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in July 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: true,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 79, 144),
  colors-headline: rgb(0, 79, 144),
  colors-connections: rgb(0, 79, 144),
  colors-section-titles: rgb(0, 79, 144),
  colors-links: rgb(0, 79, 144),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "Source Sans 3",
  typography-font-family-name: "Source Sans 3",
  typography-font-family-headline: "Source Sans 3",
  typography-font-family-connections: "Source Sans 3",
  typography-font-family-section-titles: "Source Sans 3",
  typography-font-size-body: 10pt,
  typography-font-size-name: 30pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.4em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: true,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: false,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: true,
  header-connections-display-urls-instead-of-usernames: false,
  header-connections-separator: "",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_partial_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.3em,
  sections-space-between-regular-entries: 1.2em,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0.2cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: true,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0cm,
  entries-highlights-bullet:  "•" ,
  entries-highlights-nested-bullet:  "•" ,
  entries-highlights-space-left: 0.15cm,
  entries-highlights-space-above: 0cm,
  entries-highlights-space-between-items: 0cm,
  entries-highlights-space-between-bullet-and-text: 0.5em,
  date: datetime(
    year: 2026,
    month: 7,
    day: 16,
  ),
)


= Yupeng Su

#connections(
  [#connection-with-icon("location-dot")[Santa Barbara, CA, USA]],
  [#link("mailto:yupengsu@ucsb.edu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("envelope")[yupengsu\@ucsb.edu]]],
  [#link("https://yupengsu.github.io/", icon: false, if-underline: false, if-color: false)[#connection-with-icon("link")[yupengsu.github.io]]],
  [#link("https://linkedin.com/in/yupeng-su", icon: false, if-underline: false, if-color: false)[#connection-with-icon("linkedin")[yupeng-su]]],
  [#link("https://github.com/YupengSu", icon: false, if-underline: false, if-color: false)[#connection-with-icon("github")[YupengSu]]],
)


== Research Interests

#strong[Efficient Pre-training \/ Post-training Optimization for Large Language Models:] focusing on quantization, sparsification, and low-rank decomposition techniques to improve training and inference efficiency.

#strong[High-Performance Computing Infrastructure on GPU \/ FPGA Architectures:] including compiler optimization and GPU\/FPGA kernel adaptation for high-performance, energy-efficient inference and practical edge deployment.

== Education

#education-entry(
  [
    #strong[University of California, Santa Barbara], Computer Science

    - Advisor: Prof. Zheng Zhang (ECE, UCSB).

  ],
  [
    CA, USA

    Sept 2025 – present

  ],
  degree-column: [
    #strong[PhD]
  ],
)

#education-entry(
  [
    #strong[Southern University of Science and Technology], Microelectronics

    - Advisor: Prof. Hao Yu (SME, SUSTech).

    - CGA\/GPA: 3.93\/4.0, with 178 units completed.

    - Awards: Nominee of Top Ten Graduates of SUSTech; Top Ten Graduates of the College of Engineering, SUSTech.

    - Dissertation: #emph[Enhanced Mix-Precision Post-Training Quantization for Large Language Models: Block Awareness and Outlier Identification.]

  ],
  [
    China

    Sept 2021 – July 2025

  ],
  degree-column: [
    #strong[BE]
  ],
)

== Publications

#regular-entry(
  [
    #strong[APTQ: Attention-aware post-training mixed-precision quantization for large language models]

    Ziyi Guan, Hantao Huang, #strong[Yupeng Su], Hong Huang, Ngai Wong, Hao Yu

    #link("https://doi.org/10.1145/3649329.3658498")[10.1145\/3649329.3658498] (IEEE\/ACM DAC, 2024)

  ],
  [
    June 2024

  ],
)

#regular-entry(
  [
    #strong[LLM-Barber: Block-Aware Rebuilder for Sparsity Mask in One-Shot for Large Language Models]

    #strong[Yupeng Su], Ziyi Guan, Xiaoqun Liu, Tianlai Jin, Dongkuan Wu, Chenfei Chen, Graziano Chesi, Ngai Wong, Hao Yu

    #link("https://doi.org/10.1109/ICCAD66269.2025.11240704")[10.1109\/ICCAD66269.2025.11240704] (IEEE\/ACM ICCAD, 2025)

  ],
  [
    Nov 2025

  ],
)

#regular-entry(
  [
    #strong[EdgeLLM: A Highly Efficient CPU-FPGA Heterogeneous Edge Accelerator for Large Language Models]

    Mingqiang Huang, Ao Shen, Kai Li, Haoxiang Peng, Boyu Li, #strong[Yupeng Su], Hao Yu

    #link("https://doi.org/10.1109/TCSI.2025.3546256")[10.1109\/TCSI.2025.3546256] (IEEE TCAS I: Regular Papers, 2025)

  ],
  [
    May 2025

  ],
)

#regular-entry(
  [
    #strong[Quantization Meets Reasoning: Exploring Low-Bit Quantization Degradation for Mathematical Reasoning]

    Zhen Li#sym.ast.basic#h(0pt, weak: true) , #strong[Yupeng Su]#sym.ast.basic#h(0pt, weak: true) , Runming Yang, Congkai Xie, Zheng Wang, Zhongwei Xie, Ngai Wong, Hongxia Yang

    #link("https://arxiv.org/abs/2501.03035")[arxiv.org\/abs\/2501.03035] (Under Review (#sym.ast.basic#h(0pt, weak: true) Equal Contribution))

  ],
  [
    Jan 2025

  ],
)

#regular-entry(
  [
    #strong[PTQTP: Post-Training Quantization to Trit-Planes for Large Language Models]

    He Xiao, Runming Yang, Qingyao Yang, Wendong Xu, Zhen Li, #strong[Yupeng Su], Zhengwu Liu, Hongxia Yang, Ngai Wong

    #link("https://arxiv.org/abs/2509.16989")[arxiv.org\/abs\/2509.16989] (Under Review)

  ],
  [
    Sept 2025

  ],
)

== Experience

#regular-entry(
  [
    #strong[Prof. Hongxia Yang's Lab \@ PolyU], Student Research Assistant

    - Investigated the effects of compression on reasoning and explored data-driven strategies for restoration.

  ],
  [
    Hong Kong, China

    Nov 2024 – May 2025

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[Next Gen AI (NGai) Lab \@ HKU], Student Research Assistant

    - Contributed to lightweight networks for efficient inference under specified computing architectures.

  ],
  [
    Hong Kong, China

    Aug 2024 – Feb 2025

    

    7 months

  ],
)

#regular-entry(
  [
    #strong[High Performance Integrated Circuit Design Lab \@ SUSTech], Summer Intern

    - Implemented end-to-end pipelines for compressing, optimizing, and deploying models for efficient devices.

    - Published #strong[EdgeLLM] based on the project and its results.

  ],
  [
    China

    June 2024 – Sept 2024

    

    4 months

  ],
)
