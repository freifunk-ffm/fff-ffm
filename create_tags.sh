tagname=$1
sed s/$2/$1/g < feeds.conf.default > feeds.conf
git commit -m "Tagged feeds" feeds.conf
git push
git tag -a $1 -m "Created by Jenkins build for $1"
git push origin $1
for  feed in $(cat feeds.conf.pushable|awk '{print $2}')
do
	cd feeds/$feed 
	git tag -a $1 -m "Created by Jenkins build for $1" 
	git push origin $1
	cd ../..
done

#Check out tags

