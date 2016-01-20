declare
  b blob;
begin
  b := blob_wrapper.from_file('LOB_TEST_DIR', 'circle.txt');

  if dbms_lob.getlength(b) != 161202 then
     dbms_output.put_line('Expected size of circle.txt is 161202');
  end if;

  blob_wrapper.to_file('LOB_TEST_DIR', 'circle_new.txt', b);
end;
/

$compare_files c:\temp\circle.txt c:\temp\circle_new.txt
