program bubble_sort
    implicit none
    integer, allocatable :: arr(:)
    integer :: n, i, j, x, temp

    ! Nhập số phần tử
    print *, "Enter n:"
    read(*, *) n

    allocate(arr(n))

    ! Nhập mảng
    print *, "Enter array elements:"
    do i = 1, n
        read(*, *) arr(i)
    end do

    ! Chọn kiểu sort
    print *, "Enter sort type: 1. Ascending 2. Descending"
    read(*, *) x

    ! Bubble sort
    do i = 1, n - 1
        do j = 1, n - i
            if ( (x == 1 .and. arr(j) > arr(j+1)) .or. (x == 2 .and. arr(j) < arr(j+1)) ) then
                temp = arr(j)
                arr(j) = arr(j+1)
                arr(j+1) = temp
            end if
        end do
    end do

    ! In kết quả
    print *, "Sorted array:"
    do i = 1, n
        print *, arr(i)
    end do

end program bubble_sort