package ads_mobile_sdk;

import com.google.common.base.Preconditions;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class bm3 implements vn0 {
    public final vu2 a;
    public final ExecutorService b;
    public final ts3 c;

    @Override // ads_mobile_sdk.wl3
    public final ListenableFuture c() {
        return Futures.immediateFuture(Boolean.TRUE);
    }

    public bm3(vu2 vu2Var, ExecutorService executorService, ts3 ts3Var) {
        this.a = vu2Var;
        this.b = executorService;
        this.c = ts3Var;
    }

    @Override // ads_mobile_sdk.wl3
    public final ListenableFuture a() {
        return this.c.a(lq0.EVENT_ID_DG_STORAGE_GET_METADATA, Futures.submit(new Callable() { // from class: ads_mobile_sdk.bm3$$ExternalSyntheticLambda2
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.f();
            }
        }, this.b));
    }

    public final iv2 f() {
        iv2 iv2VarA = this.a.a(1);
        return iv2VarA == null ? iv2.x() : iv2VarA;
    }

    public final ListenableFuture e() {
        return this.c.a(lq0.EVENT_ID_DG_STORAGE_GET_PROGRAM, Futures.submit(new Callable() { // from class: ads_mobile_sdk.bm3$$ExternalSyntheticLambda3
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.g();
            }
        }, this.b));
    }

    public final uu2 g() {
        vu2 vu2Var = this.a;
        iv2 iv2VarA = vu2Var.a(1);
        if (iv2VarA == null) {
            vu2Var.e.b(lq0.EVENT_ID_DG_STORAGE_PROGRAM_CACHE_GET_PROGRAM_BYTECODE_NOT_FOUND);
            return null;
        }
        String strY = iv2VarA.y().y();
        File file = (File) Preconditions.checkNotNull(dv2.a(vu2Var.a(), strY, "pcam.jar"));
        if (!file.exists()) {
            file = (File) Preconditions.checkNotNull(dv2.a(vu2Var.a(), strY, "pcam"));
        }
        File file2 = (File) Preconditions.checkNotNull(dv2.a(vu2Var.a(), strY, "pcopt"));
        return new uu2(iv2VarA.y(), file, (File) Preconditions.checkNotNull(dv2.a(vu2Var.a(), strY, "pcbc")), file2);
    }

    public final /* synthetic */ Void b(iv2 iv2Var, byte[] bArr) {
        this.a.a(iv2Var, null, bArr);
        return null;
    }

    @Override // ads_mobile_sdk.wl3
    public final ListenableFuture a(final iv2 iv2Var, final byte[] bArr) {
        return this.c.a(lq0.EVENT_ID_DG_STORAGE_UPDATE_PROGRAM_BYTECODE, Futures.submit(new Callable() { // from class: ads_mobile_sdk.bm3$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b(iv2Var, bArr);
            }
        }, this.b));
    }

    public final /* synthetic */ Void b(iv2 iv2Var, byte[] bArr, byte[] bArr2) {
        this.a.a(iv2Var, bArr, bArr2);
        return null;
    }

    @Override // ads_mobile_sdk.wl3
    public final ListenableFuture a(final iv2 iv2Var, final byte[] bArr, final byte[] bArr2) {
        return this.c.a(lq0.EVENT_ID_DG_STORAGE_UPDATE_VM_AND_PROGRAM_BYTECODE, Futures.submit(new Callable() { // from class: ads_mobile_sdk.bm3$$ExternalSyntheticLambda1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f$0.b(iv2Var, bArr, bArr2);
            }
        }, this.b));
    }
}
