package com.vungle.ads.internal.model;

import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class b {
    public final String a;
    public final String b;
    public final String c;
    public final boolean d;
    public a e;
    public long f;

    public b(String adIdentifier, String serverPath, String localPath, boolean z) {
        Intrinsics.checkNotNullParameter(adIdentifier, "adIdentifier");
        Intrinsics.checkNotNullParameter(serverPath, "serverPath");
        Intrinsics.checkNotNullParameter(localPath, "localPath");
        this.a = adIdentifier;
        this.b = serverPath;
        this.c = localPath;
        this.d = z;
        this.e = a.NEW;
    }

    public final String a() {
        return this.a;
    }

    public final String b() {
        return this.c;
    }

    public final String c() {
        return this.b;
    }

    public final boolean d() {
        return Intrinsics.areEqual(this.a, "VUNGLE_AI_LABEL_ICON_URL");
    }

    public final boolean e() {
        return this.e == a.DOWNLOAD_SUCCESS;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Intrinsics.areEqual(b.class, obj.getClass())) {
            return false;
        }
        b bVar = (b) obj;
        if (this.e == bVar.e && this.f == bVar.f && this.d == bVar.d && Intrinsics.areEqual(this.a, bVar.a) && Intrinsics.areEqual(this.b, bVar.b)) {
            return Intrinsics.areEqual(this.c, bVar.c);
        }
        return false;
    }

    public final boolean f() {
        return Intrinsics.areEqual(this.a, "vmURL");
    }

    public final boolean g() {
        return Intrinsics.areEqual(this.a, "MAIN_IMAGE") || Intrinsics.areEqual(this.a, "MAIN_VIDEO");
    }

    public final boolean h() {
        return Intrinsics.areEqual(this.a, "MAIN_VIDEO");
    }

    public final int hashCode() {
        int iHashCode = (this.e.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31;
        long j = this.f;
        return Boolean.hashCode(this.d) + ((iHashCode + ((int) (j ^ (j >>> 32)))) * 31);
    }

    public final boolean i() {
        return Intrinsics.areEqual(this.a, "VUNGLE_PRIVACY_ICON_URL");
    }

    public final boolean j() {
        return this.d;
    }

    public final String toString() {
        StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("AdAsset(adIdentifier=");
        sbA.append(this.a);
        sbA.append(", serverPath=");
        sbA.append(this.b);
        sbA.append(", localPath=");
        sbA.append(this.c);
        sbA.append(", status=");
        sbA.append(this.e);
        sbA.append(", fileSize=");
        sbA.append(this.f);
        sbA.append(", isRequired=");
        sbA.append(this.d);
        sbA.append(')');
        return sbA.toString();
    }

    public final void a(a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.e = aVar;
    }

    public final void a(long j) {
        this.f = j;
    }
}
