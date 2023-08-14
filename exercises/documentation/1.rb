# Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path is located at https://docs.ruby-lang.org/en/3.2/File.html#method-c-path
# It is a Class method and is called on classes themselves.
# When called on a class it returns the string representation of the path.
# example:
    # File.path("/dev/null") #=> "/dev/null"
    # File.path(Pathname.new("/tmp")) #=> "/tmp"

# File#path is located at https://docs.ruby-lang.org/en/3.2/IO.html#method-i-path
# It is an Instance method and can only be called on instances of a class you initialize.
# When called on a File object, it returns a the path associated with the IO, or nil if there
# is no path associated with the IO. (IO represents an input/output stream)
# example:
    # $stdin.path # => "<STDIN>"
    # File.open("testfile") {|f| f.path} # => "testfile"
