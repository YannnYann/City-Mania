package com.ironsource;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.webkit.WebView;
import com.ironsource.C3522b4;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public final class H8 {
    private final String a;
    private final String b;
    private final String c;
    private final String d;
    private final Drawable e;
    private final WebView f;
    private final View g;

    public static final class b {
        private final a a;

        public static final class a {
            private final String a;
            private final String b;
            private final String c;
            private final String d;
            private final Result<Drawable> e;
            private final Result<WebView> f;
            private final View g;

            /* JADX WARN: Multi-variable type inference failed */
            public a(String str, String str2, String str3, String str4, Result<? extends Drawable> result, Result<? extends WebView> result2, View privacyIcon) {
                Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
                this.a = str;
                this.b = str2;
                this.c = str3;
                this.d = str4;
                this.e = result;
                this.f = result2;
                this.g = privacyIcon;
            }

            public final String a() {
                return this.a;
            }

            public final String b() {
                return this.b;
            }

            public final String c() {
                return this.c;
            }

            public final String d() {
                return this.d;
            }

            public final Result<Drawable> e() {
                return this.e;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof a)) {
                    return false;
                }
                a aVar = (a) obj;
                return Intrinsics.areEqual(this.a, aVar.a) && Intrinsics.areEqual(this.b, aVar.b) && Intrinsics.areEqual(this.c, aVar.c) && Intrinsics.areEqual(this.d, aVar.d) && Intrinsics.areEqual(this.e, aVar.e) && Intrinsics.areEqual(this.f, aVar.f) && Intrinsics.areEqual(this.g, aVar.g);
            }

            public final Result<WebView> f() {
                return this.f;
            }

            public final View g() {
                return this.g;
            }

            public final H8 h() {
                Drawable drawable;
                String str = this.a;
                String str2 = this.b;
                String str3 = this.c;
                String str4 = this.d;
                Result<Drawable> result = this.e;
                WebView webView = null;
                if (result != null) {
                    Object objM2768unboximpl = result.m2768unboximpl();
                    if (Result.m2765isFailureimpl(objM2768unboximpl)) {
                        objM2768unboximpl = null;
                    }
                    drawable = (Drawable) objM2768unboximpl;
                } else {
                    drawable = null;
                }
                Result<WebView> result2 = this.f;
                if (result2 != null) {
                    Object objM2768unboximpl2 = result2.m2768unboximpl();
                    webView = (WebView) (Result.m2765isFailureimpl(objM2768unboximpl2) ? null : objM2768unboximpl2);
                }
                return new H8(str, str2, str3, str4, drawable, webView, this.g);
            }

            public int hashCode() {
                String str = this.a;
                int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
                String str2 = this.b;
                int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
                String str3 = this.c;
                int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
                String str4 = this.d;
                int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
                Result<Drawable> result = this.e;
                int iM2764hashCodeimpl = (iHashCode4 + (result == null ? 0 : Result.m2764hashCodeimpl(result.m2768unboximpl()))) * 31;
                Result<WebView> result2 = this.f;
                return ((iM2764hashCodeimpl + (result2 != null ? Result.m2764hashCodeimpl(result2.m2768unboximpl()) : 0)) * 31) + this.g.hashCode();
            }

            public final String i() {
                return this.b;
            }

            public final String j() {
                return this.c;
            }

            public final String k() {
                return this.d;
            }

            public final Result<Drawable> l() {
                return this.e;
            }

            public final Result<WebView> m() {
                return this.f;
            }

            public final View n() {
                return this.g;
            }

            public final String o() {
                return this.a;
            }

            public String toString() {
                return "Data(title=" + this.a + ", advertiser=" + this.b + ", body=" + this.c + ", cta=" + this.d + ", icon=" + this.e + ", media=" + this.f + ", privacyIcon=" + this.g + ")";
            }

            public final a a(String str, String str2, String str3, String str4, Result<? extends Drawable> result, Result<? extends WebView> result2, View privacyIcon) {
                Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
                return new a(str, str2, str3, str4, result, result2, privacyIcon);
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ a a(a aVar, String str, String str2, String str3, String str4, Result result, Result result2, View view, int i, Object obj) {
                if ((i & 1) != 0) {
                    str = aVar.a;
                }
                if ((i & 2) != 0) {
                    str2 = aVar.b;
                }
                if ((i & 4) != 0) {
                    str3 = aVar.c;
                }
                if ((i & 8) != 0) {
                    str4 = aVar.d;
                }
                if ((i & 16) != 0) {
                    result = aVar.e;
                }
                if ((i & 32) != 0) {
                    result2 = aVar.f;
                }
                if ((i & 64) != 0) {
                    view = aVar.g;
                }
                Result result3 = result2;
                View view2 = view;
                Result result4 = result;
                String str5 = str3;
                return aVar.a(str, str2, str5, str4, result4, result3, view2);
            }
        }

        public b(a data) {
            Intrinsics.checkNotNullParameter(data, "data");
            this.a = data;
        }

        public final a a() {
            return this.a;
        }

        public final JSONObject b() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            if (this.a.o() != null) {
                a(jSONObject, C3522b4.i.D0);
            }
            if (this.a.i() != null) {
                a(jSONObject, C3522b4.i.F0);
            }
            if (this.a.j() != null) {
                a(jSONObject, C3522b4.i.E0);
            }
            if (this.a.k() != null) {
                a(jSONObject, C3522b4.i.G0);
            }
            Result<Drawable> resultL = this.a.l();
            if (resultL != null) {
                a(jSONObject, C3522b4.i.H0, resultL.m2768unboximpl());
            }
            Result<WebView> resultM = this.a.m();
            if (resultM != null) {
                a(jSONObject, C3522b4.i.I0, resultM.m2768unboximpl());
            }
            return jSONObject;
        }

        private static final void a(JSONObject jSONObject, String str) throws JSONException {
            jSONObject.put(str, new JSONObject().put("success", true));
        }

        private static final <T> void a(JSONObject jSONObject, String str, Object obj) throws JSONException {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("success", Result.m2766isSuccessimpl(obj));
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(obj);
            if (thM2763exceptionOrNullimpl != null) {
                String message = thM2763exceptionOrNullimpl.getMessage();
                if (message == null) {
                    message = "unknown reason";
                }
                jSONObject2.put("reason", message);
            }
            Unit unit = Unit.INSTANCE;
            jSONObject.put(str, jSONObject2);
        }
    }

    public H8(String str, String str2, String str3, String str4, Drawable drawable, WebView webView, View privacyIcon) {
        Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = drawable;
        this.f = webView;
        this.g = privacyIcon;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.c;
    }

    public final String d() {
        return this.d;
    }

    public final Drawable e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof H8)) {
            return false;
        }
        H8 h8 = (H8) obj;
        return Intrinsics.areEqual(this.a, h8.a) && Intrinsics.areEqual(this.b, h8.b) && Intrinsics.areEqual(this.c, h8.c) && Intrinsics.areEqual(this.d, h8.d) && Intrinsics.areEqual(this.e, h8.e) && Intrinsics.areEqual(this.f, h8.f) && Intrinsics.areEqual(this.g, h8.g);
    }

    public final WebView f() {
        return this.f;
    }

    public final View g() {
        return this.g;
    }

    public final String h() {
        return this.b;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.d;
        int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Drawable drawable = this.e;
        int iHashCode5 = (iHashCode4 + (drawable == null ? 0 : drawable.hashCode())) * 31;
        WebView webView = this.f;
        return ((iHashCode5 + (webView != null ? webView.hashCode() : 0)) * 31) + this.g.hashCode();
    }

    public final String i() {
        return this.c;
    }

    public final String j() {
        return this.d;
    }

    public final Drawable k() {
        return this.e;
    }

    public final WebView l() {
        return this.f;
    }

    public final View m() {
        return this.g;
    }

    public final String n() {
        return this.a;
    }

    public String toString() {
        return "ISNNativeAdData(title=" + this.a + ", advertiser=" + this.b + ", body=" + this.c + ", cta=" + this.d + ", icon=" + this.e + ", mediaView=" + this.f + ", privacyIcon=" + this.g + ")";
    }

    public final H8 a(String str, String str2, String str3, String str4, Drawable drawable, WebView webView, View privacyIcon) {
        Intrinsics.checkNotNullParameter(privacyIcon, "privacyIcon");
        return new H8(str, str2, str3, str4, drawable, webView, privacyIcon);
    }

    public static /* synthetic */ H8 a(H8 h8, String str, String str2, String str3, String str4, Drawable drawable, WebView webView, View view, int i, Object obj) {
        if ((i & 1) != 0) {
            str = h8.a;
        }
        if ((i & 2) != 0) {
            str2 = h8.b;
        }
        if ((i & 4) != 0) {
            str3 = h8.c;
        }
        if ((i & 8) != 0) {
            str4 = h8.d;
        }
        if ((i & 16) != 0) {
            drawable = h8.e;
        }
        if ((i & 32) != 0) {
            webView = h8.f;
        }
        if ((i & 64) != 0) {
            view = h8.g;
        }
        WebView webView2 = webView;
        View view2 = view;
        Drawable drawable2 = drawable;
        String str5 = str3;
        return h8.a(str, str2, str5, str4, drawable2, webView2, view2);
    }

    public static final class a {
        private final InterfaceC3466a9 a;
        private final InterfaceC3519b1 b;

        public a(InterfaceC3466a9 imageLoader, InterfaceC3519b1 adViewManagement) {
            Intrinsics.checkNotNullParameter(imageLoader, "imageLoader");
            Intrinsics.checkNotNullParameter(adViewManagement, "adViewManagement");
            this.a = imageLoader;
            this.b = adViewManagement;
        }

        private final Result<Drawable> b(String str) {
            if (str == null) {
                return null;
            }
            return Result.m2759boximpl(this.a.a(str));
        }

        public final b a(Context activityContext, JSONObject json) {
            Intrinsics.checkNotNullParameter(activityContext, "activityContext");
            Intrinsics.checkNotNullParameter(json, "json");
            JSONObject jSONObjectOptJSONObject = json.optJSONObject(C3522b4.i.D0);
            String strB = jSONObjectOptJSONObject != null ? I8.b(jSONObjectOptJSONObject, C3522b4.i.K0) : null;
            JSONObject jSONObjectOptJSONObject2 = json.optJSONObject(C3522b4.i.F0);
            String strB2 = jSONObjectOptJSONObject2 != null ? I8.b(jSONObjectOptJSONObject2, C3522b4.i.K0) : null;
            JSONObject jSONObjectOptJSONObject3 = json.optJSONObject(C3522b4.i.E0);
            String strB3 = jSONObjectOptJSONObject3 != null ? I8.b(jSONObjectOptJSONObject3, C3522b4.i.K0) : null;
            JSONObject jSONObjectOptJSONObject4 = json.optJSONObject(C3522b4.i.G0);
            String strB4 = jSONObjectOptJSONObject4 != null ? I8.b(jSONObjectOptJSONObject4, C3522b4.i.K0) : null;
            JSONObject jSONObjectOptJSONObject5 = json.optJSONObject(C3522b4.i.H0);
            String strB5 = jSONObjectOptJSONObject5 != null ? I8.b(jSONObjectOptJSONObject5, "url") : null;
            JSONObject jSONObjectOptJSONObject6 = json.optJSONObject(C3522b4.i.I0);
            String strB6 = jSONObjectOptJSONObject6 != null ? I8.b(jSONObjectOptJSONObject6, "adViewId") : null;
            JSONObject jSONObjectOptJSONObject7 = json.optJSONObject(C3522b4.i.J0);
            return new b(new b.a(strB, strB2, strB3, strB4, b(strB5), a(strB6), Gd.a.a(activityContext, jSONObjectOptJSONObject7 != null ? I8.b(jSONObjectOptJSONObject7, "url") : null, this.a)));
        }

        private final Result<WebView> a(String str) {
            if (str == null) {
                return null;
            }
            L8 l8A = this.b.a(str);
            WebView presentingView = l8A != null ? l8A.getPresentingView() : null;
            if (presentingView == null) {
                Result.Companion companion = Result.Companion;
                return Result.m2759boximpl(Result.m2760constructorimpl(ResultKt.createFailure(new Exception("missing adview for id: '" + str + "'"))));
            }
            return Result.m2759boximpl(Result.m2760constructorimpl(presentingView));
        }
    }
}
