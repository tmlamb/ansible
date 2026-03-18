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
