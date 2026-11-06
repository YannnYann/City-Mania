package com.vungle.ads;

import java.io.Serializable;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class VungleCSBData implements Serializable {
    public final double a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final boolean f;
    public final Map g;

    public static final class Builder {
        public final double a;
        public String b;
        public String c;
        public String d;
        public boolean e;
        public boolean f;
        public Map g;

        public Builder(double d) {
            this.a = d;
        }

        public final Builder adUnitId(String str) {
            this.d = str;
            return this;
        }

        public final Builder auctionId(String str) {
            this.b = str;
            return this;
        }

        public final VungleCSBData build() {
            double d = this.a;
            String str = this.b;
            if (str == null) {
                str = "";
            }
            String str2 = this.c;
            if (str2 == null) {
                str2 = "";
            }
            String str3 = this.d;
            return new VungleCSBData(d, str, str2, str3 != null ? str3 : "", this.f ? 2 : 1, this.e, this.g, null);
        }

        public final Builder creativeId(String str) {
            this.c = str;
            return this;
        }

        public final Builder isPriorityAccess(boolean z) {
            this.f = z;
            return this;
        }

        public final Builder isVXWinner(boolean z) {
            this.e = z;
            return this;
        }

        public final Builder putExtras(Map<String, String> map) {
            this.g = map;
            return this;
        }
    }

    public VungleCSBData(double d, String str, String str2, String str3, int i, boolean z, Map map) {
        this.a = d;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = i;
        this.f = z;
        this.g = map;
    }

    public /* synthetic */ VungleCSBData(double d, String str, String str2, String str3, int i, boolean z, Map map, DefaultConstructorMarker defaultConstructorMarker) {
        this(d, str, str2, str3, i, z, map);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VungleCSBData)) {
            return false;
        }
        VungleCSBData vungleCSBData = (VungleCSBData) obj;
        return Double.compare(this.a, vungleCSBData.a) == 0 && Intrinsics.areEqual(this.b, vungleCSBData.b) && Intrinsics.areEqual(this.c, vungleCSBData.c) && Intrinsics.areEqual(this.d, vungleCSBData.d) && this.e == vungleCSBData.e && this.f == vungleCSBData.f && Intrinsics.areEqual(this.g, vungleCSBData.g);
    }

    public final String getAdUnitId() {
        return this.d;
    }

    public final String getAuctionId() {
        return this.b;
    }

    public final double getBidFloor() {
        return this.a;
    }

    public final String getCreativeId() {
        return this.c;
    }

    public final Map<String, String> getExtras() {
        return this.g;
    }

    public final int getPhase() {
        return this.e;
    }

    public int hashCode() {
        int iHashCode = (Boolean.hashCode(this.f) + ((((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (Double.hashCode(this.a) * 31)) * 31)) * 31)) * 31) + this.e) * 31)) * 31;
        Map map = this.g;
        return iHashCode + (map != null ? map.hashCode() : 0);
    }

    public final boolean isVXWinner() {
        return this.f;
    }
}
