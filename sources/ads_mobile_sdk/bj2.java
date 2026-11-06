package ads_mobile_sdk;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes.dex */
public final class bj2 {
    public final String a;
    public final String b;

    public bj2(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static bj2 a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            if (!TextUtils.isEmpty(str2)) {
                return new bj2(str, str2);
            }
            throw new IllegalArgumentException("Version is null or empty");
        }
        throw new IllegalArgumentException("Name is null or empty");
    }
}
