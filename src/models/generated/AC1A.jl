#=
This file is auto-generated. Do not edit.
=#
"""
    mutable struct AC1A <: AVR
        Tr::Float64
        Tb::Float64
        Tc::Float64
        Ka::Float64
        Ta::Float64
        Va_lim::Tuple{Float64, Float64}
        Te::Float64
        Kf::Float64
        Tf::Float64
        Kc::Float64
        Kd::Float64
        Ke::Float64
        E_sat::Tuple{Float64, Float64}
        Se::Tuple{Float64, Float64}
        Vr_lim::Tuple{Float64, Float64}
        V_ref::Float64
        saturation_coeffs::Tuple{Float64, Float64}
        ext::Dict{String, Any}
        states::Vector{Symbol}
        n_states::Int64
        internal::InfrastructureSystemsInternal
    end

This excitation systems consists of an alternator main exciter feeding its output via non-controlled rectifiers.
The exciter does not employ self-excitation, and the voltage regulator power is taken from a source that is not affected by external transients.
Parameters of IEEE Std 421.5 Type AC1A Excitacion System. ESAC1A in PSSE and PSLF

# Arguments
- `Tr::Float64`: Regulator input filter time constant in s, validation range: (0, nothing)
- `Tb::Float64`: Regulator denominator (lag) time constant in s, validation range: (0, nothing)
- `Tc::Float64`: Regulator numerator (lead) time constant in s, validation range: (0, nothing)
- `Ka::Float64`: Regulator output gain, validation range: (0, nothing)
- `Ta::Float64`: Regulator output time constant in s, validation range: (0, nothing)
- `Va_lim::Tuple{Float64, Float64}`: Limits for regulator output (Va_min, Va_max)
- `Te::Float64`: Exciter field time constant in s, validation range: (&quot;eps()&quot;, nothing)
- `Kf::Float64`: Rate feedback excitation system stabilizer gain, validation range: (0, nothing)
- `Tf::Float64`: Rate feedback time constant, validation range: (&quot;eps()&quot;, nothing)
- `Kc::Float64`: Rectifier loading factor proportional to commutating reactance, validation range: (0, nothing)
- `Kd::Float64`: Demagnetizing factor, function of exciter alternator reactances, validation range: (0, nothing)
- `Ke::Float64`: Exciter field proportional constant, validation range: (0, nothing)
- `E_sat::Tuple{Float64, Float64}`: Exciter output voltage for saturation factor: (E1, E2)
- `Se::Tuple{Float64, Float64}`: Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))
- `Vr_lim::Tuple{Float64, Float64}`: Limits for exciter field voltage: (Vr_min, Vr_max)
- `V_ref::Float64`: Reference Voltage Set-point, validation range: (0, nothing)
- `saturation_coeffs::Tuple{Float64, Float64}`: Coefficients (A,B) of the function: Se(x) = B(x - A)^2/x
- `ext::Dict{String, Any}`
- `states::Vector{Symbol}`: The states are:
	Vm: Sensed terminal voltage,
	Vr1: Lead-lag state,
	Vr2: Regulator output state,
	Ve: Integrator output state,
	Vr3: Feedback output state
- `n_states::Int64`
- `internal::InfrastructureSystemsInternal`: power system internal reference, do not modify
"""
mutable struct AC1A <: AVR
    "Regulator input filter time constant in s"
    Tr::Float64
    "Regulator denominator (lag) time constant in s"
    Tb::Float64
    "Regulator numerator (lead) time constant in s"
    Tc::Float64
    "Regulator output gain"
    Ka::Float64
    "Regulator output time constant in s"
    Ta::Float64
    "Limits for regulator output (Va_min, Va_max)"
    Va_lim::Tuple{Float64, Float64}
    "Exciter field time constant in s"
    Te::Float64
    "Rate feedback excitation system stabilizer gain"
    Kf::Float64
    "Rate feedback time constant"
    Tf::Float64
    "Rectifier loading factor proportional to commutating reactance"
    Kc::Float64
    "Demagnetizing factor, function of exciter alternator reactances"
    Kd::Float64
    "Exciter field proportional constant"
    Ke::Float64
    "Exciter output voltage for saturation factor: (E1, E2)"
    E_sat::Tuple{Float64, Float64}
    "Exciter saturation factor at exciter output voltage: (Se(E1), Se(E2))"
    Se::Tuple{Float64, Float64}
    "Limits for exciter field voltage: (Vr_min, Vr_max)"
    Vr_lim::Tuple{Float64, Float64}
    "Reference Voltage Set-point"
    V_ref::Float64
    "Coefficients (A,B) of the function: Se(x) = B(x - A)^2/x"
    saturation_coeffs::Tuple{Float64, Float64}
    ext::Dict{String, Any}
    "The states are:
	Vm: Sensed terminal voltage,
	Vr1: Lead-lag state,
	Vr2: Regulator output state,
	Ve: Integrator output state,
	Vr3: Feedback output state"
    states::Vector{Symbol}
    n_states::Int64
    "power system internal reference, do not modify"
    internal::InfrastructureSystemsInternal
end

function AC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), )
    AC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref, saturation_coeffs, ext, [:Vm, :Vr1, :Vr2, :Ve, :Vr3], 5, InfrastructureSystemsInternal(), )
end

function AC1A(; Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref=1.0, saturation_coeffs=PowerSystems.get_avr_saturation(E_sat, Se), ext=Dict{String, Any}(), )
    AC1A(Tr, Tb, Tc, Ka, Ta, Va_lim, Te, Kf, Tf, Kc, Kd, Ke, E_sat, Se, Vr_lim, V_ref, saturation_coeffs, ext, )
end

# Constructor for demo purposes; non-functional.
function AC1A(::Nothing)
    AC1A(;
        Tr=0,
        Tb=0,
        Tc=0,
        Ka=0,
        Ta=0,
        Va_lim=(0.0, 0.0),
        Te=0,
        Kf=0,
        Tf=0,
        Kc=0,
        Kd=0,
        Ke=0,
        E_sat=(0.0, 0.0),
        Se=(0.0, 0.0),
        Vr_lim=(0.0, 0.0),
        V_ref=0,
        saturation_coeffs=(0.0, 0.0),
        ext=Dict{String, Any}(),
    )
end

"""Get AC1A Tr."""
get_Tr(value::AC1A) = value.Tr
"""Get AC1A Tb."""
get_Tb(value::AC1A) = value.Tb
"""Get AC1A Tc."""
get_Tc(value::AC1A) = value.Tc
"""Get AC1A Ka."""
get_Ka(value::AC1A) = value.Ka
"""Get AC1A Ta."""
get_Ta(value::AC1A) = value.Ta
"""Get AC1A Va_lim."""
get_Va_lim(value::AC1A) = value.Va_lim
"""Get AC1A Te."""
get_Te(value::AC1A) = value.Te
"""Get AC1A Kf."""
get_Kf(value::AC1A) = value.Kf
"""Get AC1A Tf."""
get_Tf(value::AC1A) = value.Tf
"""Get AC1A Kc."""
get_Kc(value::AC1A) = value.Kc
"""Get AC1A Kd."""
get_Kd(value::AC1A) = value.Kd
"""Get AC1A Ke."""
get_Ke(value::AC1A) = value.Ke
"""Get AC1A E_sat."""
get_E_sat(value::AC1A) = value.E_sat
"""Get AC1A Se."""
get_Se(value::AC1A) = value.Se
"""Get AC1A Vr_lim."""
get_Vr_lim(value::AC1A) = value.Vr_lim
"""Get AC1A V_ref."""
get_V_ref(value::AC1A) = value.V_ref
"""Get AC1A saturation_coeffs."""
get_saturation_coeffs(value::AC1A) = value.saturation_coeffs
"""Get AC1A ext."""
get_ext(value::AC1A) = value.ext
"""Get AC1A states."""
get_states(value::AC1A) = value.states
"""Get AC1A n_states."""
get_n_states(value::AC1A) = value.n_states
"""Get AC1A internal."""
get_internal(value::AC1A) = value.internal

"""Set AC1A Tr."""
set_Tr!(value::AC1A, val::Float64) = value.Tr = val
"""Set AC1A Tb."""
set_Tb!(value::AC1A, val::Float64) = value.Tb = val
"""Set AC1A Tc."""
set_Tc!(value::AC1A, val::Float64) = value.Tc = val
"""Set AC1A Ka."""
set_Ka!(value::AC1A, val::Float64) = value.Ka = val
"""Set AC1A Ta."""
set_Ta!(value::AC1A, val::Float64) = value.Ta = val
"""Set AC1A Va_lim."""
set_Va_lim!(value::AC1A, val::Tuple{Float64, Float64}) = value.Va_lim = val
"""Set AC1A Te."""
set_Te!(value::AC1A, val::Float64) = value.Te = val
"""Set AC1A Kf."""
set_Kf!(value::AC1A, val::Float64) = value.Kf = val
"""Set AC1A Tf."""
set_Tf!(value::AC1A, val::Float64) = value.Tf = val
"""Set AC1A Kc."""
set_Kc!(value::AC1A, val::Float64) = value.Kc = val
"""Set AC1A Kd."""
set_Kd!(value::AC1A, val::Float64) = value.Kd = val
"""Set AC1A Ke."""
set_Ke!(value::AC1A, val::Float64) = value.Ke = val
"""Set AC1A E_sat."""
set_E_sat!(value::AC1A, val::Tuple{Float64, Float64}) = value.E_sat = val
"""Set AC1A Se."""
set_Se!(value::AC1A, val::Tuple{Float64, Float64}) = value.Se = val
"""Set AC1A Vr_lim."""
set_Vr_lim!(value::AC1A, val::Tuple{Float64, Float64}) = value.Vr_lim = val
"""Set AC1A V_ref."""
set_V_ref!(value::AC1A, val::Float64) = value.V_ref = val
"""Set AC1A saturation_coeffs."""
set_saturation_coeffs!(value::AC1A, val::Tuple{Float64, Float64}) = value.saturation_coeffs = val
"""Set AC1A ext."""
set_ext!(value::AC1A, val::Dict{String, Any}) = value.ext = val
"""Set AC1A states."""
set_states!(value::AC1A, val::Vector{Symbol}) = value.states = val
"""Set AC1A n_states."""
set_n_states!(value::AC1A, val::Int64) = value.n_states = val
"""Set AC1A internal."""
set_internal!(value::AC1A, val::InfrastructureSystemsInternal) = value.internal = val