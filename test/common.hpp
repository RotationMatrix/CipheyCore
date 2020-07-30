#pragma once

#include <ciphey/ciphers.hpp>

namespace ciphey::test {
  inline ciphey::prob_table const& expected() {
    static ciphey::prob_table ret = {
      { 'e', 11.162e-2, },
      { 't', 9.356e-2 },
      { 'a', 8.497e-2 },
      { 'r', 7.587e-2, },
      { 'i', 7.507e-2, },
      { 'o', 6.749e-2, },
      { 'n', 6.327e-2, },
      { 's', 6.094e-2, },
      { 'h', 6.094e-2, },
      { 'd', 4.253e-2, },
      { 'l', 4.025e-2, },
      { 'u', 2.758e-2, },
      { 'w', 2.560e-2, },
      { 'm', 2.406e-2, },
      { 'f', 2.228e-2, },
      { 'c', 2.202e-2, },
      { 'g', 2.015e-2, },
      { 'y', 1.994e-2, },
      { 'p', 1.929e-2, },
      { 'b', 1.492e-2, },
      { 'k', 1.292e-2, },
      { 'v', 0.978e-2, },
      { 'j', 0.153e-2, },
      { 'x', 0.150e-2, },
      { 'q', 0.095e-2, },
      { 'z', 0.077e-2 },
    };
    return ret;
  }

  inline ciphey::group_t const& group() {
    static ciphey::group_t ret = {
      'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h',
      'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p',
      'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
      'y', 'z'
    };
    return ret;
  }

  inline std::set<ciphey::char_t> const& domain() {
    static std::set<ciphey::char_t> ret(group().begin(), group().end());

    return ret;
  }
}