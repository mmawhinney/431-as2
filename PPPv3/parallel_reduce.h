// Penn Parallel Primitives Library
// Author: Prof. Milo Martin
// University of Pennsylvania
// Spring 2010

#ifndef PPP_REDUCE_H
#define PPP_REDUCE_H

#include "ppp.h"
#include "Task.h"
#include "TaskGroup.h"

namespace ppp {
    
template <typename T>
class ReduceTask: public ppp::Task {
public:
	ReduceTask(T* array, int64_t start, int64_t end, int64_t grainsize=0) {
		m_start = start;
		m_end = end;
		m_array = array;
		m_grainsize = grainsize;
	}

	void execute() {
    PPP_DEBUG_MSG("Split: [start: " + to_string(m_start) + ", end: " + to_string(m_end) + ", grain: " + to_string(m_grainsize) + "]");
		if (m_end - m_start < m_grainsize) {
      T sum;
      sum = T(0);
      for (int i = m_start; i < m_end; i++) {
        sum = sum + m_array[i];
      }
      m_sum = sum;
      return;
		}
        
    int64_t middle = (m_start + m_end) / 2;
        
    ppp::TaskGroup tg;
		ReduceTask r1(m_array, m_start, middle, m_grainsize);
		ReduceTask r2(m_array, middle, m_end, m_grainsize);
		tg.spawn(r1);
		tg.spawn(r2);
		tg.wait();
    m_sum = r1.m_sum + r2.m_sum;
    PPP_DEBUG_MSG("SUM: " + to_string(m_sum));
	}
    
  T get_sum() {
    return m_sum;
  }
    
private:
	T* m_array;
	int64_t m_start;
	int64_t m_end;
	int64_t m_grainsize;
  T m_sum;
};
  template <typename T>
  extern inline
  T parallel_reduce(T* array, int64_t start, int64_t end, int64_t grainsize=0)
  {
    // ASSIGNMENT: make this parallel via recursive divide and conquer
    assert(end >= start);
    if (grainsize == 0) {
		  grainsize = (end-start+1) / (get_thread_count()*4);
    }

    ppp::ReduceTask<T> t(array, start, end, grainsize);
    t.execute();
    T thing = t.get_sum();
    PPP_DEBUG_MSG("SUM: " + to_string(thing));
    return thing;
  }
}

#endif
