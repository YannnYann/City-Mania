package com.ironsource;

import android.os.Handler;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.gg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3625gg {
    public static final InterfaceC3607fg a(final Handler handler) {
        Intrinsics.checkNotNullParameter(handler, "<this>");
        return new InterfaceC3607fg() { // from class: com.ironsource.gg$$ExternalSyntheticLambda2
            @Override // com.ironsource.InterfaceC3607fg
            public final void a(Function0 function0) {
                C3625gg.a(handler, function0);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(Function0 function0) {
        function0.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Handler handler, final Function0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        handler.post(new Runnable() { // from class: com.ironsource.gg$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                C3625gg.a(it);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(Function0 function0) {
        function0.invoke();
    }

    public static final InterfaceC3607fg a(final com.ironsource.environment.thread.b bVar) {
        Intrinsics.checkNotNullParameter(bVar, "<this>");
        return new InterfaceC3607fg() { // from class: com.ironsource.gg$$ExternalSyntheticLambda0
            @Override // com.ironsource.InterfaceC3607fg
            public final void a(Function0 function0) {
                C3625gg.a(bVar, function0);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(com.ironsource.environment.thread.b bVar, final Function0 it) {
        Intrinsics.checkNotNullParameter(it, "it");
        bVar.a(new Runnable() { // from class: com.ironsource.gg$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                C3625gg.b(it);
            }
        });
    }
}
