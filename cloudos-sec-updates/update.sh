dpkg-scanpackages -a amd64 pool/main > dists/starter1/main/binary-amd64/Packages
gzip -9c dists/starter1/main/binary-amd64/Packages > dists/starter1/main/binary-amd64/Packages.gz

dpkg-scanpackages -a i386 pool/main > dists/starter1/main/binary-i386/Packages
gzip -9c dists/starter1/main/binary-i386/Packages > dists/starter1/main/binary-i386/Packages.gz

dpkg-scansources pool/main > dists/starter1/main/source/Sources
gzip -9c dists/starter1/main/source/Sources > dists/starter1/main/source/Sources.gz

apt-ftparchive -c=aptftp.conf release dists/starter1 > dists/starter1/Release
gpg2 -u 324FB60A1897F825E674A49C9C34ACDD34DDCB35 -abs -o dists/starter1/Release.gpg dists/starter1/Release