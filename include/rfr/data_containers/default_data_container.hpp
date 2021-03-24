#ifndef RFR_DEFAULT_CONTAINER_HPP
#define RFR_DEFAULT_CONTAINER_HPP

namespace rfr{ namespace data_containers{

template<typename num_t = float, typename response_t = float, typename index_t = unsigned int>
class default_container {
  protected:
	response_t response_type;							//!< to discriminate between regression and classification
  public:
	default_container(index_t num_f) { init_protected(num_f); }

	void init_protected (index_t num_f){
		response_type = 0;
	}
};

}}//namespace rfr
#endif
