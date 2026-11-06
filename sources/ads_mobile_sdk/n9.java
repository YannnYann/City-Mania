package ads_mobile_sdk;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class n9 {
    public final bj2 a;
    public final WebView b;
    public final ArrayList c = new ArrayList();
    public final HashMap d = new HashMap();
    public final String e = null;
    public final String f;
    public final String g;
    public final o9 h;

    public n9(bj2 bj2Var, WebView webView, String str, String str2, o9 o9Var) {
        this.a = bj2Var;
        this.b = webView;
        this.h = o9Var;
        this.g = str;
        this.f = str2;
    }

    public static n9 a(bj2 bj2Var, WebView webView, String str, String str2) {
        if (bj2Var == null) {
            throw new IllegalArgumentException("Partner is null");
        }
        if (webView != null) {
            if (str2 != null && str2.length() > 256) {
                throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
            }
            return new n9(bj2Var, webView, str, str2, o9.b);
        }
        throw new IllegalArgumentException("WebView is null");
    }

    public static n9 b(bj2 bj2Var, WebView webView, String str, String str2) {
        if (bj2Var == null) {
            throw new IllegalArgumentException("Partner is null");
        }
        if (webView != null) {
            if (str2 != null && str2.length() > 256) {
                throw new IllegalArgumentException("CustomReferenceData is greater than 256 characters");
            }
            return new n9(bj2Var, webView, str, str2, o9.c);
        }
        throw new IllegalArgumentException("WebView is null");
    }

    public final WebView d() {
        return this.b;
    }

    public final String c() {
        return this.e;
    }

    public final o9 a() {
        return this.h;
    }

    public final Map b() {
        return Collections.unmodifiableMap(this.d);
    }
}
