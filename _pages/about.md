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

I am a senior student from <a href='https://osa.sustech.edu.cn/index.php?g=School&m=College&a=syjj&term=67&pterm=66'> ZhiCheng College (致诚书院)</a> and <a href='https://haoyulab.sme.sustech.edu.cn/'> School of Microelectronics (深港微电子学院)</a> in Southern University of Science and Technology, advice by <a href='https://scholar.google.com/citations?user=X06MaeYAAAAJ&hl=en'> Hao Yu (余浩)</a>. I also work at <a href='https://hku-ngai.github.io/'> The University of Hong Kong </a> as a Student RA and collaborate with <a href='https://scholar.google.com/citations?user=PM_uMYIAAAAJ&hl=en'> Ngai Wong</a> closely.

My research interests includes Efficient and Low-resource Methods for NLP, Model Deployment on Edge, and AI Accelerators Design. I have published and submitted papers with total <a href='https://scholar.google.com/citations?user=zZ8lS-UAAAAJ'><img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"></a> at the top international conferences and journals.

My experience spans a wide range of tasks such as pretraining (from scratch and continued pretraining), supervised fine-tuning, evaluation, model compression (quantization, pruning, knowledge distillation, and low-rank decomposition), and deployment with a focus on edge devices.

My programming expertise spans Python, C++, and Java, with experience in developing efficient algorithms for complex systems. And I specialize in FPGA-based workflows, including digital front-end design with Verilog HDL, FPGA prototyping, chip layout, and compiler design. This diverse skill set allows me to bridge the gap between software development and hardware optimization effectively.

My personal CV is attached <a href='https://yupengsu.github.io/cv/personal-cv.pdf'> here</a>. If you are interested in my research or have any questions, also please feel free to contact me at <a href='mailto:yupengsu06@gmail.com'> yupengsu06@gmail.com</a> or <a href='mailto:yupengsu@ucsb.edu.'> yupengsu@ucsb.edu</a>.

# 🔥 News
- *2025.02* : &nbsp; 🎉 Our paper is accepted by TCAS I.
- *2025.02* : &nbsp; I have been admitted to the PhD program at University of California, Santa Barbara (UCSB)!
- *2024.09* : &nbsp; I join HKU Next Gen AI(NGai) Lab as Student RA and collaborate with PloyU Hongxia Yang's Lab!
- *2024.02* : &nbsp; 🎉 Our paper is accepted by DAC 2024.

# 📝 Publications 
<div class='paper-box'><div class='paper-box-image'><div><div class="badge">ARXIV</div><img src='/images/LLM-Barber.jpg' alt="sym" width="100%"></div></div>
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

[APTQ: Attention-aware Post-Training Mixed-Precision Quantization for Large Language Models](https://arxiv.org/pdf/2402.14866)

Ziyi Guan, Hantao Huang, **Yupeng Su**, Hong Huang, Ngai Wong, Hao Yu

[**Project**](https://scholar.google.com/citations?view_op=view_citation&hl=en&user=zZ8lS-UAAAAJ&citation_for_view=zZ8lS-UAAAAJ:u5HHmVD_uO8C) <strong><span class='show_paper_citations' data='zZ8lS-UAAAAJ:u5HHmVD_uO8C'></span></strong>
- APTQ is the first approach to consider self-attention architecture during post-training quantization and conbine mix-precision by Hessian Matrix.
</div>
</div>

- `TCAS I` [EdgeLLM: A Highly Efficient CPU-FPGA Heterogeneous Edge Accelerator for Large Language Models](https://arxiv.org/abs/2407.21325), Mingqiang Huang, Ao Shen, Kai Li, Haoxiang Peng, Boyu Li, **Yupeng Su**, Hao Yu. 
- `ARXIV` [Quantization Meets Reasoning: Exploring LLM Low-Bit Quantization Degradation for Mathematical Reasoning](https://arxiv.org/abs/2501.03035), Zhen Li, **Yupeng Su**, Runming Yang, Congkai Xie, Zheng Wang, Zhongwei Xie, Ngai Wong, Hongxia Yang.

# 🛠 Projects
- ``Hisilicon Embedded Competition`` <span style="color:red;"> (Second Prize) </span> <a href='https://github.com/YupengSu/HiBao'> HiBao: Your Artificial Intelligent Voice Assistant</a>, **Yupeng Su**, Guanqi Peng, Jiaqi Yang.
- ``SME309 Microprocessor Design`` <a href='https://github.com/YupengSu/SME309_MicroprocessorDesign'> ARM Processor Designed with Verilog</a>, **Yupeng Su**.
- ``CS205 Cpp Program Design`` <a href='https://github.com/YupengSu/CppProject-libtensor'> Libtensor Designed with C++</a>, **Yupeng Su**, Xiaoqun Liu, Zexin Feng.

# 📖 Educations
- *2021.09 - present*, Bachelor of Engineering, School of Microelectronics, Southern University of Science and Technology.
- *2018.09 - 2021.06*, High School Student, The First High School of Changsha, Hunan.

# 💻 Internships
- *2024.09 - 2025.02*, Student RA, Next Gen AI (NGai) Lab, HKU.
- *2024.06 - 2024.08*, Engineering Intern, High Performance Integrated Circuit Design Lab, SUSTech.

# 🎖 Honors and Awards
- *2024.09*, SUSTech First Class of Merit Student Scholarship for 2023-2024 Academic Year.
- *2023.12*, Ministry of Education - Huawei Smart Base Project, Future Star. 
- *2023.09*, SUSTech First Class of Merit Student Scholarship for 2022-2023 Academic Year.
- *2022.09*, SUSTech First Class of Merit Student Scholarship for 2021-2022 Academic Year.

# 📚 Student Works
- *2023.09 - 2025.06*, Peer Mentor for Academic Advisory Program, Student Affairs Department of SUSTech.
- *2022.09 - 2025.06*, Instructor for Undergraduate Course Calculus I/II, Student Development Center of SUSTech. [Repo Link](https://github.com/YupengSu/Calculus)
