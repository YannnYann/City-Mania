package com.facebook.ads.redexgen.X;

import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.90, reason: invalid class name */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class AnonymousClass90 extends SK {
    public int[] A00;
    public int[] A01;

    @Override // com.facebook.ads.redexgen.X.SK
    public final LX A09(LX lx) throws LY {
        int[] iArr = this.A01;
        if (iArr == null) {
            return LX.A06;
        }
        if (lx.A02 == 2) {
            int i = lx.A01 != iArr.length ? 1 : 0;
            int i2 = 0;
            while (i2 < iArr.length) {
                int i3 = iArr[i2];
                if (i3 < lx.A01) {
                    i |= i3 != i2 ? 1 : 0;
                    i2++;
                } else {
                    throw new LY(lx);
                }
            }
            if (i != 0) {
                return new LX(lx.A03, iArr.length, 2);
            }
            return LX.A06;
        }
        throw new LY(lx);
    }

    @Override // com.facebook.ads.redexgen.X.SK
    public final void A0A() {
        this.A00 = this.A01;
    }

    public final void A0C(int[] iArr) {
        this.A01 = iArr;
    }

    @Override // com.facebook.ads.redexgen.X.LZ
    public final void AIU(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) AbstractC1747Ln.A01(this.A00);
        int iPosition = byteBuffer.position();
        int outputSize = byteBuffer.limit();
        int position = outputSize - iPosition;
        ByteBuffer byteBufferA00 = A00(this.A06.A00 * (position / this.A05.A00));
        while (iPosition < outputSize) {
            for (int i : iArr) {
                byteBufferA00.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.A05.A00;
        }
        byteBuffer.position(outputSize);
        byteBufferA00.flip();
    }
}
