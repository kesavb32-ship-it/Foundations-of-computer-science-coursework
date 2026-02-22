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
