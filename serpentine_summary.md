# DIY Serpentine Optical Interferometer: Polarization-Induced Pattern Formation

**Date:** 2026-05-27  
**GitHub:**  
- https://github.com/Chur-chin/serpentine-optical-interferometer  
- https://github.com/Chur-chin/Anisotropic-Polarization-Filtering-

---

## Abstract

We report a series of DIY experiments using serpentine-structured waveguides combined with polarization films to observe optical interference and pattern formation phenomena. Three distinct configurations were investigated: (1) a perforated serpentine with z-axis displacement of an output polarization film, (2) a honeycomb serpentine with combined input privacy film and output polarization film, and (3) a rhombus-to-square output geometry with variable air-gap between two polarization films. Each configuration produced qualitatively distinct optical patterns, ranging from blinking and Moiré-to-fringe transitions to global polarization cluster formation.

---

## 1. Introduction

Serpentine microstructures have attracted growing interest as platforms for light manipulation, waveguiding, and interference-based sensing. Low-cost, DIY implementations using commercially available polarization and privacy films offer an accessible route to exploring complex optical phenomena. In this work, we systematically characterize pattern formation as a function of structural geometry and film configuration.

---

## 2. Experimental Configurations

### 2.1 Perforated Serpentine — Z-axis displacement of output polarization film

**Setup:**  
A serpentine structure with perforations (open channels) was used. A single polarization film was placed at the output side. The film was translated along the z-axis (normal to the serpentine plane).

**Observations:**  
- At small z-displacements: **blinking** behavior was observed, characterized by periodic intensity modulation.
- As displacement increased: a clear **Moiré → Fringe transition** occurred. The broad, low-spatial-frequency Moiré pattern gave way to high-contrast linear fringe patterns, consistent with far-field interference of diffracted beams from the periodic serpentine apertures.

**Interpretation:**  
The perforations act as a periodic aperture array. Moving the polarization film in z changes the effective path length and the angular filtering condition, driving the system from near-field Moiré overlap into a far-field fringe regime.

---

### 2.2 Honeycomb Serpentine — Privacy film (input) + Polarization film (output)

**Setup:**  
A honeycomb-geometry serpentine was employed. A privacy protection film (angular light-restricting film) was placed at the **input** side; a polarization film at the **output** side.

**Observations:**  
- Clear **discrete pattern** formation was confirmed.
- The honeycomb lattice symmetry was imprinted onto the transmitted intensity distribution, producing a spatially quantized (discrete) cluster arrangement rather than a continuous fringe pattern.

**Interpretation:**  
The privacy film restricts the angular cone of input illumination, effectively selecting specific Bloch-like modes supported by the honeycomb lattice. The output polarization film then converts polarization-encoded spatial information into intensity contrast, revealing the discrete honeycomb mode structure.

---

### 2.3 Rhombus-to-Square Output Geometry — Air-gap between two polarization films

**Setup:**  
The output aperture geometry was switched between a rhombus and a square configuration. Two polarization films were placed at the output with variable separation along z.

**Observations:**  

| Film separation | Observed pattern |
|---|---|
| Films in contact (0 mm) | **Local cluster** — spatially confined, isolated polarization domains |
| 3 mm air gap | **Global cluster** — spatially extended, system-wide correlated domains |

**Interpretation:**  
When the two polarization films are in direct contact, birefringent coupling is localized: each domain of the serpentine output independently selects a polarization state, producing isolated (local) clusters. Introducing a 3 mm gap allows the evanescent/diffractive field between the films to propagate and mix spatially, producing long-range correlations and a globally coherent cluster pattern. The rhombus-to-square geometry modulation confirms that the cluster topology is sensitive to the symmetry of the output aperture.

---

## 3. Summary of Results

| Configuration | Input | Output | Key Phenomenon |
|---|---|---|---|
| Perforated Serpentine | — | Polarization film (z-scan) | Blinking; Moiré → Fringe transition |
| Honeycomb Serpentine | Privacy film | Polarization film | Discrete pattern |
| Rhombus↔Square output | — | 2× Polarization film, contact | Local cluster |
| Rhombus↔Square output | — | 2× Polarization film, 3 mm gap | **Global cluster** |

---

## 4. Discussion

The three experimental configurations demonstrate a progression from single-film, single-variable experiments (z-axis blinking/fringe) to dual-film, geometry-dependent cluster formation. The key finding is that **spatial separation between polarization films acts as a tuning parameter for cluster correlation length**: contact → local, 3 mm → global. This is analogous to a coupling-length-dependent phase transition in condensed matter systems, suggesting that serpentine optical platforms may serve as table-top analogues for studying symmetry breaking and cluster formation.

The honeycomb result further indicates that input-side angular filtering (privacy film) is sufficient to impose lattice symmetry on the output pattern, a result with potential implications for structured-light generation and optical mode selection.

---

## 5. Conclusion

We have demonstrated three DIY serpentine optical interferometer configurations that produce qualitatively distinct polarization-driven pattern phenomena:

1. **Perforated serpentine + z-scan output film** → Blinking and Moiré-to-Fringe transition  
2. **Honeycomb serpentine + privacy/polarization films** → Discrete pattern formation  
3. **Rhombus-square output + dual polarization films** → Local cluster (contact) and Global cluster (3 mm gap)

These results establish a simple, accessible experimental framework for exploring polarization-structured light and cluster formation in periodic microgeometries. Full experimental data and code are available at the GitHub repositories listed above.

---

## References

1. DIY Serpentine Optical Interferometer Repository: https://github.com/Chur-chin/serpentine-optical-interferometer  
2. Anisotropic Polarization Filtering Repository: https://github.com/Chur-chin/Anisotropic-Polarization-Filtering-
