package ads_mobile_sdk;

import com.google.common.io.BaseEncoding;

/* JADX INFO: loaded from: classes.dex */
public abstract class hi {
    public static BaseEncoding a(boolean z) {
        if (z) {
            return BaseEncoding.base64Url().omitPadding();
        }
        return BaseEncoding.base64();
    }

    public static byte[] a(String str, boolean z) {
        byte[] bArrDecode = a(z).decode(str);
        if (bArrDecode.length != 0 || str.length() <= 0) {
            return bArrDecode;
        }
        throw new IllegalArgumentException("Unable to decode ".concat(str));
    }
}
