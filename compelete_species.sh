grep ">" YP_008320309.1.orf.simid.fa > all.species.id
sed -i 's/>//' all.species.id
for i in `cat 5genes.id`; do for genes in `grep -v -f <(sk seq -n ${i}.orf.simid.fa) all.species.id`; do echo -e "\n>"$genes"\nXXXXXXXXXXXXXXXXXXXXXXXXX" >> ${i}.orf.simid.fa; done; done
