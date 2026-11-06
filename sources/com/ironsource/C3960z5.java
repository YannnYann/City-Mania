package com.ironsource;

import com.ironsource.mediationsdk.logger.IronSourceError;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.z5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3960z5 {
    public static final C3960z5 a = new C3960z5();

    private C3960z5() {
    }

    public static /* synthetic */ IronSourceError a(C3960z5 c3960z5, EnumC3581e8 enumC3581e8, IronSourceError ironSourceError, int i, Object obj) {
        if ((i & 2) != 0) {
            ironSourceError = null;
        }
        return c3960z5.a(enumC3581e8, ironSourceError);
    }

    public final IronSourceError b() {
        return a(this, EnumC3581e8.e, null, 2, null);
    }

    public final IronSourceError c() {
        return a(this, EnumC3581e8.f, null, 2, null);
    }

    public final IronSourceError d() {
        return a(this, EnumC3581e8.h, null, 2, null);
    }

    public final IronSourceError e() {
        return a(this, EnumC3581e8.i, null, 2, null);
    }

    public final IronSourceError f() {
        return a(this, EnumC3581e8.j, null, 2, null);
    }

    public final IronSourceError g() {
        return a(this, EnumC3581e8.n, null, 2, null);
    }

    public final IronSourceError h() {
        return a(this, EnumC3581e8.k, null, 2, null);
    }

    public final IronSourceError i() {
        return a(this, EnumC3581e8.l, null, 2, null);
    }

    public final IronSourceError j() {
        return a(this, EnumC3581e8.m, null, 2, null);
    }

    public final IronSourceError k() {
        return a(this, EnumC3581e8.u, null, 2, null);
    }

    public final IronSourceError l() {
        return a(this, EnumC3581e8.w, null, 2, null);
    }

    public final IronSourceError m() {
        return a(this, EnumC3581e8.v, null, 2, null);
    }

    public final IronSourceError n() {
        return a(this, EnumC3581e8.o, null, 2, null);
    }

    public final IronSourceError o() {
        return a(this, EnumC3581e8.q, null, 2, null);
    }

    public final IronSourceError p() {
        return a(this, EnumC3581e8.r, null, 2, null);
    }

    public final IronSourceError q() {
        return a(this, EnumC3581e8.p, null, 2, null);
    }

    public final IronSourceError r() {
        return a(this, EnumC3581e8.t, null, 2, null);
    }

    public final IronSourceError s() {
        return a(this, EnumC3581e8.s, null, 2, null);
    }

    public final IronSourceError t() {
        return a(this, EnumC3581e8.y, null, 2, null);
    }

    private final IronSourceError a(EnumC3581e8 enumC3581e8, IronSourceError ironSourceError) {
        String strD;
        if (ironSourceError != null) {
            strD = enumC3581e8.d() + " Underlying network error: '" + ironSourceError.getErrorCode() + ":" + ironSourceError.getErrorMessage() + "'";
        } else {
            strD = enumC3581e8.d();
        }
        return new IronSourceError(enumC3581e8.c(), strD);
    }

    public final IronSourceError b(IronSourceError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        return a(EnumC3581e8.g, error);
    }

    public final IronSourceError c(String description) {
        Intrinsics.checkNotNullParameter(description, "description");
        return a(EnumC3581e8.g, description);
    }

    public final IronSourceError d(String str) {
        return a(EnumC3581e8.B, str);
    }

    public static /* synthetic */ IronSourceError b(C3960z5 c3960z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3960z5.b(str);
    }

    public final IronSourceError c(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(EnumC3581e8.x, networkError);
    }

    public static /* synthetic */ IronSourceError c(C3960z5 c3960z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3960z5.d(str);
    }

    public final IronSourceError b(String str) {
        return a(EnumC3581e8.z, str);
    }

    private final IronSourceError a(EnumC3581e8 enumC3581e8, String str) {
        if (str == null || str.length() == 0) {
            str = enumC3581e8.d();
        }
        return new IronSourceError(enumC3581e8.c(), str);
    }

    public final IronSourceError a(IronSourceError networkError) {
        Intrinsics.checkNotNullParameter(networkError, "networkError");
        return a(EnumC3581e8.c, networkError);
    }

    public final IronSourceError a() {
        return a(this, EnumC3581e8.d, null, 2, null);
    }

    public static /* synthetic */ IronSourceError a(C3960z5 c3960z5, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "";
        }
        return c3960z5.a(str);
    }

    public final IronSourceError a(String str) {
        return a(EnumC3581e8.A, str);
    }
}
