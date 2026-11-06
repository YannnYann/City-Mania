package io.bidmachine;

import android.app.Activity;
import android.content.Context;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes4.dex */
public final class SimpleContextProvider implements ContextProvider {
    private final Context applicationContext;

    public SimpleContextProvider(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Context applicationContext = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
        this.applicationContext = applicationContext;
    }

    @Override // io.bidmachine.ContextProvider
    public Activity getActivity() {
        return h.a();
    }

    @Override // io.bidmachine.ContextProvider
    public Context getApplicationContext() {
        return this.applicationContext;
    }

    @Override // io.bidmachine.ContextProvider
    public Context getContext() {
        return this.applicationContext;
    }
}
