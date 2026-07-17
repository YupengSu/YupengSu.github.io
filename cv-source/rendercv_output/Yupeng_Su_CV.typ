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
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.6em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 7,
    day: 17,
  ),
)


= Yupeng Su

#connections(
  [Santa Barbara, CA, USA],
  [#link("mailto:yupengsu@ucsb.edu", icon: false, if-underline: false, if-color: false)[yupengsu\@ucsb.edu]],
  [#link("https://yupengsu.github.io/", icon: false, if-underline: false, if-color: false)[yupengsu.github.io]],
  [#link("https://linkedin.com/in/yupeng-su", icon: false, if-underline: false, if-color: false)[linkedin.com\/in\/yupeng-su]],
  [#link("https://github.com/YupengSu", icon: false, if-underline: false, if-color: false)[github.com\/YupengSu]],
)


== Research Interests

#strong[Efficient Pre-training \/ Post-training Optimization for Large Language Models:] focusing on quantization, sparsification, and low-rank decomposition techniques to improve training and inference efficiency.

#strong[High-Performance Computing Infrastructure on GPU \/ FPGA Architectures:] including compiler optimization and GPU\/FPGA kernel adaptation for high-performance, energy-efficient inference and practical edge deployment.

== Education

#education-entry(
  [
    #strong[University of California, Santa Barbara], PhD in Computer Science -- CA, USA

  ],
  [
    Sept 2025 – present

  ],
  main-column-second-row: [
    - Advisor: Prof. Zheng Zhang (ECE, UCSB).

    - GPA: 4.0\/4.0.

  ],
)

#education-entry(
  [
    #strong[Southern University of Science and Technology], BE in Microelectronics -- China

  ],
  [
    Sept 2021 – July 2025

  ],
  main-column-second-row: [
    - Advisor: Prof. Hao Yu (SME, SUSTech).

    - GPA: 3.93\/4.0, with 178 units completed.

    - Awards: Nominee of Top Ten Graduates of SUSTech; Top Ten Graduates of the College of Engineering, SUSTech.

    - Dissertation: #emph[Enhanced Mix-Precision Post-Training Quantization for Large Language Models: Block Awareness and Outlier Identification.]

  ],
)

== Publications

#regular-entry(
  [
    #strong[MuonQ: Enhancing Low-Bit Muon Quantization via Directional Fidelity Optimization]

  ],
  [
    July 2026

  ],
  main-column-second-row: [
    #strong[Yupeng Su], Ruijie Zhang, Ziyue Liu, Yequan Zhao, Zheng Zhang

    #link("https://arxiv.org/abs/2605.11396")[arxiv.org\/abs\/2605.11396] (CoLM, 2026)

  ],
)

#regular-entry(
  [
    #strong[RankGuide: Tensor-Rank-Guided Routing and Steering for Efficient Reasoning]

  ],
  [
    July 2026

  ],
  main-column-second-row: [
    Jiayi Tian, #strong[Yupeng Su], Ryan Solgi, Souvik Kundu, Zheng Zhang

    #link("https://arxiv.org/abs/2604.16694")[arxiv.org\/abs\/2604.16694] (CoLM, 2026)

  ],
)

#regular-entry(
  [
    #strong[Muon²: Boosting Muon via Adaptive Second-Moment Preconditioning]

  ],
  [
    Apr 2026

  ],
  main-column-second-row: [
    Ziyue Liu, Ruijie Zhang, Zhengyang Wang, Yequan Zhao, #strong[Yupeng Su], Zi Yang, Zheng Zhang

    #link("https://arxiv.org/abs/2604.09967")[arxiv.org\/abs\/2604.09967] (Under Review)

  ],
)

#regular-entry(
  [
    #strong[MUON+: Towards More Effective Muon via One Additional Normalization Step for LLM Pre-training]

  ],
  [
    Feb 2026

  ],
  main-column-second-row: [
    Ruijie Zhang, Yequan Zhao, Ziyue Liu, Zhengyang Wang, #strong[Yupeng Su], Liyan Tan, Zheng Zhang

    #link("https://arxiv.org/abs/2602.21545")[arxiv.org\/abs\/2602.21545] (Under Review)

  ],
)

#regular-entry(
  [
    #strong[TEON: Tensorized Orthonormalization Beyond Layer-Wise Muon for Large Language Model Pre-Training]

  ],
  [
    Jan 2026

  ],
  main-column-second-row: [
    Ruijie Zhang, Yequan Zhao, Ziyue Liu, Zhengyang Wang, Dongyang Li, #strong[Yupeng Su], Sijia Liu, Zheng Zhang

    #link("https://arxiv.org/abs/2601.23261")[arxiv.org\/abs\/2601.23261] (Under Review)

  ],
)

#regular-entry(
  [
    #strong[APTQ+: Attention-FFN-aware Post-Training Quantization for a Layer-wise LLM Accelerator on FPGA]

  ],
  [
    May 2026

  ],
  main-column-second-row: [
    Ziyi Guan, Zhengfei Chen, Dongkuan Wu, Ao Shen, Yifan Guo, #strong[Yupeng Su], Graziano Chesi, Mingqiang Huang, Ngai Wong, Hao Yu

    #link("https://doi.org/10.1109/TCAD.2026.3697679")[10.1109\/TCAD.2026.3697679] (IEEE TCAD, 2026)

  ],
)

#regular-entry(
  [
    #strong[LLM-Barber: Block-Aware Rebuilder for Sparsity Mask in One-Shot for Large Language Models]

  ],
  [
    Nov 2025

  ],
  main-column-second-row: [
    #strong[Yupeng Su], Ziyi Guan, Xiaoqun Liu, Tianlai Jin, Dongkuan Wu, Zhengfei Chen, Graziano Chesi, Ngai Wong, Hao Yu

    #link("https://doi.org/10.1109/ICCAD66269.2025.11240704")[10.1109\/ICCAD66269.2025.11240704] (IEEE\/ACM ICCAD, 2025)

  ],
)

#regular-entry(
  [
    #strong[PTQTP: Post-Training Quantization to Trit-Planes for Large Language Models]

  ],
  [
    Sept 2025

  ],
  main-column-second-row: [
    He Xiao, Runming Yang, Qingyao Yang, Wendong Xu, Zhen Li, #strong[Yupeng Su], Zhengwu Liu, Hongxia Yang, Ngai Wong

    #link("https://arxiv.org/abs/2509.16989")[arxiv.org\/abs\/2509.16989] (Under Review)

  ],
)

#regular-entry(
  [
    #strong[Quantization Meets Reasoning: Exploring and Mitigating Degradation of Low-Bit LLMs in Mathematical Reasoning]

  ],
  [
    Jan 2025

  ],
  main-column-second-row: [
    Zhen Li#sym.ast.basic#h(0pt, weak: true) , #strong[Yupeng Su]#sym.ast.basic#h(0pt, weak: true) , Songmiao Wang, Runming Yang, Congkai Xie, Aofan Liu, Ming Li, Jiannong Cao, Yuan Xie, Ngai Wong, Hongxia Yang

    #link("https://arxiv.org/abs/2501.03035")[arxiv.org\/abs\/2501.03035] (Under Review (#sym.ast.basic#h(0pt, weak: true) Equal Contribution))

  ],
)

#regular-entry(
  [
    #strong[EdgeLLM: A Highly Efficient CPU-FPGA Heterogeneous Edge Accelerator for Large Language Models]

  ],
  [
    May 2025

  ],
  main-column-second-row: [
    Mingqiang Huang, Ao Shen, Kai Li, Haoxiang Peng, Boyu Li, #strong[Yupeng Su], Hao Yu

    #link("https://doi.org/10.1109/TCSI.2025.3546256")[10.1109\/TCSI.2025.3546256] (IEEE TCAS I: Regular Papers, 2025)

  ],
)

#regular-entry(
  [
    #strong[APTQ: Attention-aware post-training mixed-precision quantization for large language models]

  ],
  [
    June 2024

  ],
  main-column-second-row: [
    Ziyi Guan, Hantao Huang, #strong[Yupeng Su], Hong Huang, Ngai Wong, Hao Yu

    #link("https://doi.org/10.1145/3649329.3658498")[10.1145\/3649329.3658498] (IEEE\/ACM DAC, 2024)

  ],
)

== Experience

#regular-entry(
  [
    #strong[Student Research Assistant], Prof. Hongxia Yang's Lab \@ PolyU -- Hong Kong, China

  ],
  [
    Nov 2024 – May 2025

  ],
  main-column-second-row: [
    - Investigated the effects of compression on reasoning and explored data-driven strategies for restoration.

  ],
)

#regular-entry(
  [
    #strong[Student Research Assistant], Next Gen AI (NGai) Lab \@ HKU -- Hong Kong, China

  ],
  [
    Aug 2024 – Feb 2025

  ],
  main-column-second-row: [
    - Contributed to lightweight networks for efficient inference under specified computing architectures.

  ],
)

#regular-entry(
  [
    #strong[Summer Intern], High Performance Integrated Circuit Design Lab \@ SUSTech -- China

  ],
  [
    June 2024 – Sept 2024

  ],
  main-column-second-row: [
    - Implemented end-to-end pipelines for compressing, optimizing, and deploying models for efficient devices.

    - Published #strong[EdgeLLM] based on the project and its results.

  ],
)
