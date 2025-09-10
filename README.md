**String Calculator
**
A simple Ruby-based string calculator that supports summing numbers provided as a string. The calculator can handle numbers separated by commas, newlines, and even custom delimiters.

**Features**

* Handles numbers separated by commas and newlines.

* Supports custom delimiters for number separation.

* Throws an error if negative numbers are provided in the input.

**Requirements**

  Ruby 2.x or higher
  
  RSpec (for testing the functionality)

**Installation**
  **Clone the Repository**

  Clone the repository to your local machine:

  git clone <repository_url>

**Install Dependencies**

If you're using RSpec for testing, you can install the necessary gems by running:

  bundle install

**Usage
Adding Numbers**

The calculator can sum numbers separated by commas and newlines.

  calc = StringCalculator.new
  calc.add('1,2,3')  # Returns 6

**Custom Delimiters**

You can specify custom delimiters at the start of the string by prefixing them with //.

Example:

  calc = StringCalculator.new
  calc.add("//;\n1;2;3")  # Returns 6

**Negative Numbers**

Negative numbers are not allowed. If you try to add negative numbers, an exception is raised with a message indicating which numbers are invalid.

Example:

  calc = StringCalculator.new
  calc.add('1,-2,3,-4')  # Raises error: "negative numbers not allowed -2,-4"

**Newline Delimiters**

The calculator also supports newlines as delimiters between numbers.

  calc = StringCalculator.new
  calc.add("1\n2,3")  # Returns 6

**Running Tests**

This project uses RSpec for testing. To run the tests, first make sure RSpec is installed. If you're using Bundler:

  bundle exec rspec


Alternatively, you can run RSpec directly:

  rspec


This will run all the test cases for the StringCalculator class.
