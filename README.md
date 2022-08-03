# REACT APP WITH CONTAINER EXAMPLE

## Pre-requisites
1. Install [`node`](https://nodejs.org/en/download/) (LTS version)
2. Verify by running `node` in command prompt
3. With `node`, you should have got `npm` (node package manager).  Verify
4. Clone the repo, go to cloned folder
5. Install dependencies using `npm install`

## Running the dev server
1. Go to project directory
2. Execute `npm start`

## Running the prod with docker container server
```
$ docker build -t <tag_name> . //Make a image
$ docker run -dp 4000:80 <tag_name> --name <container_name> //Make container using image
```