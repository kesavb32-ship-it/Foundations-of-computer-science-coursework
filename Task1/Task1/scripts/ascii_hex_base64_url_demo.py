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
