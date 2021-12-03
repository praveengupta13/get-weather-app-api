%dw 2.0
output application/json
---
payload..payload map ((item, index) -> 
{ 
    
"cityName": item.name,
    "feelLike": item.main.feels_like -270,
    "tempMin": item.main.temp_min -270,
    "tempMax": item.main.temp_max -270,
    "pressure": item.pressure
} 


)