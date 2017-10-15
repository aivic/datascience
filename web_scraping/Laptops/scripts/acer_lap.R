library(rvest)
library(stringr)
library(magrittr)


features <- c("tr:nth-of-type(1):contains('Brand') td.value",
              "tr:contains('Colour') td.value",
              "tr:contains('Screen Size') td.value",
              "tr.size-weight:contains('Product Dimensions') td.value",
              "tr.size-weight:contains('Item Weight') td.value",
              "tr:contains('Connectivity Type') td.value",
              "tr:contains('Processor Brand') td.value",
              "tr:contains('Processor Type') td.value",
              "tr:contains('Processor Speed') td.value",
              "tr:contains('RAM Size') td.value",
              "tr:contains('Hard Drive Size') td.value",
              "tr:contains('Hard Disk Technology') td.value",
              "tr:contains('Graphics Coprocessor') td.value",
              "tr:contains('Graphics Card Ram Size') td.value",
              "tr:contains('Operating System') td.value",
              "span.a-size-small a.a-link-normal",
              "span.olp-padding-right span.a-color-price")

n_pages = 7
dig = seq(1, n_pages, by = 1)
outer_mat <- matrix(ncol = 17)
for (page in 1:n_pages){
  
  main_site <- paste("https://www.amazon.in/s/ref=lp_4364645031_pg_", dig[page], "?rh=n%3A976392031%2Cn%3A%211499764031%2Cn%3A%211499765031%2Cn%3A4364645031&page=", dig[page], "&ie=UTF8&qid=1507983307",sep="")
  main_site <- read_html(url(main_site,'rb'))
  
  lappy_node <- html_nodes(main_site,"a.a-link-normal.s-access-detail-page") %>% html_attr("href")
  # (length(lappy_node)-3)
  # Skipping the last sponsored products 
  for (i in 1:(length(lappy_node)-3)){    
    
    lappy_site <- read_html(url(lappy_node[i],'rb'))
    inner_mat <- matrix(ncol = 17, nrow = 1)
    for (j in 1:17){
      nodes <- html_nodes(lappy_site,features[j])
      if (length(nodes) == 0){        
        nodes <- '?'      
      }else{
        nodes <- gsub("[\r\n]", "", html_text(nodes))
      }
      inner_mat[1,j] <- nodes
    }
    outer_mat <- rbind(outer_mat, inner_mat)
  } 
}
# inner_mat
# outer_mat[-1,]
df <- data.frame(outer_mat[-1,])

colnames(df) <- c("Brand",
                  "Color",
                  "Screen size",
                  "Product dimension",
                  "Item weight",
                  "Connectivity type",
                  "Processor brand",
                  "Processor type",
                  "Processor Speed",
                  "RAM Size",
                  "Hard Drive Size",
                  "Hard Disk Technology",
                  "Graphics Coprocessor",
                  "Graphics Card Ram Size",
                  "Operating System",
                  "Customer review",
                  "Price")
write.csv(file = 'C:\\Users\\Vivek\\Desktop\\acer_lap.csv',df)