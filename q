1. Insert into the People table the following persons

INSERT INTO People
  VALUES (Patient_ty('55462008V', 'Nimal', 'Perera', '5678912367',
                     Admission_ty_tlb(Admission_ty(DATE '2003-03-02', DATE '2003-03-05', 'Diabetes', null))));

INSERT INTO People
  VALUES (Doctor_ty('569922008V', 'Sampath', 'Weerakoon', '1235567890', 'pediatrician'));
  
  
  
2  Write a method called getID (i.e. overloaded method) for doctor type. This method takes in a parameter type:varchar2 and returns an id. If type = "regNo" return the regNo else returns the nic.


  CREATE OR REPLACE TYPE BODY Doctor_ty AS

  MEMBER FUNCTION getID(type VARCHAR2) RETURN CHAR IS
  BEGIN
    IF type = 'regNo' THEN
      RETURN regNo;
    ELSE
      RETURN nic;
    END IF;
  END;

END;


3 Use the above method and print the id's of all doctors. Pass 'regNo' as the type and print the regNo of doctors.
SELECT d.getID('regNo') AS doctor_id
FROM People p, TABLE(p) t, Doctor_ty d
WHERE t.OBJECT_VALUE IS OF (Doctor_ty)
  AND t.OBJECT_VALUE.REF = REF(d);

