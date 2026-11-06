package ads_mobile_sdk;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class ur0 implements vr0 {
    public final tw1 a;

    public ur0(iv2 iv2Var) {
        this.a = iv2Var;
    }

    @Override // ads_mobile_sdk.vr0
    public final Object a() {
        return this.a;
    }

    @Override // ads_mobile_sdk.vr0
    public final Object a(FileInputStream fileInputStream) {
        try {
            return this.a.getParserForType().a(fileInputStream, er0.a());
        } catch (np1 e) {
            throw new tr0("Cannot read proto.", e);
        }
    }

    @Override // ads_mobile_sdk.vr0
    public final void a(Object obj, FileOutputStream fileOutputStream) throws IOException {
        ((tw1) obj).writeTo(fileOutputStream);
    }
}
