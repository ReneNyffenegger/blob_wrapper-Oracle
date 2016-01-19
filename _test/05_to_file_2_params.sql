exec blob_wrapper.to_file('c:\temp\two_params.txt', utl_raw.cast_to_raw('foo bar baz'))

$compare_files.bat c:\temp\two_params.txt expected\two_params.txt
