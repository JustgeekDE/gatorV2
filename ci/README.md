# gator

A continuous delivery pipeline for FIXME

## Usage

* `lein run` will start your pipeline with a web-ui listening on port 8080

## Files

* `/`
    * `project.clj` contains dependencies and build configuration for Leiningen

* `/src/gator/`
    * `pipeline.clj` contains your pipeline-definition
    * `steps.clj` contains your custom build-steps
    * `core.clj` contains the `main` function that wires everything together

* `/resources/`
    * `logback.xml` contains a sample log configuration

## References

* for a more detailed example, look at the [example pipeline](https://github.com/flosell/lambdacd/tree/master/src/todopipeline) in the main LambdaCD project
