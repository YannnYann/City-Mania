package com.vungle.ads.internal.platform;

import android.content.Context;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.ProxyInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import com.ironsource.C3647i2;
import com.ironsource.X3;
import java.net.ConnectException;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.cert.CertificateException;
import java.util.Iterator;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public abstract class e {
    /* JADX WARN: Removed duplicated region for block: B:11:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a() {
        /*
            Method dump skipped, instruction units count: 212
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.platform.e.a():boolean");
    }

    public static String b(Context context) {
        Object objM2760constructorimpl;
        Intrinsics.checkNotNullParameter(context, "context");
        if (Build.VERSION.SDK_INT < 28) {
            return "n/a";
        }
        try {
            Result.Companion companion = Result.Companion;
            String string = Settings.Global.getString(context.getContentResolver(), "private_dns_mode");
            if (string == null) {
                string = "opportunistic";
            } else {
                Intrinsics.checkNotNullExpressionValue(string, "Settings.Global.getStrin…mode\") ?: \"opportunistic\"");
            }
            if (Intrinsics.areEqual(string, "hostname")) {
                String string2 = Settings.Global.getString(context.getContentResolver(), "private_dns_specifier");
                if (string2 == null) {
                    string2 = "";
                } else {
                    Intrinsics.checkNotNullExpressionValue(string2, "Settings.Global.getStrin…ate_dns_specifier\") ?: \"\"");
                }
                string = "hostname(" + string2 + ')';
            }
            objM2760constructorimpl = Result.m2760constructorimpl(string);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = "unknown";
        }
        return (String) objM2760constructorimpl;
    }

    public static int c(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("sensor");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.hardware.SensorManager");
        return ((SensorManager) systemService).getSensorList(-1).size();
    }

    public static boolean e(Context context) {
        Object objM2760constructorimpl;
        boolean zA;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.Companion;
            Object systemService = context.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null) {
                zA = false;
            } else {
                Intrinsics.checkNotNullExpressionValue(activeNetwork, "cm.activeNetwork ?: return@runCatching false");
                LinkProperties linkProperties = connectivityManager.getLinkProperties(activeNetwork);
                zA = a(linkProperties != null ? linkProperties.getHttpProxy() : null);
            }
            objM2760constructorimpl = Result.m2760constructorimpl(Boolean.valueOf(zA));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = bool;
        }
        return ((Boolean) objM2760constructorimpl).booleanValue();
    }

    public static boolean f(Context context) {
        Object objM2760constructorimpl;
        boolean z = true;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.Companion;
            Object systemService = context.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network[] allNetworks = connectivityManager.getAllNetworks();
            Intrinsics.checkNotNullExpressionValue(allNetworks, "cm.allNetworks");
            int length = allNetworks.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(allNetworks[i]);
                    if (networkCapabilities != null && networkCapabilities.hasTransport(4)) {
                        break;
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
            objM2760constructorimpl = Result.m2760constructorimpl(Boolean.valueOf(z));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        Boolean bool = Boolean.FALSE;
        if (Result.m2765isFailureimpl(objM2760constructorimpl)) {
            objM2760constructorimpl = bool;
        }
        return ((Boolean) objM2760constructorimpl).booleanValue();
    }

    public static boolean d(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Settings.canDrawOverlays(context);
    }

    public static boolean a(ProxyInfo proxyInfo) {
        if (proxyInfo == null) {
            return false;
        }
        String host = proxyInfo.getHost();
        return (host != null && host.length() > 0 && proxyInfo.getPort() > 0) || (proxyInfo.getPacFileUrl() != null && !Intrinsics.areEqual(proxyInfo.getPacFileUrl(), Uri.EMPTY));
    }

    public static String a(Context context) {
        Object objM2760constructorimpl;
        String string;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            Result.Companion companion = Result.Companion;
            Object systemService = context.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork == null) {
                string = "none";
            } else {
                Intrinsics.checkNotNullExpressionValue(activeNetwork, "cm.activeNetwork ?: return@runCatching \"none\"");
                NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
                if (networkCapabilities == null) {
                    string = "unknown";
                } else {
                    Intrinsics.checkNotNullExpressionValue(networkCapabilities, "cm.getNetworkCapabilitie…urn@runCatching \"unknown\"");
                    StringBuilder sb = new StringBuilder();
                    if (networkCapabilities.hasTransport(1)) {
                        sb.append(X3.b);
                    } else if (networkCapabilities.hasTransport(0)) {
                        sb.append(X3.g);
                    } else if (networkCapabilities.hasTransport(3)) {
                        sb.append(X3.e);
                    } else {
                        sb.append(C3647i2.d);
                    }
                    if (networkCapabilities.hasTransport(4)) {
                        sb.append("+vpn");
                    }
                    if (connectivityManager.isActiveNetworkMetered()) {
                        sb.append("+metered");
                    }
                    string = sb.toString();
                    Intrinsics.checkNotNullExpressionValue(string, "StringBuilder().apply(builderAction).toString()");
                }
            }
            objM2760constructorimpl = Result.m2760constructorimpl(string);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            objM2760constructorimpl = Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
        return (String) (Result.m2765isFailureimpl(objM2760constructorimpl) ? "unknown" : objM2760constructorimpl);
    }

    public static String a(Throwable th) {
        boolean z;
        if (th == null) {
            return "none";
        }
        Iterator it = SequencesKt__SequencesKt.generateSequence(th, d.a).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (((Throwable) it.next()) instanceof CertificateException) {
                z = true;
                break;
            }
        }
        boolean z2 = th instanceof SSLHandshakeException;
        if (z2 && z) {
            return "SSL_CERT_ERROR";
        }
        if (z2) {
            return "SSL_HANDSHAKE";
        }
        if (th instanceof SSLPeerUnverifiedException) {
            return "SSL_PEER_UNVERIFIED";
        }
        if (th instanceof SSLException) {
            return "SSL_ERROR";
        }
        if (th instanceof UnknownHostException) {
            return "DNS_FAILURE";
        }
        if (th instanceof ConnectException) {
            return "CONNECT_FAILURE";
        }
        if (th instanceof SocketTimeoutException) {
            return "TIMEOUT";
        }
        if (th instanceof SocketException) {
            SocketException socketException = (SocketException) th;
            String message = socketException.getMessage();
            if (message != null && StringsKt__StringsKt.contains((CharSequence) message, (CharSequence) "reset", true)) {
                return "CONNECTION_RESET";
            }
            String message2 = socketException.getMessage();
            if (message2 != null && StringsKt__StringsKt.contains((CharSequence) message2, (CharSequence) "abort", true)) {
                return "CONNECTION_ABORT";
            }
            String message3 = socketException.getMessage();
            return (message3 == null || !StringsKt__StringsKt.contains((CharSequence) message3, (CharSequence) "closed", true)) ? "SOCKET_ERROR" : "CONNECTION_CLOSED";
        }
        String simpleName = th.getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "cause.javaClass.simpleName");
        return simpleName;
    }
}
