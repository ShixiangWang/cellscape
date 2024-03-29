% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cellscape.R
\name{dfs_tree}
\alias{dfs_tree}
\alias{cellscapeOutput}
\alias{renderCnvTree}
\alias{getEmptyGrid}
\alias{getChromBounds}
\alias{getChromBoxInfo}
\alias{getGenomeLength}
\alias{getNBPPerPixel}
\alias{getCNVHeatmapForEachSC}
\alias{getMutOrder}
\alias{getTargetedHeatmapForEachSC}
\alias{findMode}
\alias{processUserData}
\alias{checkMinDims}
\alias{checkRequiredInputs}
\alias{checkAlpha}
\alias{checkClonalPrev}
\alias{checkTreeEdges}
\alias{checkGtypePositioning}
\alias{checkCloneColours}
\alias{checkPerts}
\alias{getMutationsData}
\alias{replaceSpaces}
\title{Get depth first search of a tree}
\usage{
dfs_tree(edges, cur_root, dfs_arr)

cellscapeOutput(outputId, width = "100\%", height = "400px")

renderCnvTree(expr, env = parent.frame(), quoted = FALSE)

getEmptyGrid(hm_sc_ids_ordered, ncols)

getChromBounds(chroms, cnv_data)

getChromBoxInfo(chrom_bounds, n_bp_per_pixel)

getGenomeLength(chrom_bounds)

getNBPPerPixel(ncols, chrom_bounds, genome_length)

getCNVHeatmapForEachSC(cnv_data, chrom_bounds, n_bp_per_pixel)

getMutOrder(mut_data)

getTargetedHeatmapForEachSC(mut_data, mut_order, heatmapWidth)

findMode(x)

processUserData(
  clonal_prev,
  tree_edges,
  mutations,
  clone_colours,
  xaxis_title,
  yaxis_title,
  phylogeny_title,
  alpha,
  genotype_position,
  perturbations,
  sort,
  show_warnings,
  width,
  height
)

checkMinDims(mutations, height, width)

checkRequiredInputs(clonal_prev, tree_edges)

checkAlpha(alpha)

checkClonalPrev(clonal_prev)

checkTreeEdges(tree_edges)

checkGtypePositioning(genotype_position)

checkCloneColours(clone_colours)

checkPerts(perturbations)

getMutationsData(mutations, tree_edges, clonal_prev, show_warnings = TRUE)

replaceSpaces(
  clonal_prev,
  tree_edges,
  clone_colours,
  mutation_info,
  mutations,
  mutation_prevalences
)
}
\arguments{
\item{edges}{-- edges of tree}

\item{cur_root}{-- current root of the tree}

\item{dfs_arr}{-- array of depth first search results to be filled}

\item{outputId}{-- id of output}

\item{width}{-- width provided by user}

\item{height}{-- height provided by user}

\item{expr}{-- expression for Shiny}

\item{env}{-- environment for Shiny}

\item{quoted}{-- default is FALSE}

\item{hm_sc_ids_ordered}{-- array of single cell ids in order}

\item{ncols}{--  integer of number of columns (pixels) to fill}

\item{chroms}{-- vector of chromosome names}

\item{cnv_data}{-- data frame of copy number variant segments data}

\item{chrom_bounds}{-- data frame of chromosome boundaries}

\item{n_bp_per_pixel}{-- integer of number of base pairs per pixel}

\item{genome_length}{--  integer of length of the genome}

\item{mut_data}{-- data frame of mutations data}

\item{mut_order}{-- array of order of mutations for heatmap (chromosome:coordinate)}

\item{heatmapWidth}{-- number for width of the heatmap (in pixels)}

\item{x}{-- vector of numbers}

\item{clonal_prev}{-- clonal_prev data from user}

\item{tree_edges}{-- tree edges data from user}

\item{mutations}{-- mutations data from user}

\item{clone_colours}{-- clone_colours data from user}

\item{xaxis_title}{-- String (Optional) of x-axis title. Default is "Time Point".}

\item{yaxis_title}{-- String (Optional) of y-axis title. Default is "Clonal Prevalence".}

\item{phylogeny_title}{-- String (Optional) of Legend phylogeny title. Default is "Clonal Phylogeny".}

\item{alpha}{-- alpha provided by user}

\item{genotype_position}{-- genotype_position provided by user}

\item{perturbations}{-- perturbations provided by user}

\item{sort}{-- Boolean (Optional) of whether (TRUE) or not (FALSE) to vertically sort the genotypes by their emergence values (descending).
Default is FALSE.
Note that genotype sorting will always retain the phylogenetic hierarchy, and this parameter will only affect the ordering of siblings.}

\item{show_warnings}{-- Boolean (Optional) of  Whether or not to show any warnings. Default is TRUE.}

\item{mutation_info}{-- processed mutation_info}

\item{mutation_prevalences}{-- mutation_prevalences data from user}
}
\description{
Get depth first search of a tree

Widget output function for use in Shiny

Widget render function for use in Shiny

Function to get data frame of pixels

function to get min and max values for each chromosome

function to get chromosome box pixel info

function to get the genome length

function to get the number of base pairs per pixel

function to get information (chr, start, end, mode_cnv) for each pixel

function to get mutation order for targeted data

function to get targeted heatmap information

function to find the mode of a vector

Function to process the user data

Function to check minimum dimensions

Function to check required inputs are present

check alpha value input is correct

check clonal_prev parameter data

check tree_edges parameter data

check genotype_position parameter

check clone_colours parameter

check perturbations parameter

get mutation data

function to replace spaces with underscores in all data frames & keep maps of original names to space-replaced names
}
\examples{
dfs_tree(
  data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  ), "1", c()
)
cellscapeOutput(1, "100\%", "300px")
cellscapeOutput(1, "80\%", "300px")
findMode(c(1, 1, 19, 1))
checkMinDims(data.frame(chr = c("11"), coord = c(104043), VAF = c(0.1)), "700px", "700px")
checkRequiredInputs(
  data.frame(
    timepoint = c(rep("Diagnosis", 6), rep("Relapse", 1)),
    clone_id = c("1", "2", "3", "4", "5", "6", "7"),
    clonal_prev = c("0.1", "0.22", "0.08", "0.53", "0.009", "0.061", "1")
  ),
  data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  )
)
checkRequiredInputs(
  data.frame(
    timepoint = c(rep("Diagnosis", 6), rep("Relapse", 1)),
    clone_id = c("1", "2", "3", "4", "5", "6", "7"),
    clonal_prev = c("0.12", "0.12", "0.18", "0.13", "0.009", "0.061", "1")
  ),
  data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  )
)
checkAlpha(4)
checkAlpha(100)
checkClonalPrev(data.frame(timepoint = c(1), clone_id = c(2), clonal_prev = c(0.1)))
checkTreeEdges(
  data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  )
)
checkGtypePositioning("centre")
checkCloneColours(
  data.frame(
    clone_id = c("1", "2", "3", "4"),
    colour = c("#beaed4", "#fdc086", "#beaed4", "#beaed4")
  )
)
checkPerts(data.frame(pert_name = c("New Drug"), prev_tp = c("Diagnosis")))
getMutationsData(
  data.frame(
    chrom = c("11"), coord = c(104043), VAF = c(0.1),
    clone_id = c(1), timepoint = c("Relapse")
  ),
  data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  ),
  data.frame(
    timepoint = c(rep("Diagnosis", 6), rep("Relapse", 1)),
    clone_id = c("1", "2", "3", "4", "5", "6", "7"),
    clonal_prev = c("0.12", "0.12", "0.18", "0.13", "0.009", "0.061", "1")
  )
)
replaceSpaces(
  mutations = data.frame(
    chrom = c("11"), coord = c(104043),
    VAF = c(0.1), clone_id = c(1), timepoint = c("Relapse")
  ),
  tree_edges = data.frame(
    source = c("1", "1", "2", "2", "5", "6"),
    target = c("2", "5", "3", "4", "6", "7")
  ),
  clonal_prev = data.frame(
    timepoint = c(rep("Diagnosis", 6), rep("Relapse", 1)),
    clone_id = c("1", "2", "3", "4", "5", "6", "7"),
    clonal_prev = c("0.12", "0.12", "0.18", "0.13", "0.009", "0.061", "1")
  ),
  mutation_prevalences = list(
    "X:6154028" = data.frame(timepoint = c("Diagnosis"), VAF = c(0.5557))
  ),
  mutation_info = data.frame(clone_id = c(1)),
  clone_colours = data.frame(
    clone_id = c("1", "2", "3", "4"),
    colour = c("#beaed4", "#fdc086", "#beaed4", "#beaed4")
  )
)
}
