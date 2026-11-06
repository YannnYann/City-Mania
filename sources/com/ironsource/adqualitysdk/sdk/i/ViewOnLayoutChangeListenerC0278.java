package com.ironsource.adqualitysdk.sdk.i;

import android.view.View;
import android.webkit.WebView;
import com.ironsource.adqualitysdk.sdk.StringFog;
import java.util.ArrayList;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.adqualitysdk.sdk.i.օ, reason: contains not printable characters */
/* JADX INFO: loaded from: classes3.dex */
public final class ViewOnLayoutChangeListenerC0278 implements View.OnLayoutChangeListener {

    /* JADX INFO: renamed from: ﾇ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0238 f1618;

    /* JADX INFO: renamed from: ﾒ, reason: contains not printable characters */
    public final /* synthetic */ Object f1619;

    public ViewOnLayoutChangeListenerC0278(AbstractC0238 abstractC0238, Object obj) {
        this.f1618 = abstractC0238;
        this.f1619 = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        try {
            ArrayList arrayList = new ArrayList();
            this.f1618.mo973(this.f1619, arrayList);
            if (arrayList.isEmpty()) {
                return;
            }
            View viewMo970 = this.f1618.mo970(this.f1619);
            if (viewMo970 != null && !this.f1618.f1542.f1588) {
                viewMo970.removeOnLayoutChangeListener(this);
            }
            this.f1618.m1203(this.f1619, arrayList);
            this.f1618.mo995(new JSONObject(), (WebView) arrayList.get(0), this.f1619);
        } catch (Throwable th) {
            AbstractC1003.m1592(StringFog.decrypt("IgDA1Qf72wsBG+3dPPnHCggQ3g==\n", "ZHWsuXSYqW4=\n"), StringFog.decrypt("pb3gDTuVZGHAoPwuKMxiepSM+gMn0mg=\n", "4M+SYkm1DQ8=\n"), th, false);
        }
    }
}
