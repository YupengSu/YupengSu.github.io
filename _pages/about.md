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

Hi there! I am a senior student from <a href='https://osa.sustech.edu.cn/index.php?g=School&m=College&a=syjj&term=67&pterm=66'> ZhiCheng College (致诚书院)</a> and <a href='https://haoyulab.sme.sustech.edu.cn/'> School of Microelectronics (深港微电子学院)</a> in Southern University of Science and Technology, advice by <a href='https://scholar.google.com/citations?user=X06MaeYAAAAJ&hl=en'> Hao Yu (余浩)</a>. I also work at <a href='https://hku-ngai.github.io/'> Hong Kong University</a> as a Student RA and collaborate with <a href='https://scholar.google.com/citations?user=PM_uMYIAAAAJ&hl=en'> Ngai Wong </a> closely.

My research interests includes Efficient/Low-resource methods for NLP, Model Edge Deployment and AI accelerator. I have published and submitted papers with total <a href='https://scholar.google.com/citations?user=zZ8lS-UAAAAJ'><img src="https://img.shields.io/endpoint?url={{ url | url_encode }}&logo=Google%20Scholar&labelColor=f6f6f6&color=9cf&style=flat&label=citations"></a> at the top international AI conferences such as DAC, NAACL.

I have plentiful experiences in all stages of LLMs, including Pretraining(from scratch/continue pretrain), Supervised Fine-tuning, Evaluation, Model Compression(Quantization, Pruning, Knowledge Distillation and Low-rank Decomposition) and Deployment(mainly focus on edge). 

My skills are not only proficient in implementing algorithms design using C++, Python or Java, but I am also familiar with the entire IC design process, including digital circuit front-end design using verilog HDL for ASIC/FPGA, chip layout drawing, and some compiler design.

I am now actively looking for a PhD position in the field of AI/ML/IC design. If you are interested in my research or have any questions, please feel free to contact me at <a href='mailto:yupengsu06@gmail.com'> yupengsu06@gmail.com </a> or <a href='mailto:suyp2021@mail.sustech.edu.cn'> suyp2021@mail.sustech.edu.cn </a>.

# 🔥 News
- *2024.09* : &nbsp; I join HKU Ngai Wong's Lab as Student RA and collaborate with PloyU Hongxia Yang's Lab!
- *2024.02* : &nbsp; 🎉 Our paper are accepted by DAC 2024.

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

# 🛠 Projects
- <div class="language-plaintext highlighter-rouge">Hisilicon Embedded Competition</div> <span style="color:red;">(Second Prize)</span> [HiBao: Your Artificial Intelligent Voice Assistant](https://github.com/YupengSu/HiBao), **Yupeng Su**, Guanqi Peng, Jiaqi Yang.
- <div class="language-plaintext highlighter-rouge">SME309 Microprocessor Design</div> [ARM Processor Designed with Verilog](https://github.com/YupengSu/SME309_MicroprocessorDesign), **Yupeng Su**.
- <div class="language-plaintext highlighter-rouge">CS205 Cpp Program Design</div> [Libtensor Designed with C++ ](https://github.com/YupengSu/CppProject-libtensor), **Yupeng Su**, Xiaoqun Liu, Zexin Feng.

# 📖 Educations
- *2021.09 - present*, Undergraduate, Zhicheng College, Southern University of Science and Technology.
- *2018.09 - 2021.06*, High School Student, The First High School of Changsha, Hunan.

# 💻 Internships
- *2024.09 - 2025.02*, Student RA, Ngai Wong's Lab, HKU.
- *2024.06 - 2024.08*, Engineering Intern, High Performance Integrated Circuit Design Lab, SUSTech.

# 🎖 Honors and Awards
- *2024.09*, SUSTech First Class of Merit Student Scholarship for 2023-2024 Academic Year.
- *2023.12*, Ministry of Education - Huawei Smart Base Project, Future Star. 
- *2023.09*, SUSTech First Class of Merit Student Scholarship for 2022-2023 Academic Year.
- *2022.09*, SUSTech First Class of Merit Student Scholarship for 2021-2022 Academic Year.

# 📚 Student Works
- *2023.09 - 2025.06*, Peer Mentor for Academic Advisory Program, Student Affairs Department of SUSTech.
- *2022.09 - 2025.06*, Instructor for Undergraduate Course Calculus I/II, Student Development Center of SUSTech. [Sample Link](https://www.bilibili.com/video/BV1HfyYYmECv?vd_source=3e471d2001b90dde25b0ba03e8cefd02)
