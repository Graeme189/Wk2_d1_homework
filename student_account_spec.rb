require('minitest/autorun')
require('minitest/rg')

require_relative('student_account.rb')

class TestStudentAccount < MiniTest::Test

  def test_student_account
    account = StudentAccount.new('David', 'E23')
  end

  def test_student_account_name_change
    account = StudentAccount.new('David', 'E23')
    account.name = 'John'
    assert_equal('John', account.name)
  end

  def test_student_account_cohort_change
    account = StudentAccount.new('David', 'E23')
    account.cohort = 'F76'
    assert_equal('F76', account.cohort)
  end

  def test_talking
    account = StudentAccount.new('David', 'E23')
    assert_equal("I am in cohort E23", account.talking)
  end

  def test_favourite_language
    account = StudentAccount.new('David', 'E23')
    account.favourite_language('Ruby!')
    assert_equal('I love Ruby!', account.favourite_language('Ruby!'))
  end
end
