
struct Infinitisimal{U,V}
    num::U
    dx::V
end

number(i::Infinitisimal) = i.number
dx(i::Infinitisimal) = i.dx

infadd(a::Infinitisimal,b::Infinitisimal) = Infinitisimal(a.num+b.num,a.dx+b.dx)
infadd(a::Number,b::Infinitisimal) = Infinitisimal(a+b.num,b.dx)
infadd(a::Infinitisimal,b::Number) = infadd(b,a)

const dx = Infinitisimal(0.0,)