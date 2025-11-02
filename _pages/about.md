---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

{% if site.google_scholar_stats_use_cdn %}
{% assign gsDataBaseUrl = "https://cdn.jsdelivr.net/gh/" | append: site.repository | append: "@" %}
{% else %}
{% assign gsDataBaseUrl = "https://raw.githubusercontent.com/" | append: site.repository | append: "/" %}
{% endif %}
{% assign url = gsDataBaseUrl | append: "google-scholar-stats/gs_data_shieldsio.json" %}

<span class='anchor' id='about-me'></span>

Hi there! 👋 Welcome to YupengSu's Homepage.

I am a Ph.D. student in Computer Science at the University of California, Santa Barbara (UCSB), advised by Prof. Zheng Zhang. I previously received my B.E. degree in Microelectronics from the Southern University of Science and Technology (SUSTech), where I was advised by Prof. Hao Yu.

My research focuses on efficient pre-training and post-training optimization for large language models (LLMs) — particularly quantization, sparsification, and low-rank decomposition for improving training and inference efficiency. I am also interested in high-performance computing and AI accelerators, including compiler optimization and GPU/FPGA kernel adaptation for efficient and energy-aware deployment. I have published and submitted papers with total <a href='https://scholar.google.com/citations?user=zZ8lS-UAAAAJ'><img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"></a> at the top international conferences and journals.

My experience spans the end-to-end lifecycle of large language models (LLMs) — including pre-training (from scratch and continued pre-training), fine-tuning, post-training optimization (quantization, pruning, knowledge distillation, and low-rank decomposition), and efficient deployment on edge devices.

Beyond algorithmic optimization, I bridge the gap between machine learning and hardware, with hands-on experience in Python, C++, and Verilog HDL, as well as FPGA prototyping, digital front-end design, and compiler co-design for edge AI systems.

My personal CV is attached <a href='https://yupengsu.github.io/cv/personal-cv.pdf'> here</a>. If you are interested in my research or have any questions, also please feel free to contact me at <a href='mailto:yupengsu06@gmail.com'> yupengsu06@gmail.com</a> or <a href='mailto:yupengsu@ucsb.edu.'> yupengsu@ucsb.edu</a>.

# 🔥 News
- *2025.02* : &nbsp; 🎉 Our paper LLM-Barber is accepted by IEEE/ACM ICCAD 2025.
- *2025.02* : &nbsp; 🎉 Our paper EdgeLLM is accepted by IEEE TCAS I: Regular Papers.
- *2025.02* : &nbsp; I have been admitted to the PhD program at University of California, Santa Barbara (UCSB)!
- *2024.09* : &nbsp; I join HKU Next Gen AI(NGai) Lab as Student RA and collaborate with PloyU Hongxia Yang's Lab!
- *2024.02* : &nbsp; 🎉 Our paper APTQ is accepted by IEEE/ACM DAC 2024.

# 📝 Publications 
<div class='paper-box'><div class='paper-box-image'><div><div class="badge">ICCAD 2025</div><img src='/images/LLM-Barber.jpg' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[LLM-Barber: Block-Aware Rebuilder for Sparsity Mask in One-Shot for Large Language Models](https://arxiv.org/pdf/2408.10631)

**Yupeng Su**, Ziyi Guan, Xiaoqun Liu, Tianlai Jin, Dongkuan Wu, Graziano Chesi, Ngai Wong, Hao Yu

[**Project**](https://github.com/YupengSu/LLM-Barber) <strong><span class='show_paper_citations' data='zZ8lS-UAAAAJ:u-x6o8ySG0sC'></span></strong>
- LLM-Barber incorporates block-aware error optimization and introduces an innovative pruning metric with weights multiplied by gradients.
- LLM-Barber not only supports unstructured pruning but also structured pruning such as N:M pattern, which is more suitable for hardware acceleration.
</div> 
</div>

<div class='paper-box'><div class='paper-box-image'><div><div class="badge">DAC 2024</div><img src='/images/APTQ.jpg' alt="sym" width="100%"></div></div>
<div class='paper-box-text' markdown="1">

[APTQ: Attention-aware Post-Training Mixed-Precision Quantization for Large Language Models](https://doi.org/10.1145/3649329.3658498)

Ziyi Guan, Hantao Huang, **Yupeng Su**, Hong Huang, Ngai Wong, Hao Yu

[**Project**](https://scholar.google.com/citations?view_op=view_citation&hl=en&user=zZ8lS-UAAAAJ&citation_for_view=zZ8lS-UAAAAJ:u5HHmVD_uO8C) <strong><span class='show_paper_citations' data='zZ8lS-UAAAAJ:u5HHmVD_uO8C'></span></strong>
- APTQ is the first approach to consider self-attention architecture during post-training quantization and conbine mix-precision by Hessian Matrix.
</div>
</div>

- `TCAS I` [EdgeLLM: A Highly Efficient CPU-FPGA Heterogeneous Edge Accelerator for Large Language Models](https://doi.org/10.1109/TCSI.2025.3546256), Mingqiang Huang, Ao Shen, Kai Li, Haoxiang Peng, Boyu Li, **Yupeng Su**, Hao Yu. 
- `ARXIV` [Quantization Meets Reasoning: Exploring LLM Low-Bit Quantization Degradation for Mathematical Reasoning](https://arxiv.org/abs/2501.03035), Zhen Li, **Yupeng Su**, Runming Yang, Congkai Xie, Zheng Wang, Zhongwei Xie, Ngai Wong, Hongxia Yang.
- `ARXIV` [PTQTP: Post-Training Quantization to Trit-Planes for Large Language Models](https://arxiv.org/abs/2509.16989), He Xiao, Runming Yang, Qingyao Yang, Wendong Xu, Zhen Li, **Yupeng Su**, Zhengwu Liu, Hongxia Yang, Ngai Wong.

# 🛠 Projects
- ``Hisilicon Embedded Competition`` <span style="color:red;"> (Second Prize) </span> <a href='https://github.com/YupengSu/HiBao'> HiBao: Your Artificial Intelligent Voice Assistant</a>, **Yupeng Su**, Guanqi Peng, Jiaqi Yang.
- ``SME309 Microprocessor Design`` <a href='https://github.com/YupengSu/SME309_MicroprocessorDesign'> ARM Processor Designed with Verilog</a>, **Yupeng Su**.
- ``CS205 Cpp Program Design`` <a href='https://github.com/YupengSu/CppProject-libtensor'> Libtensor Designed with C++</a>, **Yupeng Su**, Xiaoqun Liu, Zexin Feng.

# 📖 Educations
- *2025.09 – present*, **Ph.D. in Computer Science**, University of California, Santa Barbara (UCSB).  
- *2021.09 – 2025.07*, **B.Eng. in Microelectronics**, Southern University of Science and Technology (SUSTech).  
- *2018.09 – 2021.06*, **High School Student**, The First High School of Changsha, Hunan.

# 💻 Internships
- *2024.11 – 2025.05*, **Student Research Assistant**, Prof. Hongxia Yang’s Lab, The Hong Kong Polytechnic University (PolyU).  
- *2024.08 – 2025.02*, **Student Research Assistant**, Next Gen AI (NGai) Lab, The University of Hong Kong (HKU).  
- *2024.06 – 2024.09*, **Summer Intern**, High Performance Integrated Circuit Design Lab, Southern University of Science and Technology (SUSTech).

# 🎖 Honors and Awards
- *2025.07*, **Nominee of Top Ten Graduates**, Southern University of Science and Technology.  
- *2025.07*, **Guo Xie Birong Scholarship for Academic Excellence**, Southern University of Science and Technology.
- *2025.06*, **Top Ten Graduates of the College of Engineering**, Southern University of Science and Technology.
- *2022–2024*, **First-Class Merit Student Scholarship (Three Consecutive Years)**, Southern University of Science and Technology.   
- *2023.12*, **Future Star**, Ministry of Education – Huawei Smart Base Project.  

# 📚 Student Works
- *2023.09 - 2025.06*, Peer Mentor for Academic Advisory Program, Student Affairs Department of SUSTech.
- *2022.09 - 2025.06*, Instructor for Undergraduate Course Calculus I/II, Student Development Center of SUSTech. [Repo Link](https://github.com/YupengSu/Calculus)
