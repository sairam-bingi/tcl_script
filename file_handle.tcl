# ##############################################
#                                              #
# Designer: Sairam Bingi                       #
# Topic: File handling in Tcl/Tk               #
# Language: Tcl/Tk                             #
# Contents:                                    #
#    1. Simple file writing example            #
#                                              #
# Note: Suggestion are welcomed.               #
#                                              #
# ##############################################

# Usage: simple_txt_file_wr [file_size]
# Eg: simple_txt_file_wr 5
proc simple_txt_file_wr { file_size } {
   puts "This code demonstrates basic file writing"
   set filename "output_file.txt"
   puts "Results will be stores in 'output_file.txt'"
   set fileid [open $filename "w"]
   set i 0
   while { $i < $file_size } {
      incr i
      set file_data "The current line is $i"
      puts $fileid $file_data
   }
   close $fileid
   puts "File writing completed"
}