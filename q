1. Insert into the People table the following persons

INSERT INTO People
  VALUES (Patient_ty('55462008V', 'Nimal', 'Perera', '5678912367',
                     Admission_ty_tlb(Admission_ty(DATE '2003-03-02', DATE '2003-03-05', 'Diabetes', null))));

INSERT INTO People
  VALUES (Doctor_ty('569922008V', 'Sampath', 'Weerakoon', '1235567890', 'pediatrician'));
