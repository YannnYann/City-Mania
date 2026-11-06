package ads_mobile_sdk;

import com.google.common.io.ByteStreams;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class sr0 implements vr0 {
    public final byte[] a;

    @Override // ads_mobile_sdk.vr0
    public final Object a() {
        return this.a;
    }

    @Override // ads_mobile_sdk.vr0
    public final Object a(FileInputStream fileInputStream) {
        try {
            return ByteStreams.toByteArray(fileInputStream);
        } catch (IOException e) {
            throw new tr0("Cannot read bytes.", e);
        }
    }

    @Override // ads_mobile_sdk.vr0
    public final void a(Object obj, FileOutputStream fileOutputStream) throws IOException {
        fileOutputStream.write((byte[]) obj);
    }

    public sr0(byte[] bArr) {
        this.a = bArr;
    }
}
