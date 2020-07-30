%module cipheycore

%ignore std::vector<ciphey::ausearch_edge>::vector(size_type);
%ignore std::vector<ciphey::ausearch_edge>::resize;

%include std_basic_string.i
//%include std_string.i
%include std_map.i
%include std_vector.i
%include std_shared_ptr.i
%include std_set.i


%include "ciphey/swig.typemaps.hxx"

namespace ciphey {
  %typemap(in) data { ::ciphey::swig::bytes_in($1, $input); }
  %typemap(out) data { ::ciphey::swig::bytes_out($result, $1); }
}

%{
#include <map>
  #define SWIG_FILE_WITH_INIT
  #include "ciphey/typedefs.hpp"
  #include "ciphey/swig.typemaps.hxx"
  #include "ciphey/swig.hpp"
%}

%include "ciphey/typedefs.hpp"

namespace std {
  %template(freq_table) map<ciphey::char_t, ciphey::freq_t>;
  %template(prob_table) map<ciphey::char_t, ciphey::prob_t>;
  %template(group_t) vector<ciphey::char_t>;
  %template(viginere_key_t) vector<size_t>;
  %template(analysis_t) shared_ptr<ciphey::simple_analysis_res>;
  %template(windowed_analysis_t) shared_ptr<ciphey::windowed_analysis_res>;
  %template(domain_t) set<ciphey::char_t>;
  %template(data) vector<uint8_t>;
  %template(ausearch_edges_t) vector<ciphey::ausearch_edge>;

}

%include "ciphey/ausearch.swig.hxx"

%include "ciphey/ciphers.swig.hxx"
%include "ciphey/swig.hpp"

namespace ciphey {
  %template(caesar_results_elem) crack_result<ciphey::caesar::key_t>;
  %template(vigenere_results_elem) crack_result<ciphey::vigenere::key_t>;
}
namespace std {
  %template(caesar_results) vector<ciphey::crack_result<ciphey::caesar::key_t>>;
  %template(vigenere_results) vector<ciphey::crack_result<ciphey::vigenere::key_t>>;
}