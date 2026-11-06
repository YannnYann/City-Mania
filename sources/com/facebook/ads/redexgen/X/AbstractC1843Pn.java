package com.facebook.ads.redexgen.X;

import com.facebook.ads.androidx.media3.common.Metadata;
import java.nio.ByteBuffer;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Pn, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public abstract class AbstractC1843Pn implements InterfaceC2081Zi {
    public abstract Metadata A0R(C14218e c14218e, ByteBuffer byteBuffer);

    @Override // com.facebook.ads.redexgen.X.InterfaceC2081Zi
    public final Metadata A6N(C14218e c14218e) {
        ByteBuffer byteBuffer = (ByteBuffer) AbstractC1747Ln.A01(c14218e.A02);
        AbstractC1747Ln.A07(byteBuffer.position() == 0 && byteBuffer.hasArray() && byteBuffer.arrayOffset() == 0);
        if (c14218e.A04()) {
            return null;
        }
        return A0R(c14218e, byteBuffer);
    }
}
