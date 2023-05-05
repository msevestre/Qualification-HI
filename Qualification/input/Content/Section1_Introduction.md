The presented qualification report performs simulations of drug disposition and pharmacokinetics (PK) in subjects with hepatic impairment (HI) to qualify the parameterization of the foundational anatomy and physiology parameters for virtual populations with HI in the Open Systems Pharmacology (OSP) Suite.

The liver is an important biotransformation site that serves key roles in the metabolism and clearance of drugs and toxins. HI is defined by a loss of functional hepatocytes which leads to connective tissue and nodule formation in the liver. The resulting pathophysiology of hepatic impairment is multifactorial; however, several outcomes are apparent. Hepatic impairment is often associated with shunting of blood around the cirrhotic liver which can lead to encephalopathy, decreased drug protein binding, hyperbilirubinemia, and the development of ascites and varices. To describe the disease progression (severity) and estimated prognosis with these factors in consideration, the Child-Pugh score was developed. The Child-Pugh score is designated as A (Mild: 5-6), B (Moderate: 7-9), or C (Severe: ≥10). It is calculated from summing the scores derived from the **Table** shown below. 

**Table. Child-Pugh scoring determined by factors affected by HI**

| **Factor**             | **1**    | **2**    | **3**    |
|------------------------|----------|----------|----------|
| Bilirubin (M)          | <34      | 34-51    | >51      | 
| Albumin (g/dL)         | >3.5     | 3-3.5    | <3       |
| Prothrombin time (INR) | <1.7     | 1.7-2.3  | >2.3     |
| Ascites                | None     | Slight   | Moderate |
| Encephalopathy         | None     | Minimal  | Advanced |

Quantitative anatomical and physiological changes observed in hepatically impaired individuals have an impact on drug PK. These modifications include changes in blood flows (decreased portal and renal blood flow, and incrased hepatic arterial blood flow), cardiac output (increased), plasma binding protein concentrations (decreased), hematocrit (decreased), hepatic intrinsic clearance, and renal intrinsic clearance. With respect to hepatic intrinsic clearance, several enzymes (CYP3A4, CYP1A2, CYP2E1, etc.) are known to be affected in the disease process.

This report build upon the work by Edginton and Willmann (1) and Johnson, Boussery (2) to qualify the parameterization of a HI population implemented in PK-Sim. Section 2 describes the generation of HI populations. Section 3 evaluates the predicted effects of HI on the PK of 9 compounds: alfentanil, caffeine, levetiractam, metoprolol, midazolam, nifedipine, omeprazole, sildenafil, and theophylline. Evaluation for each compound is comprised of two steps: the initial model calibration against a healthy population, followed by an extension to populations of subjects with relevant severities of HI. 