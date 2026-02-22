# Task 2 — Classroom Seating Arrangement Problem

This folder contains practical demonstrations and theoretical analysis for **Task 2** of the ST4015CMD Foundations of Computer Science coursework.

## Overview

The scenario involves arranging students in a classroom row while following two rules:

1. Friends should not sit next to each other.  
2. Students from the same city should not sit next to each other.  

The problem is analyzed in terms of **computational complexity** (P vs NP), and different approaches are explored, including brute force, heuristic, backtracking, and forward checking. Screenshots provide visual evidence of the experiments and outputs.

---

## 1. Python Forward Checking Demo

The forward checking algorithm was implemented to generate a valid seating arrangement while respecting constraints. The Python program sequentially places students and checks for conflicts in advance, pruning invalid paths early to improve efficiency.

```python
# csp_seating.py - Forward Checking for Classroom Seating Arrangement

students = ["Sanjok", "Swarnim", "Pranish", "Suyog", "Keshav"]

# constraints (cannot sit adjacent)
conflicts = {
    "Keshav": ["Pranish"],
    "Pranish": ["Keshav"],
    "Swarnim": ["Suyog"],
    "Suyog": ["Swarnim"]
}

def is_safe(arrangement, student):
    if not arrangement:
        return True
    last_student = arrangement[-1]
    if student in conflicts.get(last_student, []):
        return False
    return True

def forward_checking(arrangement):
    if len(arrangement) == len(students):
        return arrangement
    for student in students:
        if student not in arrangement and is_safe(arrangement, student):
            arrangement.append(student)
            result = forward_checking(arrangement)
            if result:
                return result
            arrangement.pop()
    return None

solution = forward_checking([])
print("Valid Seating Arrangement:", solution)
