###################### Custom functions for data preprocessing ######################

# Function to get ERs from non-food prime trials

NF_ER <- function(x) {
  c(
    ER = mean(x$accuracy),
    con_ER = mean(x$accuracy[x$congruence == "congruent"]),
    inc_ER = mean(x$accuracy[x$congruence == "incongruent"])
  )
}

# Function to get ERs from food prime trials

F_ER <- function(x) {
  c(
    ER = mean(x$accuracy),
    con_ER = mean(x$accuracy[x$congruence == "congruent"]),
    inc_ER = mean(x$accuracy[x$congruence == "incongruent"]),
    con_go_ER = mean(x$accuracy[x$trialcode == "go_con"]),
    inc_go_ER = mean(x$accuracy[x$trialcode == "go_inc"]),
    con_nogo_ER = mean(x$accuracy[x$trialcode == "nogo_con"]),
    inc_nogo_ER = mean(x$accuracy[x$trialcode == "nogo_inc"]),
    con_untr_ER = mean(x$accuracy[x$trialcode == "untr_con"]),
    inc_untr_ER = mean(x$accuracy[x$trialcode == "untr_inc"])
  )
}

# Function to get median RTs for correct responses from non-food prime trials

NF_RT <- function(x) {
  c(
    con_RT = median(x$latency[x$congruence == "congruent"]),
    inc_RT = median(x$latency[x$congruence == "incongruent"])
  )
}

# Function to get median RTs for correct responses from food prime trials

F_RT <- function(x) {
  c(
    con_RT = median(x$latency[x$congruence == "congruent"]),
    inc_RT = median(x$latency[x$congruence == "incongruent"]),
    con_go_RT = median(x$latency[x$trialcode == "go_con"]),
    inc_go_RT = median(x$latency[x$trialcode == "go_inc"]),
    con_nogo_RT = median(x$latency[x$trialcode == "nogo_con"]),
    inc_nogo_RT = median(x$latency[x$trialcode == "nogo_inc"]),
    con_untr_RT = median(x$latency[x$trialcode == "untr_con"]),
    inc_untr_RT = median(x$latency[x$trialcode == "untr_inc"])
  )
}

# Function to get proportion of correct responses in GNG

GNG_ER <- function(x) {
  c(
    go_ER = mean(x$accuracy[x$trialcode=="go"]),
    nogo_ER = mean(x$accuracy[x$trialcode=="nogo"])
  )
}


# Ratings

Liking <- function(x) {
  nogo = x$stimulusitem1[x$trialcode=="nogo_R_Liking"]
  go = x$stimulusitem1[x$trialcode=="go_R_Liking"]
  untr = x$stimulusitem1[x$trialcode=="untr_R_Liking"]
  x$code = ifelse(x$stimulusitem1 %in% nogo, "nogo",
                  ifelse(x$stimulusitem1 %in% go, "go",
                         ifelse(x$stimulusitem1 %in% untr, "untr", "NA")))
  return(x)
}

Mean_liking <- function(x) {
  c(
    Task_order = as.numeric(x$group[1]),
    Pre_Go = mean(as.numeric(as.character(x$response[x$code=="go" & x$blockcode=="RT_PRE"]))),
    Pre_Nogo = mean(as.numeric(as.character(x$response[x$code=="nogo" & x$blockcode=="RT_PRE"]))),
    Pre_Untr = mean(as.numeric(as.character(x$response[x$code=="untr" & x$blockcode=="RT_PRE"]))),
    
    Post_Go = mean(as.numeric(as.character(x$response[x$code=="go" & x$blockcode=="RT_POST"]))),
    Post_Nogo = mean(as.numeric(as.character(x$response[x$code=="nogo" & x$blockcode=="RT_POST"]))),
    Post_Untr = mean(as.numeric(as.character(x$response[x$code=="untr" & x$blockcode=="RT_POST"])))
  )
}

