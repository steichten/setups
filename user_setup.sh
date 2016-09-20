

#pull scripts from github
git clone https://github.com/steichten/scripts.git
#pull informatics notebook from github
#git clone https://github.com/steichten/informatics_notebook.git

#download usual suspects  for software

mkdir bin
cd bin
wget http://www.bioinformatics.babraham.ac.uk/projects/bismark/bismark_v0.16.3.tar.gz
tar -zxvf bismark_v0.16.3.tar.gz
cd bismark*
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../

wget http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip
unzip fastqc_v0.11.5.zip
cd FastQC
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../

wget http://www.bioinformatics.babraham.ac.uk/projects/trim_galore/trim_galore_v0.4.2.zip
unzip trim_galore_v0.4.2.zip
mkdir trimgalore
mv trim_galore trimgalore
mv LICENSE trimgalore
mv RELEASE_NOTES.txt trimgalore
mv RRBS_Guide.pdf trimgalore
cd trimgalore
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../

wget http://downloads.sourceforge.net/project/bowtie-bio/bowtie/1.1.2/bowtie-1.1.2-linux-x86_64.zip
unzip bowtie-1.1.2-linux-x86_64.zip
cd bowtie-1*
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../

wget http://downloads.sourceforge.net/project/bowtie-bio/bowtie2/2.2.9/bowtie2-2.2.9-linux-x86_64.zip
unzip bowtie2-2.2.9-linux-x86_64.zip
cd bowtie2*
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../

wget https://github.com/arq5x/bedtools2/releases/download/v2.26.0/bedtools-2.26.0.tar.gz
tar -zxvf bedtools-2.26.0.tar.gz
cd bedtools2
make
cd bin
echo "export PATH=\$PATH:$PWD" >> ~/.bashrc
cd ../../

pip install --user --upgrade cutadapt

cd $HOME

#setup shell aliases
echo "alias cdh='cd \$HOME' " >> ~/.bashrc
echo "alias ll='ls -alh' " >> ~/.bashrc


#echo 'RESET="\[\017\]"
#NORMAL="\[\033[0m\]"
#RED="\[\033[31;1m\]"
#YELLOW="\[\033[33;1m\]"
#WHITE="\[\033[37;1m\]"
#SMILEY="${WHITE}:)${NORMAL}"
#FROWNY="${RED}:(${NORMAL}"
#SELECT="if [ \$? = 0 ]; then echo \"${SMILEY}\"; else echo \"${FROWNY}\"; fi"
#PS1="${RESET}${YELLOW}\h${NORMAL} \`${SELECT}\` ${YELLOW}>${NORMAL} " ' >> ~/.bashrc

echo "export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m' " >> ~/.bashrc

echo 'function i() { 
	(head -n 2; tail -n 2) < "$1" | column -t 
	}' >> ~/.bashrc

#setup screen 
wget https://gist.githubusercontent.com/joaopizani/2718397/raw/9e2560b77e1e1298ef24be16297d853f9885b20d/.screenrc

#install R packages locally

