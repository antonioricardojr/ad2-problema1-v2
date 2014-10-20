
salarios <- read.csv("salarios-ti-regioes.csv");

types <- factor(salarios$Formacao);

vec <- vector();
counter = length(vec);

for (i in types) { 
  
  
  cargo <- strsplit(tolower(chartr("áãâéêíîóôõúûç", "aaaeeiiooouuc", i)), split="-")[1];
  
  
  
  
  cargo <- sub("seistemas", "sistemas", cargo);
  cargo <- sub("sistema.*", "sistemas de informacao", cargo );
  cargo <- sub("ciencia.*", "ciencia da computacao", cargo);
    
  cargo <- sub(".*ciencia da computacao", "ciencia da computacao", cargo);
  cargo <- sub(".*sistemas de informacao", "sistemas de informacao", cargo);
  cargo <- sub(".*redes.*", "tecnologia em redes", cargo);
  
  cargo <- sub(".*engenharia d.*", "engenharia da computacao", cargo);
  cargo <- sub(".*bacharel.*", "bacharelado em informatica", cargo);
  vec[counter] <- cargo;
  counter = counter + 1;               
  
}

types <- factor(vec)
plot(types)
print(levels(types))

