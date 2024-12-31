package waste

import "crypto/rand"

var Buffers []*MiBObject
var GBuffers []*GiBObject

const (
	KiB = 1024
	MiB = 1024 * KiB
	GiB = 1024 * MiB
)

type MiBObject struct {
	B [MiB]byte
}
type GiBObject struct {
	B [GiB]byte
}

func Memory(mib int) {
	Buffers = make([]*MiBObject, 0, mib)
	for mib > 0 {
		o := new(MiBObject)
		rand.Read(o.B[:])
		Buffers = append(Buffers, o)
		mib -= 1
	}
}
