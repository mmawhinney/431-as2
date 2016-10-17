// Penn Parallel Primitives Library
// Author: Prof. Milo Martin
// University of Pennsylvania
// Spring 2010

#ifndef PPP_FOR_H
#define PPP_FOR_H

#include "ppp.h"
#include "Task.h"
#include "TaskGroup.h"

namespace ppp {
    
template <typename T>
class ForTask: public ppp::Task {
public:
	ForTask(int64_t start, int64_t end, T* functor, int64_t grainsize=0) {
		m_start = start;
		m_end = end;
		m_func = functor;
		m_grainsize = grainsize;
	}

	void execute() {
        PPP_DEBUG_MSG("Split: [start: " + to_string(m_start) + ", end: " + to_string(m_end) + ", grain: " + to_string(m_grainsize) + "]");
		if (m_end - m_start < m_grainsize) {
			m_func->calculate(m_start, m_end);
            return;
		}
        
		int64_t middle = (m_start + m_end) / 2;
        
        ppp::TaskGroup tg;
		ForTask f1(m_start, middle, m_func, m_grainsize);
		ForTask f2(middle, m_end, m_func, m_grainsize);
		tg.spawn(f1);
		tg.spawn(f2);
		tg.wait();
	}
private:
	T* m_func;
	int64_t m_start;
	int64_t m_end;
	int64_t m_grainsize;
};

template <typename T>
extern inline
	void parallel_for(int64_t start, int64_t end, T* functor, int64_t grainsize=0) {
	assert(end >= start);
	// ASSIGNMENT: make this parallel via recursive divide and conquer
	if (grainsize == 0) {
		grainsize = (end-start+1) / (get_thread_count()*4);
	}

	ppp::ForTask<T> t(start, end, functor, grainsize);
	t.execute();
}
}
#endif
