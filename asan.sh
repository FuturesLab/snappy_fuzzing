for x in `ls crashes-1`; do echo && echo "Input: crashes-1/$x" && ./harness-1 crashes-1/$x; done &> log-1.txt

for x in `ls crashes-2`; do echo && echo "Input: crashes-2/$x" && ./harness-2 crashes-2/$x; done &> log-2.txt
