(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64)
    (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64)
    (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64)
    (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64)
    (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64)
    (ite (= x #x0000000000000001) y z))
(synth-fun f ((x (BitVec 64))) (BitVec 64)
    ((Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start) (smol Start) (ehad Start) (arba Start) (shesh Start) (bvand Start Start) (bvor Start Start) (bvxor Start Start) (bvadd Start Start) (im Start Start Start)))))

(constraint (= (f #x7EB08FAC77E052EB) #xFFFFF00000000000))
(constraint (= (f #x6B0D381613601761) #xFFFFF00000000000))
(constraint (= (f #x55F81E4A2C3C712F) #xFFFFF00000000000))
(constraint (= (f #x8F92652A4DB3E79D) #xFFFFF00000000000))
(constraint (= (f #x89FB8907D27272FF) #xFFFFF00000000000))
(constraint (= (f #x3D059AE3A1D06D76) #x00000FC2FA651C5E))
(constraint (= (f #x5C34B50A41B85D30) #x00000FA3CB4AF5BE))
(constraint (= (f #x41A9E234AFDDF504) #x00000FBE561DCB50))
(constraint (= (f #x7A1327CBCA0D9478) #x00000F85ECD83435))
(constraint (= (f #x9CF760CE56E599F8) #x00000F63089F31A9))
(constraint (= (f #x0000000000000000) #x00000FFFFFFFFFFF))
(constraint (= (f #x17A8955637FB63E8) #x00000FE8576AA9C8))
(constraint (= (f #x7EF4B8E5C674D69F) #xFFFFF00000000000))
(constraint (= (f #x1F8FDF52DCE95B1E) #x00000FE07020AD23))
(constraint (= (f #x9FBD56D2B5EC5CCA) #x00000F6042A92D4A))
(constraint (= (f #x8EDEF97A7B716104) #x00000F7121068584))
(constraint (= (f #x6A9147E0A9455B2A) #x00000F956EB81F56))
(constraint (= (f #xE194CD17B2927609) #xFFFFF00000000000))
(constraint (= (f #xD0713F2DD33E23FE) #x00000F2F8EC0D22C))
(constraint (= (f #x0F1B11C294E37E21) #xFFFFF00000000000))
(constraint (= (f #xE809B3DE97C17F1B) #xFFFFF00000000000))
(constraint (= (f #x0000000000000000) #x00000FFFFFFFFFFF))

(check-synth)
