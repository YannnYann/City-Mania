package com.vungle.ads.internal.downloader;

import java.util.concurrent.locks.ReentrantLock;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class p extends FunctionReferenceImpl implements Function0 {
    public p(u uVar) {
        super(0, uVar, u.class, "getOrCreatePreDownloader", "getOrCreatePreDownloader()Lcom/vungle/ads/internal/downloader/AssetDownloader;", 0);
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        i iVar;
        u uVar = (u) this.receiver;
        i iVar2 = uVar.h;
        if (iVar2 != null) {
            return iVar2;
        }
        ReentrantLock reentrantLock = uVar.c;
        reentrantLock.lock();
        try {
            if (uVar.e) {
                iVar = null;
            } else {
                i iVar3 = uVar.h;
                if (iVar3 == null) {
                    iVar3 = new i(((com.vungle.ads.internal.executor.d) uVar.a).g, uVar.b);
                    uVar.h = iVar3;
                }
                iVar = iVar3;
            }
            return iVar;
        } finally {
            reentrantLock.unlock();
        }
    }
}
