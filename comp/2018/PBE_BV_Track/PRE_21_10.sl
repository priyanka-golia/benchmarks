
(set-logic BV)

(define-fun ehad ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000001))
(define-fun arba ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000004))
(define-fun shesh ((x (BitVec 64))) (BitVec 64) (bvlshr x #x0000000000000010))
(define-fun smol ((x (BitVec 64))) (BitVec 64) (bvshl x #x0000000000000001))
(define-fun im ((x (BitVec 64)) (y (BitVec 64)) (z (BitVec 64))) (BitVec 64) (ite (= x #x0000000000000001) y z))

(synth-fun f ( (x (BitVec 64))) (BitVec 64)
(

(Start (BitVec 64) (#x0000000000000000 #x0000000000000001 x (bvnot Start)
                    (smol Start)
 		    (ehad Start)
		    (arba Start)
		    (shesh Start)
		    (bvand Start Start)
		    (bvor Start Start)
		    (bvxor Start Start)
		    (bvadd Start Start)
		    (im Start Start Start)
 ))
)
)


(constraint (= (f #xde63ae7ee7992973) #x798eb9fb9e64a5cc))
(constraint (= (f #xe4ad7ac0353dbe4c) #x92b5eb00d4f6f930))
(constraint (= (f #x194981e790292aac) #x6526079e40a4aab0))
(constraint (= (f #xd931e9eca0478582) #x64c7a7b2811e1608))
(constraint (= (f #xe59be1ccbe526633) #x0000000000000002))
(constraint (= (f #x5164d0772bbe47e5) #x0000000000000002))
(constraint (= (f #x21dc6d394818442e) #x21dc6d3948184430))
(constraint (= (f #x39ca9702b62bade0) #xe72a5c0ad8aeb780))
(constraint (= (f #x18e54e0623a2ae33) #x0000000000000002))
(constraint (= (f #xce9d217e849d93cd) #x3a7485fa12764f34))
(check-synth)