<div align="center">

  <h1>🏅 SGLGB Assessment & Monitoring System</h1>
  <h3>Seal of Good Local Governance for Barangay</h3>

  <p>
    A comprehensive desktop application built with <b>Delphi VCL</b> to streamline the data collection, <br />
    scoring, and reporting process for barangay governance assessments.
  </p>

  <p>
    <img src="https://img.shields.io/badge/Delphi-EE1F35?style=for-the-badge&logo=delphi&logoColor=white" alt="Delphi" />
    <img src="https://img.shields.io/badge/VCL-Framework-blue?style=for-the-badge&logo=windows&logoColor=white" alt="VCL" />
    <img src="https://img.shields.io/badge/Database-SQLite-orange?style=for-the-badge&logo=database&logoColor=white" alt="Database" />
  </p>

  <img src="assets/dashboard.png" alt="SGLGB Dashboard" width="100%">

</div>

<br />

## 📖 Overview

The **SGLGB Assessment System** is a Windows-based application designed to assist Local Government Operations Officers (LGOOs) and Barangay Secretaries in evaluating barangay performance.

Traditionally, SGLGB assessments involve manual checklists and paper-based scoring. This system digitizes the entire workflow, allowing for accurate encoding of governance data across core areas such as **Financial Administration**, **Disaster Preparedness**, and **Peace & Order**. It automatically calculates scores based on DILG memorandums and generates printable assessment reports.

---

## 🎯 Key Features

| Feature | Description |
| :--- | :--- |
| **🏘️ Barangay Profiling** | Database management of barangay demographics, officials, and profile data. |
| **📝 Automated Scoring** | Dynamic forms for checking compliance requirements; automatically computes the overall score based on weighted criteria. |
| **📂 Core Governance Areas** | dedicated modules for the 3 Core Areas (Financial Admin, Disaster Prep, Safety) and Essential Areas. |
| **🖨️ Report Generation** | Generates the official **SGLGB Assessment Form** and Summary of Ratings ready for printing (using FastReport/QuickRep). |
| **🔍 Search & Filtering** | Rapidly filter barangays by district, score range, or compliance status (Pass/Fail). |
| **💾 Data Backup/Restore** | Integrated utilities to secure assessment data and prevent data loss. |

---

## 📸 System Screenshots

<table>
  <tr>
    <td width="50%">
      <h3 align="center">Assessment Form</h3>
      <img src="assets/dcf-alt2.png" alt="Assessment Screen" width="100%">
    </td>
  </tr>
  <tr>
    <td width="50%">
      <h3 align="center">Data Capture List</h3>
      <img src="assets/dcf-records.png" alt="Barangay Management" width="100%">
    </td>
  </tr>
</table>

---

## 🛠️ Technical Details

* **Language:** Object Pascal (Delphi)
* **Framework:** Visual Component Library (VCL)
* **Database:** Microsoft Access / SQLite / MySQL (Update this based on what you used)
* **Components:**
    * `TADOConnection` / `TFDConnection` (Database Connectivity)
    * `TDBGrid` (Data Presentation)
    * `TPageControl` (Tabbed Navigation for Categories)
    * `TFrxReport` (Reporting Engine)

---

## 📥 Installation

1.  **Download:** Get the latest `.zip` file from the releases section.
2.  **Extract:** Unzip the folder to your local drive.
3.  **Database:** Ensure the database file (e.g., `SGLGB.mdb` or `db.sqlite`) is in the same folder as the executable.
4.  **Run:** Open `SGLGB_System.exe`.

> **Note:** This application requires a Windows Environment (Windows 10/11).

---

<div align="center">
  <p>Developed by <b>Lance Esureña</b></p>
  <p>
    <a href="https://www.linkedin.com/in/lance-madel-esure%C3%B1a-ba4871282/">
      <img src="https://img.shields.io/badge/LinkedIn-Connect-blue?style=flat-square&logo=linkedin" alt="LinkedIn">
    </a>
    <a href="https://lance-portfolio.vercel.app/">
      <img src="https://img.shields.io/badge/Portfolio-Visit-orange?style=flat-square&logo=vercel" alt="Portfolio">
    </a>
  </p>
</div>
