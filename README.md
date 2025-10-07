# CGNEP
Contains supplementary data and code for CGNEP for coarse-grained graphene. The CGNEP is constructed by modifying the descriptor of NEP, and the training and MD calculating are based on GPUMD with CGNEP.

The CGNEPs mentioned in the article are saved in the 'CGNEPs&NEPs' folder. They are all trained for coarse-grained (CG) MD calculation purpose. The CGNEP-4-1 denotes the mapping ratio of 4:1. NEP-4-1 is the NEP trained with CG training dataset.

The modified GPUMD packages with modified CGNEP are provided in the 'GPUMD_packages_with_CGNEP' folder. Two versions are provided here, one with Z_radial=10 Å and Z_angular=4 Å, the other with Z_radial=10 Å and Z_angular=10 Å. For detailed GPUMD using, please refer to [GPUMD.org](https://gpumd.org/). Please note that the GPUMD packages provided here are only for CGNEP calculations with modified descriptors, the all-atom calculations are performed using the original GPUMD V3.9.4 package with original NEP.

The MD calculation input files and results for the conclusions in the article are provided in 'MD_calculation' folder. The folder contains results obtained via CGNEPs with different mapping ratios.

The CG training datasets and training input files are provided in 'Training_datasets&inputs' folder.
