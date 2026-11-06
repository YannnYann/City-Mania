package com.ironsource;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class I1 {
    private final String a;

    /* JADX WARN: Multi-variable type inference failed */
    public I1() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof I1) && Intrinsics.areEqual(this.a, ((I1) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return "ApplicationAuctionSettings(auctionData=" + this.a + ")";
    }

    public I1(String auctionData) {
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        this.a = auctionData;
    }

    public final I1 a(String auctionData) {
        Intrinsics.checkNotNullParameter(auctionData, "auctionData");
        return new I1(auctionData);
    }

    public /* synthetic */ I1(String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? "" : str);
    }

    public static /* synthetic */ I1 a(I1 i1, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = i1.a;
        }
        return i1.a(str);
    }
}
