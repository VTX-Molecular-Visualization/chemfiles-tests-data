# DCD test files

- `water.dcd`: water.xyz converted to DCD with VMD
- `nopbc.dcd`: simple file,, without unit cell information
- `withpbc.dcd`: simple file,, with unit cell information


- `4d-dynamic.dcd`: 4D dynamic example. This was produced by CHARMM, running the
  CHARMM regression test `test/c24test/dyn4dtest.inp`.
- `fixed-atoms.dcd`: Fixed atoms example. This was produced by CHARMM, running
  the CHARMM regression test `test/c24test/dyn4dtest.inp`.
- `mrmd_h2so4-markers-8.dcd`: file with 64-bit fortran record markers. This was
  produced by CHARMM compiled with `-frecord-marker=8`, running the CHARMM
  test `test/c39test/mrmd_h2so4.inp`.
- `triclinic-octane-vectors.dcd`: Triclinic cell example, using CHARMM format
  (cell vectors). This was produced by CHARMM, running the CHARMM regression
  test `test/c25test/xtloct1.inp`.
- `triclinic-octane-cos.dcd`: Exact same file as `triclinic-octane-vectors.dcd`,
  except for the the CHARMM version field in header, set to 24 instead of 46.
  This causes chemfiles to interpret the cell differently, as if the angles
  where written as their cosine.
- `triclinic-octane-direct.dcd`: result of reading and then writing back
  `triclinic-octane-vectors.dcd` with MDAnalysis
- `triclinic-namd.dcd` file with triclinic cell created by NAMD (t1.dcd in
  https://github.com/chemfiles/Chemfiles.jl/issues/69)

- `mrmd_h2so4-64bit-le.dcd`: 64-bits fortran record markers, little endian DCD
  file. This was produced by CHARMM compiled with `-frecord-marker=8`, running
  the CHARMM regression test `c39test/mrmd_h2so4.inp`.
- `mrmd_h2so4-32bit-be.dcd`: 32-bits fortran record markers, big endian DCD
  file. This is the same file as `mrmd_h2so4-64bit-le.dcd`, created on a s390x
  container.
- `mrmd_h2so4-64bit-be.dcd`: 64-bits fortran record markers, big endian DCD
  file. This is the same file as `mrmd_h2so4-64bit-le.dcd`, created on a s390x
  container, by CHARMM compiled with `-frecord-marker=8`.
