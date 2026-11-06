package com.unity3d.services.core.network.core;

import android.content.Context;
import kotlin.jvm.internal.Intrinsics;
import org.chromium.net.CronetEngine;

/* JADX INFO: compiled from: CronetEngineBuilderFactory.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CronetEngineBuilderFactory {
    public final CronetEngine.Builder createCronetEngineBuilder(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new CronetEngine.Builder(context);
    }
}
