program matrix_processing
    implicit none
    integer, allocatable :: a(:,:)
    integer :: n, m, i, j
    integer :: maxVal
    integer :: ios

     print *, "Enter rows (n):"
     read(*, *) n
     print *, "Enter columns (m):"
     read(*, *) m

     if (n < 1 .or. m < 1) then
         print *, "Error: number of rows and columns must be positive."
         stop 1
     end if

     allocate(a(n,m), stat=ios)
     if (ios /= 0) then
         print *, "Error: allocation of array failed (stat=", ios, ")."
         stop 1
     end if

     ! Nhập ma trận
     print *, "Enter matrix elements:"
     do i = 1, n
         read(*,*, iostat=ios) (a(i,j), j = 1, m)
         if (ios /= 0) then
             print *, "Error: input failed when reading row", i
             stop 1
         end if
     end do

    ! In ma trận
    print *, "Matrix:"
    do i = 1, n
        print *, (a(i,j), j = 1, m)
    end do

    ! Tính tổng từng dòng
    do i = 1, n
        print *, "Sum of row", i, "=", sum(a(i,:))
    end do

    ! Tìm max
    maxVal = a(1,1)
    do i = 1, n
        do j = 1, m
            if (a(i,j) > maxVal) then
                maxVal = a(i,j)
            end if
        end do
    end do

    print *, "Max value =", maxVal
    deallocate(a)

end program matrix_processing