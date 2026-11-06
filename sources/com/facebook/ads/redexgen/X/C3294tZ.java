package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.JavascriptInterface;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.tZ, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C3294tZ {
    public static String[] A07 = {"FOFLIt4izaDLaQDOMIXk8qYNT283z5pM", "oiToeohcscvINDKXEsytRf9HFldaqPXB", "4ipPd9h88IiL3d99rWL92oIsRR1k6HBA", "hPx", "0GhefH5NzI2ypbPnqUG75Cq8VmhNX1", "2b6", "snO0JYp8WiAdMwbOevXppfTs6iFhTSIS", "awSLBYFe7Md8cHgboMT9P3Pgh1wlsZGE"};
    public final String A00 = C3294tZ.class.getSimpleName();
    public final WeakReference<AtomicBoolean> A01;
    public final WeakReference<AtomicBoolean> A02;
    public final WeakReference<InterfaceC2325df> A03;
    public final WeakReference<InterfaceC3295ta> A04;
    public final WeakReference<C2224c2> A05;
    public final WeakReference<C1579Ev> A06;

    public C3294tZ(C1579Ev c1579Ev, InterfaceC3295ta interfaceC3295ta, C2224c2 c2224c2, AtomicBoolean atomicBoolean, AtomicBoolean atomicBoolean2, C1643Hi c1643Hi) {
        this.A06 = new WeakReference<>(c1579Ev);
        this.A04 = new WeakReference<>(interfaceC3295ta);
        this.A05 = new WeakReference<>(c2224c2);
        this.A01 = new WeakReference<>(atomicBoolean);
        this.A02 = new WeakReference<>(atomicBoolean2);
        this.A03 = new WeakReference<>(c1643Hi.A0F());
    }

    private InterfaceC2325df A00() {
        InterfaceC2325df funnel = this.A03.get();
        if (funnel == null) {
            return new C1782Mx();
        }
        return funnel;
    }

    @JavascriptInterface
    public void alert(String str) {
        Log.e(this.A00, str);
    }

    @JavascriptInterface
    public String getAnalogInfo() {
        return AbstractC3077q4.A01(C2821lp.A02());
    }

    @JavascriptInterface
    public void logFunnel(int i, String str) {
        A00().AMB(i, str);
    }

    @JavascriptInterface
    public void onMainAssetLoaded() {
        A00().AMC();
        if (this.A06.get() == null || this.A01.get() == null || this.A02.get() == null) {
            return;
        }
        boolean z = this.A02.get().get();
        String[] strArr = A07;
        if (strArr[4].length() == strArr[5].length()) {
            throw new RuntimeException();
        }
        A07[1] = "xXjDpbk5Vvc7CvrBd08NYXaJ46SIZN7q";
        if (z) {
            this.A01.get().set(true);
            A00().AMD();
            if (this.A06.get().isShown()) {
                A00().AME();
                new Handler(Looper.getMainLooper()).post(new C1581Ex(this.A05));
            }
            InterfaceC3295ta interfaceC3295ta = this.A04.get();
            if (interfaceC3295ta != null) {
                new Handler(Looper.getMainLooper()).post(new RunnableC3293tY(this, interfaceC3295ta));
            }
        }
    }

    @JavascriptInterface
    public void onPageInitialized() {
        C1579Ev webView = this.A06.get();
        if (webView == null || webView.A0J()) {
            A00().AMF(true);
            return;
        }
        InterfaceC3295ta listener = this.A04.get();
        if (listener == null) {
            A00().AMF(true);
        } else {
            A00().AMF(false);
            listener.AGD();
        }
    }
}
