(set-logic BV)
(define-fun shr1 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000001))
(define-fun shr4 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shr16 ((x (_ BitVec 64))) (_ BitVec 64) (bvlshr x #x0000000000000010))
(define-fun shl1 ((x (_ BitVec 64))) (_ BitVec 64) (bvshl x #x0000000000000001))
(define-fun if0 ((x (_ BitVec 64)) (y (_ BitVec 64)) (z (_ BitVec 64))) (_ BitVec 64) (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (_ BitVec 64))) (_ BitVec 64)
    ((Start (_ BitVec 64)))
    ((Start (_ BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (shl1 Start) (shr1 Start) (shr4 Start) (shr16 Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (if0 Start Start Start)))))
(constraint (= (f #x8D7562436DC6150A) #x8DF776677FDE755A))
(constraint (= (f #x2A4F78BF6488C408) #x2AEFFFBFF6C8CC48))
(constraint (= (f #x6429893481440080) #x666B99B7C9544088))
(constraint (= (f #xCCB51FA88708942C) #xCCFF5FFA8F789D6E))
(constraint (= (f #xAB807E1C125CF136) #xABB87FFDD37DFF37))
(constraint (= (f #x100A6F6CDB359DEE) #x0000100A6F6CDB35))
(constraint (= (f #x679FA8710EDF8852) #x0000679FA8710EDF))
(constraint (= (f #x5217C446565F1E8D) #x00005217C446565F))
(constraint (= (f #x80549F730123544F) #x000080549F730123))
(constraint (= (f #x037DF15039F17906) #x0000037DF15039F1))
(constraint (= (f #x0000000000000001) #x0FFFFFFFFFFFFFFF))
(constraint (= (f #xAAAAAAAAAAAAAABD) #xAAAAAAAAAAAAAABF))
(constraint (= (f #xAAAAAAAAAAAAAAB0) #xAAAAAAAAAAAAAABB))
(constraint (= (f #xAAAAAAAAAAAAAABB) #xAAAAAAAAAAAAAABB))
(constraint (= (f #xAAAAAAAAAAAAAABE) #xAAAAAAAAAAAAAABF))
(check-synth)