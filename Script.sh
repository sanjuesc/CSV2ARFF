sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
echo "----------------------------------------"
sudo apt update
echo "----------------------------------------"
sudo apt install r-base
echo "----------------------------------------"
Rscript Fix.r
echo "Sartu weka.jar fitxategiaren helbidea"
read nirejar
java -cp $nirejar weka.core.converters.CSVLoader train1.csv -B 10000 > train.arff
