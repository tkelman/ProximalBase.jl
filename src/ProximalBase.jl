module ProximalBase

export
  # types
  DifferentiableFunction,
  ProximableFunction,
  SparseIterate, SymmetricSparseIterate, AtomIterate, numCoordinates,

  # smooth functions
  QuadraticFunction, L2Loss, LeastSquaresLoss,
  value, value_and_gradient!,

  # proximal functions
  ProxZero,
  ProxL1, AProxL1,
  ProxL2, ProxL2Sq, ProxNuclear,
  ProxL1Fused,
  AProxL2,
  ProxGaussLikelihood,
  prox!, prox, cdprox!,

  # utils
  shrink, shrinkL2!,
  proxL1Fused,
  A_mul_B_row, At_mul_B_row,
  A_mul_X_mul_B, A_mul_X_mul_B_rc,
  A_mul_UUt_mul_B, A_mul_UUt_mul_B_rc


include("sparseIterate.jl")
include("utils.jl")

# DifferentiableFunctions
include("differentiable_functions.jl")

# ProximableFunctions
include("proximal_functions.jl")

end
