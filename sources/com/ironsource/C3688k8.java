package com.ironsource;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.ironsource.C3522b4;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.ironsource.k8, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public class C3688k8 extends FrameLayout implements L8 {
    private static final String b = "IronSourceAdContainer";
    private C3778p8 a;

    /* JADX INFO: renamed from: com.ironsource.k8$a */
    public class a implements Runnable {
        final /* synthetic */ String a;
        final /* synthetic */ String b;

        public a(String str, String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            C3688k8 c3688k8 = C3688k8.this;
            c3688k8.removeView(c3688k8.a.getPresentingView());
            C3688k8.this.a.a(this.a, this.b);
            C3688k8.this.a = null;
        }
    }

    public C3688k8(Context context) {
        super(context);
    }

    private void b() throws Exception {
        JSONObject jSONObject;
        try {
            jSONObject = this.a.b().a().getJSONObject(C3670j8.p).getJSONObject(C3670j8.s);
        } catch (Exception e) {
            C3813r4.d().a(e);
            jSONObject = new JSONObject();
        }
        jSONObject.put("adViewId", this.a.a());
        this.a.b().a(C3522b4.h.S, jSONObject);
    }

    public void a() throws Exception {
        C3778p8 c3778p8 = this.a;
        if (c3778p8 == null || c3778p8.b() == null) {
            throw new Exception("mAdPresenter or mAdPresenter.getAdViewLogic() are null");
        }
        b();
    }

    @Override // com.ironsource.L8
    public void c(JSONObject jSONObject, String str, String str2) throws JSONException {
        this.a.c(jSONObject, str, str2);
    }

    @Override // com.ironsource.L8
    public WebView getPresentingView() {
        return this.a.getPresentingView();
    }

    public C3653i8 getSize() {
        C3778p8 c3778p8 = this.a;
        return c3778p8 != null ? c3778p8.c() : new C3653i8();
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
        Logger.i(b, "onVisibilityChanged: " + i);
        C3778p8 c3778p8 = this.a;
        if (c3778p8 == null) {
            return;
        }
        try {
            c3778p8.b().a(C3670j8.k, i, isShown());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        Logger.i(b, "onWindowVisibilityChanged: " + i);
        C3778p8 c3778p8 = this.a;
        if (c3778p8 == null) {
            return;
        }
        try {
            c3778p8.b().a(C3670j8.l, i, isShown());
        } catch (Exception e) {
            C3813r4.d().a(e);
            IronLog.INTERNAL.error(e.toString());
        }
    }

    public C3688k8(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public C3688k8(C3778p8 c3778p8, Context context) {
        super(context);
        setLayoutParams(new FrameLayout.LayoutParams(c3778p8.c().c(), c3778p8.c().a()));
        this.a = c3778p8;
        addView(c3778p8.getPresentingView());
    }

    @Override // com.ironsource.L8
    public void a(JSONObject jSONObject, String str, String str2) {
        this.a.a(jSONObject, str, str2);
    }

    @Override // com.ironsource.L8
    public synchronized void a(String str, String str2) {
        C3778p8 c3778p8 = this.a;
        if (c3778p8 != null && c3778p8.b() != null && this.a.getPresentingView() != null) {
            this.a.b().e();
            V7.a.d(new a(str, str2));
        }
    }

    @Override // com.ironsource.L8
    public void a(String str, String str2, String str3) {
        C3778p8 c3778p8 = this.a;
        if (c3778p8 == null) {
            return;
        }
        c3778p8.a(str, str2, str3);
    }

    @Override // com.ironsource.L8
    public void b(JSONObject jSONObject, String str, String str2) {
        this.a.b(jSONObject, str, str2);
    }
}
