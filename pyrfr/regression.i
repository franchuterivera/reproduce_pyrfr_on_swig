%module regression

%pythonnondynamic;

%{
#include <random>
#include "rfr/data_containers/default_data_container.hpp"

// put typedefs here for later use when specifying templates
typedef double num_t;
typedef double response_t;
typedef unsigned int index_t;
%}

typedef double num_t;
typedef double response_t;
typedef unsigned int index_t;
typedef std::default_random_engine rng_t;

// DATA CONTAINERS
%include "rfr/data_containers/default_data_container.hpp";

%template(default_data_container) rfr::data_containers::default_container<num_t, response_t, index_t>;
