# Installed utilities

## imv

```bash
# Opening images
imv image1.png another_image.jpeg a_directory

# Opening a directory recursively
imv -r Photos

# Opening images via stdin
find . -type f -name "*.svg" | imv

# Open an image fullscreen
imv -f image.jpeg

# Viewing images in a random order
find . -type f -name "*.png" | shuf | imv
```

## wl-clipboard

```bash
# Copying text to the clipboard
echo "Hello, World!" | wl-copy

# Pasting text from the clipboard
wl-paste

# Copying an image to the clipboard
cat image.png | wl-copy

# Pasting an image from the clipboard
wl-paste > output_image.png
```
