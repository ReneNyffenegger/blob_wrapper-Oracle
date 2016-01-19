create table tq84_blob_wrapper_test (
  id  number primary key,
  blb blob
);


declare
  blob_ blob;
begin
  insert into tq84_blob_wrapper_test values (1, empty_blob() ) return blb into blob_;

  blob_wrapper.from_file('LOB_TEST_DIR', 'circle_new.txt', blob_);
end;
/

commit;
