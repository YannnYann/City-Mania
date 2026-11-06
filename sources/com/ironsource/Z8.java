package com.ironsource;

import android.graphics.drawable.Drawable;
import android.webkit.URLUtil;
import java.io.File;
import java.io.InputStream;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
public final class Z8 implements InterfaceC3466a9 {
    private final U3 a;

    /* JADX WARN: Multi-variable type inference failed */
    public Z8() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final Object b(String str) {
        File file = new File(str);
        if (!file.exists()) {
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("file does not exists")));
        }
        Drawable drawableCreateFromPath = Drawable.createFromPath(file.getPath());
        if (drawableCreateFromPath != null) {
            return Result.m2760constructorimpl(drawableCreateFromPath);
        }
        Result.Companion companion2 = Result.Companion;
        return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("failed to create a drawable")));
    }

    private final Object c(String str) {
        InputStream inputStreamA = this.a.a(str);
        try {
            Drawable drawableCreateFromStream = Drawable.createFromStream(inputStreamA, new File(str).getName());
            CloseableKt.closeFinally(inputStreamA, null);
            if (drawableCreateFromStream != null) {
                return Result.m2760constructorimpl(drawableCreateFromStream);
            }
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(new Exception("failed to create a drawable")));
        } finally {
        }
    }

    private final boolean d(String str) {
        return URLUtil.isHttpsUrl(str);
    }

    @Override // com.ironsource.InterfaceC3466a9
    public Object a(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            return d(url) ? c(url) : b(url);
        } catch (Exception e) {
            C3813r4.d().a(e);
            Result.Companion companion = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(e));
        }
    }

    public Z8(U3 connectionFactory) {
        Intrinsics.checkNotNullParameter(connectionFactory, "connectionFactory");
        this.a = connectionFactory;
    }

    public /* synthetic */ Z8(U3 u3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? L4.a : u3);
    }
}
