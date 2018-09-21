# Lam

Want to fetch location between two location or want to place order based on From - To. This will also helps you to place order calculate distance in meters and list them. So you can distribute them.

# About Installation

There a lot way to use it:

1. Installation with docker:

Just Run the start.sh file in ubuntu terminal. Rest it will handle for you automatically.

- Download `start.sh` and `cmd` to download location and run `bash start.sh`

Note: It will first remove previous installed docker and docker images to overcome permission issues and socket lock issues. So it can run easily


2. Want to use without docker:

- Go to your `$GOPATH` directory and run

  - `go get github.com/amku91/lam-heroku`
  
- `cmd` to `{$GOPATH}github.com/amku91/lam-heroku` and run

  - `go build main.go`
  
  - `./main`
  
  That's All.
  
  # Perform Testing
  
  - To run test cases you must have installed go on your system.
  
  - Run `go get github.com/amku91/lam-heroku` and run `go get ./...`
  
  - Now cmd to `lam-heroku` directory and run `go build main.go`
  
  - Finally run `./main` in same folder
  
  - Now open another terminal and cmd to `lam-heroku` directory and run `go test -v ./testing`
  
  Note: Testing command not gonna run while using docker.
  
  


# Tech Stacks

- Go lang
- Mongo DB
- Google Maps
- Docker

Built by using :

1. Go 1.10.3    -->> `https://golang.org`
2. Go-Chi Frameowork    -->> `https://github.com/go-chi/chi`
3. mgo for Mongo DB    -->> `https://godoc.org/labix.org/v2/mgo`
4. Ozzo Validation    -->> `https://github.com/go-ozzo/ozzo-validation`
5. Google Maps    -->> `https://googlemaps.github.io/maps`
6. Go Cors    -->> `https://github.com/rs/cors`
7. Go Baloo Testing -->. `https://gopkg.in/h2non/baloo.v3`

and  some more go system libraries.

# Features

1. Fetch location between two lcation using latitude and longitude(Distance in meters)
2. Place order based on distance
3. Provide api to take orders by order id
4. List all orders
5. Provide pagination while listing orders
6. Safety limit on order list MAX is 100 you can fetch at a time

and a lot. :)

# Error Responses

This project gonna send three type of error responses.

1. 500 Error:
- You gonna get this while sending incorrect data or breach of any api rules.

2. 409 Error:
- You gonna get this while order is already taken. You can take order only once.

# Success Response

1. 200 Success: Yoo !!! all good.

That's All. :)
