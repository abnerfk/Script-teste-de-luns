rm -rf *
fio --name=seqread --rw=read --direct=1 --ioengine=libaio --bs=64k --numjobs=8 --size=1G --runtime=600  --group_reporting
rm -rf *
fio --name=seqwrite --rw=write --direct=1 --ioengine=libaio --bs=64k --numjobs=4 --size=2G --runtime=600 --group_reporting
rm -rf *
fio --name=randread --rw=randread --direct=1 --ioengine=libaio --bs=64k --numjobs=16 --size=1G --runtime=600 --group_reporting
rm -rf *
fio --name=randwrite --rw=randwrite --direct=1 --ioengine=libaio --bs=64k --numjobs=8 --size=512m --runtime=600 --group_reporting
rm -rf *
fio --name=randrw --rw=randrw --direct=1 --ioengine=libaio --bs=64k --numjobs=8 --rwmixread=90 --size=1G --runtime=600 --group_reporting
rm -rf *
