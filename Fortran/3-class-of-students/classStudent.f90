module student_module
    implicit none

    type :: Student
        character(len=6) :: id
        character(len=50) :: name
        integer :: math, eng, lit, avg
    contains
        procedure :: calculateAvg
        procedure :: displayInfo
        procedure :: getRank
    end type

contains

    subroutine calculateAvg(this)
        class(Student), intent(inout) :: this
        this%avg = (this%math + this%eng + this%lit) / 3
    end subroutine

    subroutine displayInfo(this)
        class(Student), intent(in) :: this

        print *, "ID:", trim(this%id)
        print *, "Name:", trim(this%name)
        print *, "Math:", this%math
        print *, "English:", this%eng
        print *, "Literature:", this%lit
        print *, "Average:", this%avg
        print *, "Rank:", trim(this%getRank())  

    end subroutine

    function createStudent(id, name, math, eng, lit) result(s)
        character(len=*), intent(in) :: id
        character(len=*), intent(in) :: name
        integer, intent(in) :: math, eng, lit
        type(Student) :: s

        s%id = id
        s%name = name
        s%math = math
        s%eng = eng
        s%lit = lit
        s%avg = 0
    end function

    function getRank(this) result(rank)
        class(Student), intent(in) :: this
        character(len=20) :: rank

        if (this%avg >= 8) then
            rank = "Excellent"
        else if (this%avg >= 6.5) then
            rank = "Good"
        else if (this%avg >= 5) then
            rank = "Average"
        else
            rank = "Weak"
        end if
    end function

end module

program main
    use student_module
    implicit none

    character(len=6) :: id
    character(len=50) :: name
    integer :: math, eng, lit

    type(Student) :: s

    print *, "ID:"
    read(*, *) id

    print *, "Name:"
    read(*, *) name

    print *, "Math:"
    read(*, *) math

    print *, "English:"
    read(*, *) eng

    print *, "Literature:"
    read(*, *) lit

    s = createStudent(id, name, math, eng, lit)

    call s%calculateAvg()
    call s%displayInfo()

end program main