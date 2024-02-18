function rle_demo()
    input_string = 'AAAABBBCCDAA'; % Replace with your string

    try
        [encoded, counts] = run_length_encode(input_string);
        decoded = run_length_decode(encoded, counts);
        compression_ratio = calculate_compression_ratio(input_string, encoded, counts);

        disp('Encoded Data:');
        disp(encoded);
        disp('Decoded Data:');
        disp(decoded);
        disp('Compression Ratio:');
        disp(compression_ratio);
    catch ME
        disp(['Error: ', ME.message]);
    end
end

function [encoded, counts] = run_length_encode(input_string)
    if isempty(input_string)
        encoded = '';
        counts = [];
        return;
    end
    
    encoded = input_string(1);
    counts = 1;
    for i = 2:length(input_string)
        if input_string(i) == input_string(i-1)
            counts(end) = counts(end) + 1;
        else
            encoded(end+1) = input_string(i);
            counts(end+1) = 1;
        end
    end
end

function decoded = run_length_decode(encoded, counts)
    decoded = '';
    for i = 1:length(encoded)
        decoded = [decoded, repmat(encoded(i), 1, counts(i))];
    end
end

function compression_ratio = calculate_compression_ratio(input_string, encoded, counts)
    original_size = length(input_string) * 8; % 8 bits per character
    encoded_size = length(encoded) * 8; % 8 bits per char, 4 bits per count
    compression_ratio = original_size / encoded_size;
end
