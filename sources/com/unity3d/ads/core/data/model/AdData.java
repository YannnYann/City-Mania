package com.unity3d.ads.core.data.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AdContext.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class AdData {
    private final String data;

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AdData m1889boximpl(String str) {
        return new AdData(str);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static String m1890constructorimpl(String data) {
        Intrinsics.checkNotNullParameter(data, "data");
        return data;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m1891equalsimpl(String str, Object obj) {
        return (obj instanceof AdData) && Intrinsics.areEqual(str, ((AdData) obj).m1895unboximpl());
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m1892equalsimpl0(String str, String str2) {
        return Intrinsics.areEqual(str, str2);
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m1893hashCodeimpl(String str) {
        return str.hashCode();
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m1894toStringimpl(String str) {
        return "AdData(data=" + str + ')';
    }

    public boolean equals(Object obj) {
        return m1891equalsimpl(this.data, obj);
    }

    public int hashCode() {
        return m1893hashCodeimpl(this.data);
    }

    public String toString() {
        return m1894toStringimpl(this.data);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ String m1895unboximpl() {
        return this.data;
    }

    private /* synthetic */ AdData(String str) {
        this.data = str;
    }

    public final String getData() {
        return this.data;
    }
}
