(ns gator.pipeline
  (:use [lambdacd.steps.control-flow]
        [gator.steps])
        (:require [lambdacd.steps.shell :as shell]
                  [lambdacd.steps.git :as git]
                  [lambdacd.steps.manualtrigger :as manualtrigger]))

(def pipeline-def
  `(
    (either
      manualtrigger/wait-for-manual-trigger
      wait-for-repo)
    (with-repo
          single-gates-unit-tests
          )
  )
)
