package com.vungle.ads.internal.load;

import com.vungle.ads.internal.util.u;
import com.vungle.ads.internal.util.v;
import java.io.File;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes4.dex */
public final class d extends Lambda implements Function1 {
    public final /* synthetic */ i a;
    public final /* synthetic */ String b;
    public final /* synthetic */ com.vungle.ads.internal.downloader.e c;
    public final /* synthetic */ com.vungle.ads.internal.downloader.l d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(i iVar, String str, c cVar, com.vungle.ads.internal.downloader.l lVar) {
        super(1);
        this.a = iVar;
        this.b = str;
        this.c = cVar;
        this.d = lVar;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        com.vungle.ads.internal.downloader.c cVar;
        Object objM2768unboximpl = ((Result) obj).m2768unboximpl();
        if (this.a.l.get()) {
            boolean z = v.a;
            StringBuilder sbA = com.iab.omid.library.vungle.internal.l.a("Template callback ignored after cancel: ");
            sbA.append(this.b);
            u.a("BaseAdLoader", sbA.toString());
        } else {
            com.vungle.ads.internal.downloader.e eVar = this.c;
            com.vungle.ads.internal.downloader.l lVar = this.d;
            if (Result.m2766isSuccessimpl(objM2768unboximpl)) {
                eVar.a((File) objM2768unboximpl, lVar);
            }
            com.vungle.ads.internal.downloader.e eVar2 = this.c;
            com.vungle.ads.internal.downloader.l lVar2 = this.d;
            Throwable thM2763exceptionOrNullimpl = Result.m2763exceptionOrNullimpl(objM2768unboximpl);
            if (thM2763exceptionOrNullimpl != null) {
                com.vungle.ads.internal.downloader.o oVar = thM2763exceptionOrNullimpl instanceof com.vungle.ads.internal.downloader.o ? (com.vungle.ads.internal.downloader.o) thM2763exceptionOrNullimpl : null;
                if (oVar == null || (cVar = oVar.a()) == null) {
                    cVar = new com.vungle.ads.internal.downloader.c(-1, thM2763exceptionOrNullimpl, 1);
                }
                eVar2.a(cVar, lVar2);
            }
        }
        return Unit.INSTANCE;
    }
}
