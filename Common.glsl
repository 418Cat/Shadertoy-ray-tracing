#define DIFFUSE 0
#define MIRROR 1

struct Material
{
    vec3 color;
    int type;
};

struct Ray
{
    vec3 origin;
    vec3 direction;
};

struct Sphere
{
    vec3 center;
    float radius;
    Material material;
};

struct HitRecord
{
    bool hasHit;
    float t;
    vec3 point;
    vec3 normal;
    Material material;
};

struct Interval
{
    float t_min;
    float t_max;
};


// Pseud-random function found on internet
float rnd(vec2 xy, float seed){
       return fract(tan(distance(xy*1.61803398874989484820459, xy)*seed)*xy.x);
}