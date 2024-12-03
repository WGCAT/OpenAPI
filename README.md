# Simple Back-end Test

## Build and Run main.go

```
go mod tidy

go build

./simple-test
```

Test call `localhost:8080/ping` using curl, PostMan, and so on.

## Find exchange rate

0. Implement a simple Restful API server.


1. Print a current exchange rate, USD -> KRW.

Path
```
[GET] /exchange/:code
```
In this case, code is USD.
   
Response
```
{
   "rate": 1400.00
}
```


2. Print a exchange rate of 2024-11-01, USD -> KRW (GET /exchange/:code?date=2024-11-01).


3. Print all currency code and exchange rate for KRW if the rate is greater than or equal to 1000 (GET /exchange?min=1000).


4. Print the number of currency if exchange rate for KRW is greater than or equal to 1000 (GET /counting/exchange?min=1000).

## Caution
- The time limit is 40 minutes.
- You can search for it, but please show me the screen you search for.
- API key is for free tier. It means that you can't use a base, symbol as query parameter.
- https://fixer.io/
- API KEY: 2513890aa26d236e17cf83d8b2b84049
