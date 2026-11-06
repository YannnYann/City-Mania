package ads_mobile_sdk;

import com.ironsource.C3522b4;
import com.ironsource.C3647i2;

/* JADX INFO: loaded from: classes.dex */
public enum x91 {
    b("definedByJavaScript"),
    c("unspecified"),
    /* JADX INFO: Fake field, exist only in values array */
    EF2(C3522b4.i.r),
    d("beginToRender"),
    e("onePixel"),
    /* JADX INFO: Fake field, exist only in values array */
    EF65("viewable"),
    /* JADX INFO: Fake field, exist only in values array */
    EF75("audible"),
    /* JADX INFO: Fake field, exist only in values array */
    EF85(C3647i2.d);

    public final String a;

    x91(String str) {
        this.a = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.a;
    }
}
