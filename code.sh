found=0
while [ $found -ne 1 ]
do
	for i in 172.20.41.142 172.20.41.143 172.20.41.142/theyalow 172.20.41.143/theyalow alicealivealice.github.io/theyalow
    do
        sleep 1
        CONTENT=`curl -sL http://$i`
        if (echo "$CONTENT" | grep -q THEYALOW); then
            echo "Ура! http://$i готово!"
            found=1
        else echo "Дорогу осилить той хто іде"
        fi
    done
done