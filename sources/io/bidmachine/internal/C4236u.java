package io.bidmachine.internal;

import io.bidmachine.models.DataRestrictions;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.u, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4236u {
    public final String a;
    public final y b;
    public A c;
    public final C4235t d;
    public final List e;
    public final w f;
    public final DataRestrictions g;
    public final v h;

    public C4236u(String sessionId, y privacyRestrictionMode, A publisherPrivacySettings, C4235t platformPrivacySettings, List restrictionKindList, w privacyGroupRestrictions, DataRestrictions dataRestrictions, v privacyDataMasker) {
        Intrinsics.checkNotNullParameter(sessionId, "sessionId");
        Intrinsics.checkNotNullParameter(privacyRestrictionMode, "privacyRestrictionMode");
        Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
        Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
        Intrinsics.checkNotNullParameter(restrictionKindList, "restrictionKindList");
        Intrinsics.checkNotNullParameter(privacyGroupRestrictions, "privacyGroupRestrictions");
        Intrinsics.checkNotNullParameter(dataRestrictions, "dataRestrictions");
        Intrinsics.checkNotNullParameter(privacyDataMasker, "privacyDataMasker");
        this.a = sessionId;
        this.b = privacyRestrictionMode;
        this.c = publisherPrivacySettings;
        this.d = platformPrivacySettings;
        this.e = restrictionKindList;
        this.f = privacyGroupRestrictions;
        this.g = dataRestrictions;
        this.h = privacyDataMasker;
    }

    public final DataRestrictions a() {
        return this.g;
    }

    public final C4235t b() {
        return this.d;
    }

    public final v c() {
        return this.h;
    }

    public final w d() {
        return this.f;
    }

    public final y e() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4236u)) {
            return false;
        }
        C4236u c4236u = (C4236u) obj;
        return Intrinsics.areEqual(this.a, c4236u.a) && this.b == c4236u.b && Intrinsics.areEqual(this.c, c4236u.c) && Intrinsics.areEqual(this.d, c4236u.d) && Intrinsics.areEqual(this.e, c4236u.e) && Intrinsics.areEqual(this.f, c4236u.f) && Intrinsics.areEqual(this.g, c4236u.g) && Intrinsics.areEqual(this.h, c4236u.h);
    }

    public final A f() {
        return this.c;
    }

    public final List g() {
        return this.e;
    }

    public final String h() {
        return this.a;
    }

    public int hashCode() {
        return (((((((((((((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31) + this.e.hashCode()) * 31) + this.f.hashCode()) * 31) + this.g.hashCode()) * 31) + this.h.hashCode();
    }

    public String toString() {
        return super.toString();
    }
}
