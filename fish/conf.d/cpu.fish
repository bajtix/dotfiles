function cpu_low
	sudo cpupower frequency-set -u 800Mhz -d 800Mhz
end

function cpu_high
	sudo cpupower frequency-set -u 4600Mhz -d 4600Mhz
end
