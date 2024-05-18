function compress_jpg_image(filepath)
    % Check if the file exists
    if ~isfile(filepath)
        error('The specified file does not exist.');
    end
    
    % Read the image
    img = imread(filepath);
    
    % Ask user for the desired compression quality
    prompt = 'Enter the compression quality (1-100, where 100 is the highest quality): ';
    quality = input(prompt);
    
    % Validate the input
    if ~isnumeric(quality) || quality < 1 || quality > 100
        error('Please enter a valid quality value between 1 and 100.');
    end
    
    % Get the folder and filename from the filepath
    [folder, name, ext] = fileparts(filepath);
    
    % Create a new filename for the compressed image
    compressed_filename = fullfile(folder, [name '_compressed' ext]);
    
    % Save the compressed image
    imwrite(img, compressed_filename, 'jpg', 'Quality', quality);
    
    fprintf('The image has been compressed and saved as %s\n', compressed_filename);
end
