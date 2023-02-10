-- https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true

select round(
    sqrt(power(max(LONG_W) - min(LONG_W), 2) + power(max(LAT_N) - min(LAT_N), 2))
    , 4)
from station;