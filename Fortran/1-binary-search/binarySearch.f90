program binary_search
    implicit none
    integer, allocatable :: arr(:)
    integer :: n, i, left, right, mid, x, res

    ! Nhập số phần tử
    print *, "Enter n:"
    read(*, *) n

    allocate(arr(n))

    ! Nhập mảng từ user
    print *, "Enter array elements (sorted):"
    do i = 1, n
        read(*, *) arr(i)
    end do

    ! Nhập giá trị cần tìm
    print *, "Enter x:"
    read(*, *) x

    left = 1
    right = n
    res = -1

    do while (left <= right)
        mid = (left + right) / 2

        if (arr(mid) == x) then
            res = mid
            exit
        else if (x > arr(mid)) then
            left = mid + 1
        else
            right = mid - 1
        end if
    end do

    if (res == -1) then
        print *, "Not found:", x
    else
        print *, "Found at position:", res
    end if

end program binary_search