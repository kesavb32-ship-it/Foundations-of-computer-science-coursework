# Task 2 — Classroom Seating Arrangement Problem

This folder contains practical demonstrations and theoretical analysis for Task 2 of the ST4015CMD coursework.

## Overview

The scenario involves arranging students in a classroom row while obeying two rules:

1. Friends should not sit next to each other.
2. Students from the same city should not sit next to each other.

The problem is analyzed in terms of **computational complexity** (P vs NP), and different approaches are explored:

- **Brute Force Approach**: Tests all possible seating arrangements. For 5 students, 5! = 120 combinations. Works for small classes but factorial growth makes it inefficient for larger classes.
- **Heuristic / Smart Approach**: Uses intelligent strategies, e.g., seating students with many friends first or separating same-city students early. Reduces computation time while producing mostly valid arrangements.
- **Backtracking**: Searches sequentially, removing invalid arrangements early.
- **Forward Checking**: Enhances backtracking by checking future possibilities and pruning invalid paths before proceeding, improving efficiency.

## Screenshots

**Figure 1 — Example Seating Arrangement**  
![Seating Example](screenshots/seating_example.png)

**Figure 2 — Backtracking vs Forward Checking Comparison**  
![Comparison](screenshots/backtracking_vs_forward.png)
