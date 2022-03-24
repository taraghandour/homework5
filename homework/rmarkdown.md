Creating my package and my functions:

``` r
nba=read.csv("~/Desktop/Modern_Data_Structures/homework5/data/raw/Seasons_Stats_NBA.csv")
head(nba)
```

    ##   Year          Player Pos Age  Tm  G GS MP PER   TS. X3PAr   FTr ORB. DRB.
    ## 1 1950 Curly Armstrong G-F  31 FTW 63 NA NA  NA 0.368    NA 0.467   NA   NA
    ## 2 1950    Cliff Barker  SG  29 INO 49 NA NA  NA 0.435    NA 0.387   NA   NA
    ## 3 1950   Leo Barnhorst  SF  25 CHS 67 NA NA  NA 0.394    NA 0.259   NA   NA
    ## 4 1950      Ed Bartels   F  24 TOT 15 NA NA  NA 0.312    NA 0.395   NA   NA
    ## 5 1950      Ed Bartels   F  24 DNN 13 NA NA  NA 0.308    NA 0.378   NA   NA
    ## 6 1950      Ed Bartels   F  24 NYK  2 NA NA  NA 0.376    NA 0.750   NA   NA
    ##   TRB. AST. STL. BLK. TOV. USG. blanl  OWS  DWS   WS WS.48 blank2 OBPM DBPM BPM
    ## 1   NA   NA   NA   NA   NA   NA    NA -0.1  3.6  3.5    NA     NA   NA   NA  NA
    ## 2   NA   NA   NA   NA   NA   NA    NA  1.6  0.6  2.2    NA     NA   NA   NA  NA
    ## 3   NA   NA   NA   NA   NA   NA    NA  0.9  2.8  3.6    NA     NA   NA   NA  NA
    ## 4   NA   NA   NA   NA   NA   NA    NA -0.5 -0.1 -0.6    NA     NA   NA   NA  NA
    ## 5   NA   NA   NA   NA   NA   NA    NA -0.5 -0.1 -0.6    NA     NA   NA   NA  NA
    ## 6   NA   NA   NA   NA   NA   NA    NA  0.0  0.0  0.0    NA     NA   NA   NA  NA
    ##   VORP  FG FGA   FG. X3P X3PA X3P. X2P X2PA  X2P.  eFG.  FT FTA   FT. ORB DRB
    ## 1   NA 144 516 0.279  NA   NA   NA 144  516 0.279 0.279 170 241 0.705  NA  NA
    ## 2   NA 102 274 0.372  NA   NA   NA 102  274 0.372 0.372  75 106 0.708  NA  NA
    ## 3   NA 174 499 0.349  NA   NA   NA 174  499 0.349 0.349  90 129 0.698  NA  NA
    ## 4   NA  22  86 0.256  NA   NA   NA  22   86 0.256 0.256  19  34 0.559  NA  NA
    ## 5   NA  21  82 0.256  NA   NA   NA  21   82 0.256 0.256  17  31 0.548  NA  NA
    ## 6   NA   1   4 0.250  NA   NA   NA   1    4 0.250 0.250   2   3 0.667  NA  NA
    ##   TRB AST STL BLK TOV  PF PTS
    ## 1  NA 176  NA  NA  NA 217 458
    ## 2  NA 109  NA  NA  NA  99 279
    ## 3  NA 140  NA  NA  NA 192 438
    ## 4  NA  20  NA  NA  NA  29  63
    ## 5  NA  20  NA  NA  NA  27  59
    ## 6  NA   0  NA  NA  NA   2   4

``` r
##Function 1
count_pts =function(year){
nba %>% filter(Player=="LeBron James",Year==year)  %>% select(PTS)}
count_pts(2013)
```

    ##    PTS
    ## 1 2036

``` r
##Function 2
oldest_player =function(year){
nba %>% select(Year,Age,Player) %>%
    group_by(Year=year) %>% slice(which.max(Age))}
oldest_player(2010)
```

    ## # A tibble: 1 × 3
    ## # Groups:   Year [1]
    ##    Year   Age Player      
    ##   <dbl> <int> <chr>       
    ## 1  2010    44 Kevin Willis

``` r
##Function 3
numeric_corr_matrix=function(year){
 new_df= nba %>% group_by(Year=year) %>%
  select_if(is.numeric) 
 x=na.omit(new_df)
  return(cor(x))
}

devtools::install_github("taraghandour/homework5/homework5")
```

    ## Skipping install of 'homework5' from a github remote, the SHA1 (c705a8cc) has not changed since last install.
    ##   Use `force = TRUE` to force installation

``` r
library(homework5)
```

    ## 
    ## Attaching package: 'homework5'

    ## The following objects are masked _by_ '.GlobalEnv':
    ## 
    ##     numeric_corr_matrix, oldest_player

``` r
?oldest_player
?count_pts
```

    ## No documentation for 'count_pts' in specified packages and libraries:
    ## you could try '??count_pts'

``` r
?numeric_corr_matrix
```
