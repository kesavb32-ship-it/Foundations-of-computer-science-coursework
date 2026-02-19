# Task 1 — Secure Data Exchange Analysis

This section contains the practical and theoretical analysis of encoding formats
including ASCII, Base64, Hex and URL Encoding with HTTPS transmission.

It also demonstrates encoding-based attack testing and filter bypass behaviour.


## 1. Python Encoding Demo

The following Python script was used to compare ASCII, Hex, Base64, and URL Encoding:

```python
#Compare ASCII, Hex, Base64, and URL Encoding

import base64
import urllib.parse

# Sample text
text = "Hello World! This is Python encoding demo."

# ASCII Encoding
ascii_encoded = ' '.join(str(ord(c)) for c in text)

# Hexadecimal Encoding
hex_encoded = text.encode("utf-8").hex()

# Base64 Encoding
base64_encoded = base64.b64encode(text.encode("utf-8")).decode("utf-8")

# URL Encoding
url_encoded = urllib.parse.quote(text)

# Display in table format
print(f"{'Encoding Type':<12} | Encoded Value")
print("-" * 80)
print(f"{'ASCII':<12} | {ascii_encoded}")
print(f"{'Hex':<12} | {hex_encoded}")
print(f"{'Base64':<12} | {base64_encoded}")
print(f"{'URL':<12} | {url_encoded}")


## 2. Screenshots of Experiments

**Figure 1 — URL Encoding Test**

![URL Encoding](screenshots/SS1.png)

**Figure 2 — Double Encoding Test**

![Double Encoding](screenshots/SS2.png)

**Figure 3 — Local Decoding Verification**

![PowerShell Decoding](screenshots/SS3.png)
