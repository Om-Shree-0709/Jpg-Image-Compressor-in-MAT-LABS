# MATLAB JPG Image Compressor

This MATLAB program compresses JPG images based on user-specified compression quality. It reads an image from a given file path, prompts the user for the desired compression quality, and saves the compressed image in the same directory with a new filename.

## Features

- **User Input for Compression Quality**: Specify the compression quality between 1 (lowest quality) and 100 (highest quality).
- **Automatic File Handling**: The compressed image is saved in the same folder as the original image with `_compressed` appended to the original filename.
- **Simple and Intuitive**: Easy-to-use command line interface.

## Requirements

- MATLAB (Tested with R2021a, but should work with other versions)

## Installation

1. Clone this repository or download the `compress_jpg_image.m` file.
2. Ensure you have MATLAB installed on your system.

## Usage

1. Open MATLAB.
2. Navigate to the directory containing the `compress_jpg_image.m` file.
3. Call the function with the path to your JPG image file as an argument.

```matlab
compress_jpg_image('path_to_your_image.jpg');
