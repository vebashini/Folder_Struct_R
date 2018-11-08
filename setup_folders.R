## Setting up the initial project structure for R projects
## Thanks go to Cookiecutter Data Science - https://drivendata.github.io/cookiecutter-data-science/#example
## and "Nice R Code" - https://nicercode.github.io/blog/2013-04-05-projects/
## for the inspiration behind this folder structure and the explanation of folders is directly
## from Cookiecutter Data Science
## Changed for our internal process

# Main folder for data
data_main <- "data" 
# Sub folders for data
data_ext <- "external" # Data from third party sources.
data_int <- "interim" # Intermediate data that has been transformed.
data_proc <- "processed" # The final, canonical data sets for modeling.
data_raw <- "raw" # The original, immutable data dump.
ref <- "references" # Data dictionaries, manuals, and all other explanatory materials.
fig <- "figs" # Generated graphics and figures to be used in reporting
out <- "output" # Generated output goes here
mod <- "model" # Trained and serialized models, model predictions, or model summaries
note_rmd <- "nb_rmds" # The markdown and notebook files go here

# Get working directory
parent_dir <- getwd()

# Create list of folders
folders <- c(data_main, ref, fig, out, mod, note_rmd) 

# Create the main folders
for (i in 1:length(folders))  { 
      dir.create(paste(parent_dir,folders[i], sep="/")) 
} 

# Get the sub directory Parent_dir/data
data_sub_dir <- paste(parent_dir,data_main, sep="/")

# Create list of the data folder subdirectories
data_folders <- c(data_ext, data_int, data_proc, data_raw)

# Create the subdirectories for the data folder
for (i in 1:length(data_folders))  { 
      dir.create(paste(data_sub_dir,data_folders[i], sep="/")) 
} 