(ns gator.steps
  (:require [lambdacd.steps.shell :as shell]
            [lambdacd.steps.git :as git]))

(def repo-uri "https://github.com/JustgeekDE/gatorV2.git")
(def repo-branch "master")

(defn wait-for-repo [args ctx]
  (git/wait-for-git ctx repo-uri repo-branch))

(defn with-repo [& steps]
  (git/with-git repo-uri steps))

(defn single-gates-unit-tests [args ctx]
  (shell/bash ctx (:cwd args) "./runTests.sh unitTestsSimulation"))

(defn integrate-single-gates [args ctx]
  (shell/bash ctx (:cwd args) "./integrateSingleGates.sh"))

(defn integration-tests [args ctx]
  (shell/bash ctx (:cwd args) "./runTests.sh integrationTestsSimulation"))

(defn ERC [args ctx]
  (shell/bash ctx (:cwd args) "./runERC.sh build/alu_slice.sch"))
