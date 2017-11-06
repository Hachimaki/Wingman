#pragma once

#include "AP_HAL_Namespace.h"

#define HAL_SEMAPHORE_BLOCK_FOREVER 0

class AP_HAL::Semaphore {
public:
    virtual bool take(uint32_t timeout_ms) WARN_IF_UNUSED = 0 ;
    virtual bool take_nonblocking() WARN_IF_UNUSED = 0;
    virtual bool give() = 0;
    virtual ~Semaphore(void) {}
};
