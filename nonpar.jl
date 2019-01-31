# This file contains useful functions for non-parametric estimation

function epa(t::Real)
    if abs(t)<1
        return 0.75*(1-t^2)
    else
        return 0
    end
end

function kernreg(y::Array{Float64,1},x::Array{Float64,1},x0::Float64,h::Float64)
    m=0.
    f=0.
    for i=1:length(y)
        k=epa((x[i]-x0)/h)
        m += y[i]*k
        f +=k
    end
    return m/f
end
