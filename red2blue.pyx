import numpy as np
ctypedef unsigned char byte

cpdef byte[:,:,:] red_to_blue_cython(byte[:,:,:] data):
    cdef byte[:,:,:] result = np.zeros_like(data)
    cdef int i, j
    for i in range(data.shape[0]):
        for j in range(data.shape[1]):
            r = data[i, j, 0]
            g = data[i, j, 1]
            b = data[i, j, 2]
            result[i, j, 0] = g
            result[i, j, 1] = r
            result[i, j, 2] = b

    return result
