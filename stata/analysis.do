use "output/airbnb_london_listing_sub.dta", replace

* change type
destring price, replace ignore("$,")
destring bedrooms bathrooms review_scores_rating, replace ignore("NA")

* histogram
hist price if price < 500
graph export "output/hist_price_less_500.png", replace

* scatter plot
twoway scatter price review_scores_rating
graph export "output/price_and_revieq_scores.png", replace

* regression
reg price bedrooms bathrooms review_scores_rating accommodates
outreg2 using "output/simple_reg.doc", replace