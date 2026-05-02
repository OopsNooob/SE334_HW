program prime_numbers
    implicit none
    integer :: n, i, ios

    print *, "Enter n (integer):"
    read(*, *, iostat=ios) n

    if (ios /= 0) then
        print *, "Error: Invalid input."
        stop
    end if

    if (n < 2) then
        print *, "No prime numbers."
        stop
    end if

    write(*, '(A)', advance="no") "Prime numbers: "

    do i = 2, n
        if (isPrime(i)) then
            write(*, '(I4)', advance="no") i
        end if
    end do

   print *   ! xuống dòng cuối

contains

    logical function isPrime(x)
        implicit none
        integer, intent(in) :: x
        integer :: i, limit

        if (x == 2) then
            isPrime = .true.
            return
        end if

        if (x < 2 .or. mod(x, 2) == 0) then
            isPrime = .false.
            return
        end if

        limit = int(sqrt(dble(x)))

        do i = 3, limit, 2
            if (mod(x, i) == 0) then
                isPrime = .false.
                return
            end if
        end do

        isPrime = .true.
    end function isPrime

end program prime_numbers