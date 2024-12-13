# Description: This script is used to parse the dataflow file and count the total number of MACs in the model.
# Usage: python count_MAC.py
# Output: The dimensions of the model and the total number of MACs in the model.
# Author: Saptarshi Mitra

def parse_and_print_dimensions(file_path):
    with open(file_path, 'r') as file:
        total_mac = 0
        for line in file:
            if 'Dimensions' in line:
                print(line.strip())
                dimensions = [int(x.split(',')[0]) for x in line.split() if x.split(',')[0].isdigit()]
                print(f"Dimensions: {dimensions}")
                result = 1
                for number in dimensions:
                    result *= number
                print(f"Product of dimensions: {result}")
                total_mac += result
        print(f"Total MACs: {total_mac}")

if __name__ == "__main__":
    # enter the path to the dataflow file here
    parse_and_print_dimensions('./data/mapping/vgg16_dataflow.m')