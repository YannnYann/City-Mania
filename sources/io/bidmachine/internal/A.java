package io.bidmachine.internal;

import com.vungle.ads.internal.protos.Sdk;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class A {
    public final String a;
    public final Boolean b;
    public final Boolean c;
    public final Boolean d;
    public final String e;
    public final String f;
    public final List g;
    public final Boolean h;

    public A(String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, List list, Boolean bool4) {
        this.a = str;
        this.b = bool;
        this.c = bool2;
        this.d = bool3;
        this.e = str2;
        this.f = str3;
        this.g = list;
        this.h = bool4;
    }

    public final A a(String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, List list, Boolean bool4) {
        return new A(str, bool, bool2, bool3, str2, str3, list, bool4);
    }

    public final Boolean b() {
        return this.c;
    }

    public final Boolean c() {
        return this.d;
    }

    public final String d() {
        return this.a;
    }

    public final List e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof A)) {
            return false;
        }
        A a = (A) obj;
        return Intrinsics.areEqual(this.a, a.a) && Intrinsics.areEqual(this.b, a.b) && Intrinsics.areEqual(this.c, a.c) && Intrinsics.areEqual(this.d, a.d) && Intrinsics.areEqual(this.e, a.e) && Intrinsics.areEqual(this.f, a.f) && Intrinsics.areEqual(this.g, a.g) && Intrinsics.areEqual(this.h, a.h);
    }

    public final String f() {
        return this.f;
    }

    public final Boolean g() {
        return this.h;
    }

    public final Boolean h() {
        return this.b;
    }

    public int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        Boolean bool = this.b;
        int iHashCode2 = (iHashCode + (bool == null ? 0 : bool.hashCode())) * 31;
        Boolean bool2 = this.c;
        int iHashCode3 = (iHashCode2 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.d;
        int iHashCode4 = (iHashCode3 + (bool3 == null ? 0 : bool3.hashCode())) * 31;
        String str2 = this.e;
        int iHashCode5 = (iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.f;
        int iHashCode6 = (iHashCode5 + (str3 == null ? 0 : str3.hashCode())) * 31;
        List list = this.g;
        int iHashCode7 = (iHashCode6 + (list == null ? 0 : list.hashCode())) * 31;
        Boolean bool4 = this.h;
        return iHashCode7 + (bool4 != null ? bool4.hashCode() : 0);
    }

    public String toString() {
        return "PublisherPrivacySettings(gdprConsentString=" + this.a + ", subjectToGdpr=" + this.b + ", consentGranted=" + this.c + ", coppa=" + this.d + ", ccpa=" + this.e + ", gppString=" + this.f + ", gppIds=" + this.g + ", nonPersonalized=" + this.h + ')';
    }

    public static /* synthetic */ A a(A a, String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, List list, Boolean bool4, int i, Object obj) {
        if ((i & 1) != 0) {
            str = a.a;
        }
        if ((i & 2) != 0) {
            bool = a.b;
        }
        if ((i & 4) != 0) {
            bool2 = a.c;
        }
        if ((i & 8) != 0) {
            bool3 = a.d;
        }
        if ((i & 16) != 0) {
            str2 = a.e;
        }
        if ((i & 32) != 0) {
            str3 = a.f;
        }
        if ((i & 64) != 0) {
            list = a.g;
        }
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            bool4 = a.h;
        }
        List list2 = list;
        Boolean bool5 = bool4;
        String str4 = str2;
        String str5 = str3;
        return a.a(str, bool, bool2, bool3, str4, str5, list2, bool5);
    }

    public final A b(String str) {
        return a(this, str, null, null, null, null, null, null, null, 254, null);
    }

    public final A c(String str) {
        return a(this, null, null, null, null, null, str, null, null, Sdk.SDKError.Reason.STALE_CACHED_RESPONSE_VALUE, null);
    }

    public final A d(Boolean bool) {
        return a(this, null, bool, null, null, null, null, null, null, 253, null);
    }

    public final String a() {
        return this.e;
    }

    public final A b(Boolean bool) {
        return a(this, null, null, null, bool, null, null, null, null, 247, null);
    }

    public final A c(Boolean bool) {
        return a(this, null, null, null, null, null, null, null, bool, Sdk.SDKError.Reason.ASSET_FAILED_MAX_SPACE_EXCEEDED_VALUE, null);
    }

    public final A a(Boolean bool) {
        return a(this, null, null, bool, null, null, null, null, null, 251, null);
    }

    public final A a(String str) {
        return a(this, null, null, null, null, str, null, null, null, 239, null);
    }

    public final A a(List list) {
        return a(this, null, null, null, null, null, null, list, null, 191, null);
    }

    public /* synthetic */ A(String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, List list, Boolean bool4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, (i & 4) != 0 ? null : bool2, (i & 8) != 0 ? null : bool3, (i & 16) != 0 ? null : str2, (i & 32) != 0 ? null : str3, (i & 64) != 0 ? null : list, (i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0 ? null : bool4);
    }
}
