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
   puts "Results will be stored in '$filename'"
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


# Usage: file_rd_sel_wr
proc file_rd_sel_wr { } {
   puts "This code demonstrates file reading & selective writing"
   set filein "input_file.txt"
   puts "Input file is '$filein'"
   set fileout "output_file.txt"
   puts "Results will be stored in '$fileout'"
   set fileid_in [open $filein "r"]
   set fileid_out [open $fileout "w"]
   while { [gets $fileid_in lyne] > -1 } {
   # reading line by line
      set file_data "[lindex $lyne 1]"
      # reading second column of each line
      puts $fileid_out $file_data
   }
   close $fileid_in
   close $fileid_out
   puts "File writing completed"
}
