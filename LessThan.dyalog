 LessThan←{ ⍝ < monadic promote
     0::∆SIGNAL ⎕DMX
     0≠⎕NC'⍺':⍺<⍵
     ⍵⍴⍨1,⍴⍵
 }
