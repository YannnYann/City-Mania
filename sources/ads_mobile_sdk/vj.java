package ads_mobile_sdk;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public final class vj implements wj {
    public final ByteBuffer a;

    public vj(ByteBuffer byteBuffer) {
        this.a = byteBuffer.slice();
    }

    @Override // ads_mobile_sdk.wj
    public final long size() {
        return this.a.capacity();
    }

    @Override // ads_mobile_sdk.wj
    public final void a(MessageDigest[] messageDigestArr, long j, int i) {
        ByteBuffer byteBufferSlice;
        synchronized (this.a) {
            int i2 = (int) j;
            this.a.position(i2);
            this.a.limit(i2 + i);
            byteBufferSlice = this.a.slice();
        }
        for (MessageDigest messageDigest : messageDigestArr) {
            byteBufferSlice.position(0);
            messageDigest.update(byteBufferSlice);
        }
    }
}
