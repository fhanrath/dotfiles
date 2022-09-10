gpu_type=$(lspci)
if grep -E "NVIDIA|GeForce" <<< ${gpu_type}; then
    echo $(nvidia-smi -q -g 0 -d UTILIZATION -l 1) # won't work. have to test with an nvidia gpu
elif grep -E "Radeon" <<< ${gpu_type}; then
    echo $(radeontop -d - -l 1 | grep -o "gpu .*, ee" | cut -c5- | rev | cut -c 6- | rev)
elif grep -E "Integrated Graphics Controller" <<< ${gpu_type}; then
    echo $(su -c 'intel_gpu_top') # won't work. probably need another program
elif grep -E "Intel Corporation UHD" <<< ${gpu_type}; then
    echo $(su -c 'intel_gpu_top')
fi