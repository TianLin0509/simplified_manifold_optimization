# simplified_manifold_optimization
Manifold-based-algorithm to solve problems with constant modulus constraints.

This repo realized a simple version of manifold optimization-based algorithm. The more detailed version can be referred to
[https://github.com/yuxianghao/Alternating-minimization-algorithms-for-hybrid-precoding-in-millimeter-wave-MIMO-systems'](https://github.com/yuxianghao/Alternating-minimization-algorithms-for-hybrid-precoding-in-millimeter-wave-MIMO-systems).

It can be regarded as a simple framework for the following problem:

* have a specific objective function. 
* the objective function is associated with one vector (or matrix) variable x, which has the constant modulust constraints. 
(i.e., the modulus of elements of the vector should be 1)
* have **derived Euclidean gradient** of the objective with respect to the variable x.

Then you can use this repo to solve the problem via manifold optimization.  I have given a simple example, so you can clone this repo 
and just run the example.m .

Any questions can contact the authors via email: lint17@fudan.edu.cn 
