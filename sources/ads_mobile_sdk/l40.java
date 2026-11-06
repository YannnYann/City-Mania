package ads_mobile_sdk;

import com.unity3d.services.core.device.MimeTypes;

/* JADX INFO: loaded from: classes.dex */
public enum l40 {
    b("definedByJavaScript"),
    c("htmlDisplay"),
    d("nativeDisplay"),
    e("video"),
    /* JADX INFO: Fake field, exist only in values array */
    EF55(MimeTypes.BASE_TYPE_AUDIO);

    public final String a;

    l40(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
