# Description: This script calculates the latency and energy values from the csv file for llama3 model
# Usage: python count_score_llama.py
# Output: The latency and energy values for the model.

# Author: Saptarshi Mitra

import csv
import math

def calculate_total(csv_file_path, column_name_1, column_name_2):
    total_1 = 0
    total_2 = 0
    with open(csv_file_path, mode='r') as file:
        csv_reader = csv.DictReader(file)
        for row in csv_reader:
            total_1 += float(row[column_name_1])
            total_2 += float(row[column_name_2])
    return total_1, total_2

# Enter the path of the csv file and the column names here, which you want to consider for calculating the total.

# csv_file_path = '/home/sap/prj/maestro/llama3_variant_mha_dataflow.csv'
# csv_file_path = '/home/sap/prj/maestro/llama3_variant_mha_dataflow_sap_kmspatial.csv'
csv_file_path = '/home/sap/prj/maestro/llama3_variant_mha_dataflow_sap_nkspatial.csv'
column_name_1 = ' Runtime (Cycles)'
column_name_2 = ' Activity count-based Energy (nJ)'

clock_freq = 1e9

total_1, total_2 = calculate_total(csv_file_path, column_name_1, column_name_2)
print(f'Total for column {column_name_1}: {total_1}')
print(f'Total for column {column_name_2}: {total_2}')
latency_ms = total_1/clock_freq*1e3
energy_mJ = total_2/1e6
print('Latecy in milliseconds:', latency_ms)
print('Energy in millijoules:', energy_mJ)


