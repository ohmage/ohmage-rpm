#create the tar.gz
tar -pczf ohmage-2.14.tar.gz ohmage-2.14

#copy to your home directory
mkdir -p ~/rpmbuild/SPECS
cp -f ohmage.spec ~/rpmbuild/SPECS

mkdir -p ~/rpmbuild/SOURCES
cp -f ohmage-2.14.tar.gz ~/rpmbuild/SOURCES

#build
rpmbuild -ba ~/rpmbuild/SPECS/ohmage.spec
