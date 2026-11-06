package com.unity3d.ads.core.data.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: GatewayUrl.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class GatewayUrl {
    private final String url;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ GatewayUrl m1903boximpl(String str) {
        return new GatewayUrl(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m1904constructorimpl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return url;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1905equalsimpl(String str, Object obj) {
        return (obj instanceof GatewayUrl) && Intrinsics.areEqual(str, ((GatewayUrl) obj).m1909unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1906equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1907hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1908toStringimpl(String str) {
        return "GatewayUrl(url=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m1905equalsimpl(this.url, obj);
    }

    public int hashCode() {
        return m1907hashCodeimpl(this.url);
    }

    public String toString() {
        return m1908toStringimpl(this.url);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m1909unboximpl() {
        return this.url;
    }

    private /* synthetic */ GatewayUrl(String str) {
        this.url = str;
    }

    public final String getUrl() {
        return this.url;
    }
}
