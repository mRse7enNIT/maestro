# Description: This script calculates the score of a model based on the latency and energy consumption of the model. It also accounts for the number of PEs and the NoC bandwidth.
# Usage: python count_score.py
# Output: The score of the model.

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

# csv_file_path = '/home/sap/prj/maestro/vgg16_dataflow_sap_1024.csv'
# csv_file_path = '/home/sap/prj/maestro/vgg16_dataflow_faraz_5.csv'
# csv_file_path = '/home/sap/prj/maestro/vgg16_dataflow_faraz_5_fc_kmspatial.csv'
csv_file_path = '/home/sap/prj/maestro/vgg16_dataflow_faraz_5_fc_kmspatial.csv'
column_name_1 = ' Runtime (Cycles)'
column_name_2 = ' Activity count-based Energy (nJ)'

# Default values for the accelerator and problem statement
clock_freq = 1e9
latency_goal_ms = 20 
energy_goal_mJ = 25 
PE_target = 4096
noc_bw_target = 256
# PE and NoC bandwidth values for the accelerator considered while optimizing the dataflow
PE_actual = 1024
noc_bw_actual = 56

total_1, total_2 = calculate_total(csv_file_path, column_name_1, column_name_2)
print(f'Total for column {column_name_1}: {total_1}')
print(f'Total for column {column_name_2}: {total_2}')
latency_ms = total_1/clock_freq*1e3
energy_mJ = total_2/1e6
print('Latecy in milliseconds:', latency_ms)
print('Energy in millijoules:', energy_mJ)


latency_ratio = (latency_goal_ms - latency_ms) / latency_goal_ms
energy_ratio = (energy_goal_mJ - energy_mJ) / energy_goal_mJ
PE_ratio = (PE_target-PE_actual)/PE_target
noc_bw_ratio = (noc_bw_target-noc_bw_actual)/noc_bw_target

# model_score = math.sqrt(latency_ratio * energy_ratio)
#implement geometric mean
model_score = (latency_ratio * energy_ratio * PE_ratio * noc_bw_ratio)**(1/4)

print('PE considered:', PE_actual)
print('NoC bandwidth considered:', noc_bw_actual)
print('Score of model:', model_score)