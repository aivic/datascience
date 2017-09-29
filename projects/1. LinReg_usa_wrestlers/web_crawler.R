library(rvest)
library(stringr)
library(magrittr)
library(dplyr)

len = 40
jump <- seq(1, len, by = 1)
site_main <- paste('http://www.wrestlingdata.com/index.php?befehl=bios&letter',
                    '=2&jahr=2017&monat=9&system=1&land=3&seite=', jump, sep = "")
outer_mat <- matrix(ncol = 10)
for (i in 1:len) {  
   webpage <- read_html(url(site_main[i]))      
   ## Listing pages on a webpage  
   list_html <- html_nodes(webpage,"tr:nth-of-type(n+2) td:nth-of-type(2) a")  
   # length(list_html)    
   for (j in 1:length(list_html)) {        
        inner_mat <- matrix(ncol = 10, nrow = 1)    
        page_no = str_extract(str_extract(list_html[j],'wrestler=\\d+'),'\\d+')            
        ## retrieving individual pages    
        site <- paste('http://www.wrestlingdata.com/index.php?befehl=bios&wrestler=', page_no, sep = "")        
        ind_webpage <- read_html(url(site))        
        features <- c("table:nth-of-type(3) td",                  
                      "table:nth-of-type(4) tr:nth-of-type(3) div",                  
                      "td td tr:contains('Weight and Height') td:nth-of-type(2)",                  
                      "td td tr:contains('Birthplace') td:nth-of-type(2)",                  
                      "td td tr:contains('Date of Birth') td:nth-of-type(2)",                  
                      "td td tr:contains('Finisher') td:nth-of-type(2)",                  
                      "td td tr:contains('Trademark Moves') td:nth-of-type(2)",                  
                      "td td tr:contains('Matches Fought') div",                  
                      "td td tr:contains('Trainer') td:nth-of-type(2)",                  
                      "td td tr:contains('Students') td:nth-of-type(2)")    
        for (k in 1:10){      
           temp_data <- html_nodes(ind_webpage,features[k])      
           if (length(temp_data) == 0){        
              temp_data <- '?'      
           }else{        
           temp_data <- gsub("[\r\n]", "", html_text(temp_data))      
           }      
           inner_mat[1,k] <- temp_data    
        }        
       outer_mat <- rbind(outer_mat,inner_mat)  
   }
}
# temp_data
# outer_mat[-1,]
df <- data.frame(outer_mat[-1,])
colnames(df) <- c('Name', 'Rank', 'Weight & Height', 'Birth Place', 'DOB', 'Finisher','Trademark Moves',
                  'Matches Fought', 'Trainer', 'Students')
write.csv(file = 'C:\\Users\\vivek\\Desktop\\wrestlers_db.csv',df)
