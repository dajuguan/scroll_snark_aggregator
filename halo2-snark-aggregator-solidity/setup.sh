#!/bin/sh

mkdir -p waffle/
mkdir -p waffle/src
cp ../halo2-snark-aggregator-sdk/output/verifier.sol waffle/src/Verifier.sol
cp ../halo2-snark-aggregator-sdk/output/verify_circuit_proof.data waffle/output/verify_circuit_proof.data
cp ../halo2-snark-aggregator-sdk/output/verify_circuit_final_pair.data waffle/output/verify_circuit_final_pair.data
cd waffle
yarn install
yarn build
cd -
