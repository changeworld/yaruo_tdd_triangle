require 'test/unit'
require './triangle.rb'

class TC_Triangle < Test::Unit::TestCase
  def setup
    @triangle = Triangle.new
  end
  def test_equilateral
    @triangle = Triangle.new
    @triangle.a = 1
    @triangle.b = 1
    @triangle.c = 1
    assert @triangle.is_equilteral_triangle?, 'should be passed.'
   
    @triangle.a = 2
    @triangle.b = 1
    @triangle.c = 1
    assert !@triangle.is_equilteral_triangle?
    
    @triangle.a = 0
    @triangle.b = 0
    @triangle.c = 0
    assert !@triangle.is_equilteral_triangle?, 'zero!'
    
    @triangle.a = nil
    @triangle.b = 0
    @triangle.c = nil
    assert !@triangle.is_equilteral_triangle?, 'nil?'
  end
  def test_isoscales_triangle
    @triangle.a = 2
    @triangle.b = 2
    @triangle.c = 1
    assert @triangle.is_isoscales_triangle?, 'should be pass!'
   
    @triangle.a = 1
    @triangle.b = 2
    @triangle.c = 1
    assert @triangle.is_isoscales_triangle?, 'should be pass!'

    @triangle.a = 2
    @triangle.b = 1
    @triangle.c = 2
    assert @triangle.is_isoscales_triangle?, 'should be pass!'
    
    @triangle.a = 5
    @triangle.b = 4
    @triangle.c = 3
    assert !@triangle.is_isoscales_triangle?, 'not isoscales!'
  end
end
