package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.io.EOFException;
import java.io.IOException;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class QA implements ZP {
    public final byte[] A00 = new byte[4096];

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ int AK7(KR kr, int i, boolean z) {
        return ZM.A00(this, kr, i, z);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final /* synthetic */ void AK9(C1769Mk c1769Mk, int i) {
        ZM.A01(this, c1769Mk, i);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void A7E(VC vc) {
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final int AK8(KR kr, int i, boolean z, int i2) throws IOException {
        int bytesSkipped = kr.read(this.A00, 0, Math.min(this.A00.length, i));
        if (bytesSkipped == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return bytesSkipped;
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKA(C1769Mk c1769Mk, int i, int i2) {
        c1769Mk.A0g(i);
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    public final void AKC(long j, int i, int i2, int i3, ZN zn) {
    }

    @Override // com.facebook.ads.redexgen.X.ZP
    @MetaExoPlayerCustomization
    public final void ALz(Uri uri) {
    }
}
