HI population development followed the physiological scaling methods by Edginton and Willmann (1) and Johnson, Boussery (2). The set of modified parameters are presented in the **Table** below. The values for each Child-Pugh score and parameter are considered "disease factors", which are multiplied by values of a healthy adult to produce the HI state.

**Table. HI disease factors for each HI parameter across Child-Pugh scores**

| **Parameter**                                 | **Child-Pugh A** | **Child-Pugh B** | **Child-Pugh C** |
|-----------------------------------------------|------------------|------------------|------------------|
| Blood flow: Portal                            | 0.4              | 0.36             | 0.04             |
| Blood flow: Hepatic arterial                  | 1.3              | 2.3              | 3.4              |
| Blood flow: Renal                             | 0.88             | 0.65             | 0.48             |
| Blood flow: Other organs*                     | 1.75             | 2.25             | 2.75             |
| Cardiac Index                                 | 1.11             | 1.27             | 1.36             |
| Plasma binding protein: Albumin               | 0.81             | 0.68             | 0.5              |
| Plasma binding protein: α1-acid-glycoprotein  | 0.6              | 0.56             | 0.3              |
| Hematocrit                                    | 0.92             | 0.88             | 0.83             |
| Hepatic intrinsic CL: CYP3A4                  | 1                | 0.4              | 0.4              |
| Hepatic intrinsic CL: CYP1A2                  | 1                | 0.1              | 0.1              |
| Hepatic intrinsic CL: CYP2E1                  | 1                | 0.83             | 0.83             |
| Hepatic intrinsic CL: CYP2A6                  | 0.89             | 0.62             | 0.32             |
| Hepatic intrinsic CL: CYP2B6                  | 1                | 0.9              | 0.8              |
| Hepatic intrinsic CL: CYP2C8                  | 0.69             | 0.52             | 0.32             |
| Hepatic intrinsic CL: CYP2C9                  | 0.69             | 0.51             | 0.33             |
| Hepatic intrinsic CL: CYP2C18                 | 0.32             | 0.26             | 0.12             |
| Hepatic intrinsic CL: CYP2C19                 | 0.32             | 0.26             | 0.12             |
| Hepatic intrinsic CL: CYP2D6                  | 0.76             | 0.33             | 0.11             |
| Glomerular filtration rate (GFR)              | 1                | 0.7              | 0.36             |
*Values from Edginton and Willmann (1); however, this evaluation report uses the method presented in https://github.com/Open-Systems-Pharmacology/Forum/discussions/1341, and thus the "other organs" blood flow varies slightly across individuals.

## Blood flow scaling

Portal, hepatic arterial, and renal blood flows were scaled according to the disease factor reported for each Child-Pugh severity (**Table**). All three blood flow processes were adjustd in PK-Sim by defining Individual > Anatomy & Physiology > Physiology > Flow Rates > Blood Flow Rates. Portal blood flow in the HI population was defined by the Portal Vein specific blood flow rate times the disease factor. Hepatic arterial blood flow was adjusted from applying the functional liver mass disease factor (Anatomy > Organ Volums > Liver) and adjusting the specific blood flow rate of the liver to attain the result of applying the hepatic arterial disease factor to liver blood flow rate. Renal blood flow was adjusted via application of the disease factor to kidney specific blood flow rate. The blood flow of other organs was adjusted based on the cardiac index, defined as cardiac output divided by body surface area, reported in the **Table**. The methods reported in https://github.com/Open-Systems-Pharmacology/Forum/discussions/1341 were applied.

## Plasma binding proteins and hematocrit scaling

The fraction unbound in the HI state was determined using methods by Edginton and Willmann (1). The albumin/plasma or α1-acid glycoprotein/plasma partition coefficient of the compound was defined as K_protein. First, K_protein was determined for healthy individuals by rearranging: fu_healthy = 1 / [(1-f_protein_healthy) + (f_protein_healthy)*K_protein]. Where, fu_healthy represents the fraction of unbound drug in a healthy individual, and f_protein_healthy represents the volume fraction of plasma binding protein in healthy (albumin 0.022 and α1-acid glycoprotein 0.0004). Next, fu_diseased was calculated from the aforementioned equation with the calculated K_protein and f_protein_diseased values presented in the **Table**. 

Hematocrit values from Individual > Anatomy & Physiology > Physiology > Tissue and body fluid physiology > Hematocrit, were adjusted to 0.39, 0.37, and 0.35 for Child-Pugh A, B, and C, respectively (**Table**). 

## Hepatic intrinsic clearance scaling

Reduction in an enzyme’s specific clearance was attributed to decreased fraction of functional liver volume and fraction of enzyme-specific activity per unit of protein in livers. With the former already adjusted in liver organ size, the latter was accounted for by multiplying the disease factor (**Table**) by the enzyme reference concentration. This report expands on the work by Edginton and Willmann (1) through incorporating additional enzymes accounted for by Johnson, Boussery (2).

## Renal intrinsic clearance scaling

The disease factor (**Table**) was applied to Glomerular filtration (Compound > ADME > Transport & Excretion > Renal Clearances > Glomerular Filtration). 