
#!/bin/bash

for item in *
do
        if [ -f $item ]
        then
                actualsize=$(wc -c <"$item")            
               	mb=$(bc <<<"scale=6; $actualsize / 1048576")
		 echo "Size of" $item "is " $mb "mb"
        fi
done
exit 0

