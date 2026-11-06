package com.ironsource;

import java.lang.ref.WeakReference;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes3.dex */
public final class Gf {
    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> Runnable b(T t, final Function1<? super T, Unit> function1) {
        final WeakReference weakReference = new WeakReference(t);
        return new Runnable() { // from class: com.ironsource.Gf$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                Gf.a(weakReference, function1);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(WeakReference weakReference, Function1 function1) {
        Object obj = weakReference.get();
        if (obj != null) {
            function1.invoke(obj);
        }
    }
}
