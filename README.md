# SIMULATING ALL-ATOM NANOPATICLE-BILAYER SYSTEM

## TASK:

A molecular dynamics approach to study the permeation of nanoparticles through lipid bilayer

## WHAT IS A BILAYER? 

The lipid bilayer has been firmly established as the universal basis for cell-membrane structure. 
The most abundant membrane lipids are the phospholipids. These have a polar head group and two hydrophobic hydrocarbon tails. 
The tails are usually fatty acids, and they can differ in length (they normally contain between 14 and 24 carbon atoms). 
One tail usually has one or more cis-double bonds (i.e., it is unsaturated), while the other tail does not (i.e., it is saturated). 
It is this shape and amphipathic nature of the lipid molecules that cause them to form bilayers spontaneously in aqueous environments. 

## WHAT ARE NANOPARTICLES?

A nanoparticle or ultrafine particle is usually defined as a particle of matter that is between 1 and 100 nanometres (nm) in diameter. 
Biological nanoparticles are naturally occurring nanoparticles of 1–100 nm. Gold nanoparticles are used in resonance scattering dark-field microscopy 
for the detection of microbial cells and their metabolites, the bio-imaging of tumor cells, and for the detection of receptors on their surface, and 
for the study of endocytosis.

## WHAT ARE NEGATIVE-GAUSSIAN SURFACES?

Some links that might be useful as references are:
1. Gaussian curvatures                            :     https://en.wikipedia.org/wiki/Gaussian_curvature
2. Minimal Surfaces                               :     https://en.wikipedia.org/wiki/Minimal_surface
3. Catenoid                                       :     https://en.wikipedia.org/wiki/Catenoid
4. Geometry, surfaces, curves and polyhedra       :     http://paulbourke.net/geometry/

## WHY CATENOIDS: AN INTRODUCTION
Formation of membrane necks are ubiquitous in membrane biology, and a necessary step in membrane trafficking, transport and cellular uptake. These structures can be studied and understood as catenoids, which are minimal surfaces, characterized by negative gaussian curvatures. Endocytosis of nanoparticles have been observed to proceed with such neck formation. Endocytosis initiates with adhesion of the NP to the bilayer surface, followed by membrane wrapping and its subsequent internalization, finally leading to its release inside the cell. Nanoparticle (NP) entry in the cell differ based on their physiological features (size, shape, charge, orientation).

## OBJECTIVE

Probing minimal-surface gold nanoparticles adhesion and translocation through DPPC lipid bilayer by varying
(A) Shape: catenoid, cylinder 
(B) Charge Density: +0.035σ , 0 , −0.035σ
(C) Orientation: parallel, perpendicular (to bilayer axis)

To do this, we model a DPPC bilayer starting with a single DPPC molecule (structure available in PubChem). The model is minimized to remove clashes and overlaps. The final DPPC bilayer we have has a lipid count of  164 per leaflet, a total layer thickness of 50A. To generate solid catenoid-shaped Gold Nanoparticles, a solid FCC lattice was used to cut out a catenoid of top diameter of 10A and length of 20A, using MATLAB. 

## REQUIREMENTS:

1. Installing LAMMPS, a Molecular Dynamics Package. For downlaoding go over to: https://www.gromacs.org/
2. Lipid molecule of choice (Here we use DPPC)
3. A lipid-bilayer system
4. Software Atomsk to generate nanoparticles of given dimensions
5. MATLAB to generate solid catenoid
6. Visualization tools: Ovito/VMD


## SIMULATION METHODS
Force Field – CHARMM36
(A) Equilibrium Molecular Dynamics ( involves the equilibration of DPPC bilayer in water)
Equilibration – 10 ns | Temp – 323.15 K | Press – 1 atm | Production – 50 ns

(B) Non Equilibrium Molecular Dynamics (Initial introduction of NP at a distance of 5-6 A from lipid bilayer)
Solvation – 10 ns | Temp – 323.15 K | Press – 1 atm | Constant Force – 15 pN
NVT Production – 1.5 ns

The simulations were set up using LAMMPS molecular dynamics package.

## STUDY AND ANALYSIS
(A) Equilibrium properties:
(i) Area per lipid: The area per lipid achieved after modeling the bilayer was 62 A2  which is nearly in accordance with the experimental area per lipid of 65.7 A2 in DPPC bilayer.
(ii) Density Profile: Appears symmetric across both leaflets.

(B) Adhesion: AuNPs were placed at distance of 5A from the bilayer to study comparative properties
(i) Potential Energy: A Potential Energy plot shows a lower energy difference in Catenoid AuNPs compared to Cylinder AuNPs during the adhesion process.
(ii) Laterla Pressure Profile: Cylinder AuNP (across all charge and orientation variations) exhibits higher repulsion in region (III) [Chain repulsion (P>0)] than that of Catenoid AuNP (across all charge and orientation variations).

(C) Translocation: A constant force of 15pN was applied in the Z direction for AuNPs translocation.
(i) Bond Energy: A Bond Energy plot for Catenoid and Cylinder AuNPs show a lower energy difference in all Catenoid AuNPs. 
(ii) Bond Angle Energy: A Bond Angle Energy plot for Catenoid and Cylinder AuNPs show a markedly lower energy difference in all catenoid AuNPs.

This study suggests that Catenoid AuNPs cause less bond/bond angle deformation leading to lower change in bond and bond angle energy values. Thus, interaction of minimal surface structures with spontaneously formed membrane curvatures during translocation process may lead to a more energetically favorable cellular uptake.

## REFERENCES
[1] Chabanon, Morgan, and Padmini Rangamani. "Gaussian curvature directs the distribution of spontaneous curvatureon bilayer membrane necks." Soft matter 14.12 (2018): 2281-2294.
[2] Vanommeslaeghe, Kenno, et al. "CHARMM general force field: A force field for drug‐like molecules compatible with the CHARMM all‐atom additive biological force fields." Journal of computational chemistry 31.4 (2010):671-690.
[3] Burgess, Sean, et al. "Adhesion, intake, and release of nanoparticles by lipid bilayers." Journal of colloid and interface science 561 (2020): 58-70.



## DATA AVAILABILITY:

All data are included in the main repositiory. The full data can be made available upon request. Please drop an email at: say.Sayani11@gmail.com

## CODE AVAILABILITY:

All scripts are included in the scripts forder of the main repository. 

## QUERIES:

Please drop an email at say.Sayani11@gmail.com
