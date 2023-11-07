
struct Infinitesimal{U,V}
    num::U
    dx::V
end

number(i::Infinitesimal) = i.number
dx(i::Infinitesimal) = i.dx

infadd(a::Infinitesimal,b::Infinitesimal) = Infinitisimal(a.num+b.num,a.dx+b.dx)
infadd(a::Number,b::Infinitesimal) = Infinitisimal(a+b.num,b.dx)
infadd(a::Infinitesimal,b::Number) = infadd(b,a)

const dx = Infinitesimal(0.0,)
