Create database House;
Use House;

#Insight-1 : Locality wise average prices. To find out which locality is more costly on average
Select Locality,avg(price) as average_price
from ny #Selecting locality, and average price from ny table
Group by Locality # Grouping by locality
Order by average_price desc; # Ordering by the price in the decsending order to see the highest on top.

# Insight 2: Property type wise average prices. To find out which property type costs more on average.
Select Type,avg(price) as average_price
from ny #Selecting Type, and average price from ny table
Group by Type # Grouping by Type
Order by average_price desc; # Ordering by the price in the decsending order to see the highest on top.

# Insight 3- Which type of property is most prevalent among the listed properties.
Select Type, count(Type) as count, concat(round(((count(Type) / 4801) * 100 ),2), '%')  as percentage
From ny #Getting a count of the Property type , and the percentage
Group by Type #Grouping by type
Order by count DESC  #Ordering by the count in the descending order

# Insight-4 , How many properties are listed from each locality-
Select Locality, count(Type) as count, concat(round(((count(Type) / 4801) * 100 ),2), '%')  as percentage
From ny #Getting a count of the properties in the localities, and the percentage
Group by Locality #Grouping by locality
Order by count DESC  #Ordering by the count in the descending order

# Insight-5 Relationship between the number of beds and the price
Select Beds,avg(price) as average_price, max(price) as maximum_price , min(price) as minimum_price
from ny #Selecting Beds, and average price from ny table
Group by Beds # Grouping by Beds
Order by average_price desc; # Ordering by the price in the decsending order to see the highest on top.

# Insight-6 Which Number of bedrooms is most prevalent among the listed properties-
Select Beds, count(Beds) as count, concat(round(((count(Beds) / 4801) * 100 ),2), '%')  as percentage
From ny #Getting a count of the various categories of number of beds, and the percentage
Group by Beds #Grouping by beds
Order by count DESC  #Ordering by the count in the descending order

# Insight-7 Which locality has the most expensive property listed
Select locality, price 
from ny # Selecting locality and price from ny dataset
Where price= (Select max(price) from ny); #Where the price is equal to the maximum price

# Insight-8 Top 5 Sub localities with the highest average prices
Select Sublocality,avg(price) as average_price
from ny #Selecting sublocality and average prices from ny dataset
Group by Sublocality # Grouping by Sub locality
order by average_price desc # Ordering by average
limit 5; #Limiting to only 5 values so as to see the top 5

# Insight-9 Top 5 Sub localities with the lowest average prices
Select Sublocality,avg(price) as average
from ny #Selecting sublocality and average prices from ny dataset
Group by Sublocality # Grouping by Sub locality
order by average asc # Ordering by average in ascending order
limit 5; #Limiting to only 5 values so as to see the top 5

# Insight-10 How many properties from each sub locality
Select Sublocality, count(Sublocality) as count, concat(round(((count(Type) / 4801) * 100 ),2), '%')  as percentage
From ny #Getting a count of the properties in the Sublocalities, and the percentage
Group by Sublocality #Grouping by Sublocality
Order by count DESC  #Ordering by the count in the descending order

# Insight-11 Top 5 brokers with the most listings-
Select Brokertitle,Count(Brokertitle) as Count
from ny #Selecting broker title and count brokertitle from ny dataset
Group by Brokertitle # Grouping by Broker title
order by Count desc # Ordering by average in ascending order
limit 5; #Limiting to only 5 values so as to see the top 5

# Insight-12 Top 5 brokers with the least listings-
Select Brokertitle,Count(Brokertitle) as Count
from ny #Selecting broker title and count brokertitle from ny dataset
Group by Brokertitle # Grouping by Broker title
order by Count asc # Ordering by count in ascending order
limit 5; #Limiting to only 5 values so as to see the top 5

# Insight-13 Relationship between the number of bathrooms and price-
Select Bath,avg(price) as average_price, max(price) as maximum_price , min(price) as minimum_price
from ny #Selecting number of bathrooms, and average price from ny table
Group by Bath # Grouping by number of bathrooms 
Order by average_price desc; # Ordering by the price in the decsending order to see the highest on top

# Insight-14. Top 5 brokers with the highest average price
Select Brokertitle,avg(price) as average
from ny #Selecting broker title and average of price from ny dataset
Group by Brokertitle # Grouping by Broker title
order by average desc # Ordering by average in ascending order
limit 5; #Limiting to only 5 values so as to see the top 5

# Insight-15 Which Number of bathrooms is most prevalent among the listed properties-
Select Bath, count(Bath) as count, concat(round(((count(Bath) / 4801) * 100 ),2), '%')  as percentage
From ny #Getting a count of the variousnumber of bathrooms, and the percentage
Group by Bath #Grouping by  number of bathrooms
Order by count DESC  #Ordering by the count in the descending order

# Insight-16. Property type wise average square footage
Select Type,avg(Propertysqft) as average_square_footage
from ny #Selecting Type, and average sq footage from ny table
Group by Type # Grouping by Type
Order by average_square_footage desc; # Ordering by the average in the descending order to see the highest on top.

#Insight-17 Which locality has the highest average square footage available
Select Locality,avg(Propertysqft) as average_square_footage
from ny #Selecting Locality, and average sq footage from ny table
Group by Locality # Grouping by Type
Order by average_square_footage desc; # Ordering by the average in the descending order to see the highest on top.

# Insight-18 Top 5 sub localities with the highest average square footage available
Select Sublocality,avg(Propertysqft) as average_square_footage
from ny #Selecting Sublocality, and average sq footage from ny table
Group by Sublocality # Grouping by Sub locality
Order by average_square_footage desc # Ordering by the average in the descending order to see the highest on top.
Limit 5; #Seeing only top 5

# Insight 19- Which locality has the highest average price per square footage
Select locality, avg(Price/Propertysqft) as average_price_per_sq_footage
From ny  # Selecting locality, and the average of price per square footage from ny table
Group by locality #Grouping by locality
Order by average_price_per_sq_footage desc; #Ordering by the average price per square footage.

# Insight-20 Top 10 states with the highest number of listings
Select State, count(Type) as count
From ny #Getting a count of the state wise listings
Group by State #Grouping by state
Order by count DESC  #Ordering by the count in the descending order
Limit 10; #Seeing only top 10

# Insight 21 Top 10 states with the lowest number of listings
Select State, count(Type) as count
From ny #Getting a count of the state wise listings
Group by State #Grouping by state
Order by count ASC #Ordering by the count in the ascending order
Limit 10; #Seeing only top 10

# Insight 22- Top 10 states with the Highest average prices
Select State, avg(Price) as average_price
From ny #Getting state and the average price from ny table
Group by State #Grouping by state
Order by average_price desc #Ordering by the average in the descending order
Limit 10; #Seeing only top 10

# Insight 23- Top 10 streets with the highest number of listings
Select Street_name, count(Street_name) as count
From ny #Getting a count of the street wise listings
Group by Street_name #Grouping by street name
Order by count DESC  #Ordering by the count in the descending order
Limit 10; #Seeing only top 10

# Insight 24- Top 10 streets with the highest average price per square footage-
Select Street_name, avg(Price/Propertysqft) as average_price_per_sq_footage
From ny  # Selecting Street_name, and the average of price per square footage from ny table
Group by Street_name #Grouping by Street_name
Order by average_price_per_sq_footage desc #Ordering by the average price per square footage.
Limit 10; #Seeing only top 10

# Insight 25- Top 10 states with the highest average price per square footage- 
Select State, avg(Price/Propertysqft) as average_price_per_sq_footage
From ny #Getting state and the average price per sq footage from ny table
Group by State #Grouping by state
Order by average_price_per_sq_footage desc #Ordering by the average price per sq foot in the descending order
Limit 10; #Seeing only top 10

# Insight 26 Top 10 Latitude and longitude wise number of listings-
Select latitude,longitude, count(Type) as Count
from ny # Selecting latitude, and longitude and the count of listings
Group by latitude,longitude # Grouping by latitude,longitude
Order by count desc # Ordering by count
Limit 10; #Seeing only top 10

# Insight 27- Top 10 latitude and longitude wise average prices
Select latitude,longitude, avg(Price) as average_price
from ny # Selecting latitude, and longitude and the count of listings
Group by latitude,longitude # Grouping by latitude,longitude
Order by average_price desc # Ordering by count
Limit 10; #Seeing only top 10

# Insight 28 Property type wise average price per sq footage-
Select Type, avg(Price/Propertysqft) as average_price_per_sq_footage
From ny  # Selecting Type, and the average of price per square footage from ny table
Group by Type #Grouping by Type
Order by average_price_per_sq_footage desc #Ordering by the average price per square footage.
