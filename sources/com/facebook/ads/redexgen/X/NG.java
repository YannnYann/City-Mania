package com.facebook.ads.redexgen.X;

import java.io.ByteArrayInputStream;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class NG implements InterfaceC2317dX {
    public ByteArrayInputStream A00;
    public final byte[] A01;

    public NG(byte[] bArr) {
        this.A01 = bArr;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2317dX
    public final void AHw(int i) throws NE {
        this.A00 = new ByteArrayInputStream(this.A01);
        this.A00.skip(i);
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2317dX
    public final void close() throws NE {
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2317dX
    public final int length() throws NE {
        return this.A01.length;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2317dX
    public final int read(byte[] bArr) throws NE {
        return this.A00.read(bArr, 0, bArr.length);
    }
}
