# CMG FiveM Research

This repository documents our ongoing reverse engineering and analysis of the CMG FiveM framework. The goal is to understand the framework's architecture, custom encryption methods, and client-side implementation for research and educational purposes.

## Current Progress

### ✅ Configuration Files

- All configuration files have been successfully decrypted.
- All configuration data has been de-scrambled and restored to a readable format.

### ✅ Client Files

- All client files have been decrypted.
- Client source has been cleaned up and restored into a readable format.
- Code structure, naming, and comments have been normalized where possible.

## Repository Goals

- Document CMG's custom encryption and obfuscation techniques.
- Develop tooling for decrypting and de-scrambling framework files.
- Publish research findings and technical documentation.
- Continue simplifying restored client resources until the messy files are readable at a beginner level.

## Todo

- [x] Clean `cl_realisticvehiclefailure.lua` to a level 1 beginner reading level.
- [x] Clean `cl_stuntsmoke.lua` to a level 1 beginner reading level.
- [x] Clean `cl_clamp.lua` to a level 1 beginner reading level.
- [x] Clean `cl_security.lua` to a level 1 beginner reading level.
- [x] Identify the next messy decompiled vehicle files that still need level 1 cleanup.
- [ ] Clean vehicle cleanup candidates: `cl_licenseplate.lua`, `cl_lscustoms.lua`, `cl_els.lua`, `cl_simeons.lua`, `cl_garages.lua`, `cl_fuel.lua`, `cl_stancer.lua`, `cl_vehicle_crush_trade.lua`.
- [ ] Clean remaining decompiled client files to a level 1 beginner reading level.
- [ ] Finish documenting cleaned client code and notable implementation details.
- [ ] Capture any remaining encryption, obfuscation, or anti-cheat findings in dedicated research notes.
- [ ] Keep exploit and tooling notes current as new behavior is confirmed.

## Project Status

| Component            | Status         |
| -------------------- | -------------- |
| Config Decryption    | ✅ Complete    |
| Config De-scrambling | ✅ Complete    |
| Client Decryption    | ✅ Complete    |
| Client De-scrambling | ✅ Complete    |
| Code Cleanup         | 🚧 In Progress |
| Documentation        | 🚧 Ongoing     |

anyone need assets dm on discord @mosinkernel
