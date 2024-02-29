import delimited using "input/airbnb_london_listing.csv", clear

keep price accommodates bathrooms bedrooms review_scores_rating
drop if mi(price)

save "output/airbnb_london_listing_sub.dta", replace