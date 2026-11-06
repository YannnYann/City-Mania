package com.unity3d.services.core.fid;

import android.content.Context;
import com.unity3d.services.core.reflection.GenericBridge;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsJVMKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: FIdStaticBridge.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class FIdStaticBridge extends GenericBridge {
    public FIdStaticBridge() {
        super(MapsKt__MapsJVMKt.mapOf(new Pair(Constants.GET_INSTANCE, new Class[]{Context.class})), false);
    }

    public final FIdBridge getInstance(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object objCallNonVoidMethod = callNonVoidMethod(Constants.GET_INSTANCE, null, context);
        if (objCallNonVoidMethod != null) {
            return new FIdBridge(objCallNonVoidMethod);
        }
        return null;
    }

    @Override // com.unity3d.services.core.reflection.GenericBridge
    public String getClassName() {
        return Constants.Companion.getClassName();
    }
}
