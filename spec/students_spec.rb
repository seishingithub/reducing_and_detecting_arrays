
require 'spec_helper'

require './lib/students'

describe Students do


  it 'can return all students' do
    students = Students.new

    input =     [
      {name: "Peggy", age: 46},
      {name: "Fred", age: 51},
      {name: "Sarah", age: 34},
      {name: "Lisa", age: 51},
      {name: "Ian", age: 19},
    ]

    expect(input).to eq students.all

  end

  it 'can calculate the average age of the class' do
    students = Students.new
    expect(students.average_age).to eq 40
      end

  it 'can return a string of student names' do
    students = Students.new
    expect(students.string_of_names).to eq "Peggy Fred Sarah Lisa Ian"
  end

  it 'can find a student older than a certain age' do
    students = Students.new
    expect(students.older_than(35)).to eq "Peggy, Fred, Lisa"
  end

  it 'can find out if there are any old enough to drink' do
    pending
  end

  it 'can find a specific student' do
    pending
  end

  it 'can determine if a specific student is present' do
    pending
  end

  it 'can group students by age' do
    pending
  end
end