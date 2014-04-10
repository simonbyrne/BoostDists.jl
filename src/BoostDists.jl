module BoostDists


using Distributions
import Distributions: pdf, cdf, ccdf, quantile, cquantile

export BoostDist

immutable BoostDist{T<:UnivariateDistribution,S<:ValueSupport} <: UnivariateDistribution{S}
    dist::T
end
BoostDist{S<:ValueSupport}(d::UnivariateDistribution{S}) = BoostDist{typeof(d),S}(d)


const jlbstlib = normpath(joinpath(Base.source_path(),"..","..","deps","jlboostdists"))



pdf{S}(d::BoostDist{Poisson,S}, x::Real) = ccall((:bst_pdf_poisson, jlbstlib), Cdouble, (Cdouble, Cdouble), x, d.dist.lambda)
cdf{S}(d::BoostDist{Poisson,S}, x::Real) = ccall((:bst_cdf_poisson, jlbstlib), Cdouble, (Cdouble, Cdouble), x, d.dist.lambda)
ccdf{S}(d::BoostDist{Poisson,S}, x::Real) = ccall((:bst_ccdf_poisson, jlbstlib), Cdouble, (Cdouble, Cdouble), x, d.dist.lambda)


end # module
