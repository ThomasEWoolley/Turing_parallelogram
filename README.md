# Turing_parallelograms
This repository contains all computational codes and models associated with the paper "Non-uniqueness in the pseudo-one-dimensional limit for Turing patterns", authored by Thomas E. Woolley and Václav Klika. We study how boundary conditions, domain shape, and dimension control whether a reaction–diffusion system admits a well-defined critical domain size for Turing pattern onset. In particular, we focus on parallelogram domains and show that, as a two-dimensional parallelogram collapses towards a pseudo-one-dimensional limit, the critical length for patterning is not unique and depends on the geometric route taken to that limit.

### Key Observations

- For Dirichlet boundary conditions, a critical domain size exists in arbitrary dimensions, whereas for Neumann boundary conditions such a critical size cannot be guaranteed when size is measured by volume or surface area.
- For convex Neumann domains, an effective one-dimensional size measure, such as diameter, can still yield a meaningful instability threshold, motivating the use of length-like metrics rather than purely volumetric ones.
- On parallelogram domains, the pseudo-one-dimensional limit is not unique. The critical patterning length depends on how the parallelogram is collapsed, even when the limiting shape is a one-dimensional line.


Contents of the Repository

### MATLAB Files
Scripts for:
- Numerical continuation and bifurcation tracking of Turing onsets on parallelograms using pde2path (including rhombus, sheared parallelogram, and general parallelogram families)  
- Numerical calculation and interrogation of Laplacian eigenvalues under Neumann boundary conditions, including geometry dependent mappings used to reduce parallelograms to a unit-square computational domain  
- Generating bifurcation curves and derived size measures (width, diagonal, area) used to compare competing notions of domain size  

### COMSOL Files
Models for:
- Full nonlinear spatio-temporal reaction–diffusion simulations used to validate predicted bifurcation thresholds by comparing behaviour just below and just above the computed critical sizes  
- Verifying that the numerically extracted bifurcation values robustly separate parameter regimes with and without emergent patterns across the explored parallelogram families  

### Maple Files
Symbolic computations for:
- Supporting algebraic manipulations underpinning the analytical bounds used to bracket critical sizes in terms of geometry, and for simplifying expressions used in the theoretical comparisons  
