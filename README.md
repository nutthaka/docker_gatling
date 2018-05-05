# Docker Gatling 2.3.1

    docker build -t gatling .

    docker run --rm gatling computerdatabase.BasicSimulation

    docker run --rm -v $(pwd)/results:/gatling/results gatling computerdatabase.BasicSimulation

    docker run --rm -v $(pwd)/results:/gatling/results -v $(pwd)/user-files:/gatling/user-files gatling sample.BasicSimulation

### Example directories

    Service
     |_ test
        	|_ gatling
    			     |_ body
    			     |_ data
    			     |_ simulations

    docker run --rm -v $(pwd)/results:/gatling/results -v $(pwd)/test/gatling:/gatling/user-files gatling sample.BasicSimulation
