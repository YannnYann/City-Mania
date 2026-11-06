package ads_mobile_sdk;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.base.Function;
import com.google.common.io.Files;
import com.google.common.util.concurrent.AsyncFunction;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.Futures;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.io.File;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public final class zu2 implements xu2 {
    public final Context a;
    public final ks1 b;
    public final wl3 c;
    public final ts3 d;
    public final ExecutorService e;
    public final ov2 f;
    public final x9 g;

    public zu2(Context context, ks1 ks1Var, wl3 wl3Var, ts3 ts3Var, ExecutorService executorService, ov2 ov2Var, x9 x9Var) {
        this.a = context;
        this.b = ks1Var;
        this.c = wl3Var;
        this.d = ts3Var;
        this.e = executorService;
        this.f = ov2Var;
        this.g = x9Var;
    }

    @Override // ads_mobile_sdk.xu2
    public final ListenableFuture a() {
        ts3 ts3Var = this.d;
        lq0 lq0Var = lq0.EVENT_ID_DG_FETCHER_FETCH_PROGRAM;
        final ks1 ks1Var = this.b;
        Objects.requireNonNull(ks1Var);
        return ts3Var.a(lq0Var, FluentFuture.from(Futures.submit(new Callable() { // from class: ads_mobile_sdk.zu2$$ExternalSyntheticLambda0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return (yn) ks1Var.get();
            }
        }, this.e)).transform(new Function() { // from class: ads_mobile_sdk.zu2$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return Integer.valueOf(this.f$0.a((yn) obj));
            }
        }, MoreExecutors.directExecutor()).transformAsync(new AsyncFunction() { // from class: ads_mobile_sdk.zu2$$ExternalSyntheticLambda2
            @Override // com.google.common.util.concurrent.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                return this.f$0.a((Integer) obj);
            }
        }, MoreExecutors.directExecutor()).transform(new Function() { // from class: ads_mobile_sdk.zu2$$ExternalSyntheticLambda3
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((iv2) obj);
            }
        }, this.e).catching(yu2.class, new Function() { // from class: ads_mobile_sdk.zu2$$ExternalSyntheticLambda4
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return zu2.a((yu2) obj);
            }
        }, MoreExecutors.directExecutor()));
    }

    /* JADX WARN: Finally extract failed */
    public final pr0 a(iv2 iv2Var) {
        mv2 mv2Var;
        ul3 ul3Var;
        boolean zA;
        String strY = iv2Var.y().y();
        String strV = iv2Var.y().v();
        ts3 ts3Var = this.d;
        qr3 qr3Var = new qr3(lq0.EVENT_ID_DG_FETCHER_GASS_CLIENT_INVOCATION, ts3Var.b, ts3Var.a);
        try {
            qr3Var.b();
            kz0 kz0Var = new kz0(this.a, (yn) this.b.get(), strY, strV, this.g);
            try {
                mv2Var = (mv2) kz0Var.f.poll(50000, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                kz0Var.a(2009, kz0Var.i, e);
                mv2Var = null;
            }
            kz0Var.a(3004, kz0Var.i, null);
            if (mv2Var == null) {
                mv2Var = new mv2(null, 1, 1);
            }
            mv2 mv2Var2 = mv2Var;
            qr3Var.a();
            if (mv2Var2.c == 2) {
                this.d.b(lq0.EVENT_ID_DG_FETCHER_PROGRAM_NO_UPDATE);
                return (pr0) pr0.z().a(ul3.STATUS_NO_UPDATE).b();
            }
            byte[] bArr = mv2Var2.b;
            if (bArr != null && bArr.length != 0) {
                try {
                    oz0 oz0VarA = oz0.a(bArr, er0.b());
                    if (!oz0VarA.w().y().isEmpty() && !oz0VarA.w().v().isEmpty() && oz0VarA.v().i().length != 0) {
                        if (!iv2Var.equals(iv2.x()) && TextUtils.equals(iv2Var.y().y(), oz0VarA.w().y()) && TextUtils.equals(iv2Var.y().v(), oz0VarA.w().v())) {
                            this.d.b(lq0.EVENT_ID_DG_FETCHER_PROGRAM_SAME_CHECKSUM);
                        } else {
                            if (mv2Var2.c == 4) {
                                ov2 ov2Var = this.f;
                                byte[] bArrI = oz0VarA.x().i();
                                ov2Var.getClass();
                                try {
                                    Files.createParentDirs(ov2Var.a);
                                    Files.write(bArrI, ov2Var.a);
                                    jy3 jy3Var = ov2Var.b;
                                    File file = ov2Var.a;
                                    jy3Var.getClass();
                                    zA = jy3.a(file);
                                } catch (IOException | GeneralSecurityException e2) {
                                    ts3 ts3Var2 = ov2Var.c;
                                    lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
                                    ((st1) ts3Var2.a).a(2026, -1L, e2, null);
                                    zA = false;
                                }
                                try {
                                    ov2Var.a.delete();
                                } catch (SecurityException unused) {
                                }
                                if (!zA) {
                                    this.d.b(lq0.EVENT_ID_DG_FETCHER_PROGRAM_SIGNATURE_VERIFICATION_FAILURE);
                                    return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_SIGNATURE_VALIDATION_FAILED).b();
                                }
                            }
                            or0 or0VarZ = pr0.z();
                            int i = mv2Var2.c;
                            if (i == 2) {
                                ul3Var = ul3.STATUS_NO_UPDATE;
                            } else if (i == 3) {
                                ul3Var = ul3.STATUS_UPDATE_PROGRAM_BYTECODE;
                            } else if (i == 4) {
                                ul3Var = ul3.STATUS_UPDATE_VM_AND_PROGRAM_BYTECODE;
                            } else if (i != 6) {
                                ul3Var = ul3.STATUS_UNKNOWN;
                            } else {
                                ul3Var = ul3.STATUS_FAILURE_ARCHITECTURE_NOT_SUPPORTED;
                            }
                            return (pr0) or0VarZ.a(ul3Var).a((iv2) iv2.A().a(oz0VarA.w()).a((yn) this.b.get()).b()).b(oz0VarA.x()).a(oz0VarA.v()).b();
                        }
                    } else {
                        this.d.b(lq0.EVENT_ID_DG_FETCHER_PROGRAM_EMPTY_BYTECODE);
                    }
                    return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_PROGRAM_VALIDATION_FAILED).b();
                } catch (np1 e3) {
                    ts3 ts3Var3 = this.d;
                    lq0 lq0Var2 = lq0.EVENT_ID_UNSPECIFIED;
                    ((st1) ts3Var3.a).a(15204, -1L, e3, null);
                    return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR).b();
                } catch (NullPointerException unused2) {
                    this.d.b(lq0.EVENT_ID_DG_FETCHER_NPE_PARSING_GASS_PROGRAM);
                    return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_PROTO_ERROR_NPE).b();
                }
            }
            this.d.b(lq0.EVENT_ID_GET_EMPTY_PROGRAM_FROM_GASS);
            return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_EMPTY_BYTECODE).b();
        } finally {
        }
    }

    public final /* synthetic */ ListenableFuture a(Integer num) {
        return this.c.a();
    }

    public final int a(yn ynVar) {
        Pattern pattern = zn.c;
        int iOrdinal = ynVar.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 3 || iOrdinal == 4 || iOrdinal == 5) {
            return 0;
        }
        ts3 ts3Var = this.d;
        lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
        ((st1) ts3Var.a).a(15203, -1L, null, ynVar.name());
        throw new yu2();
    }

    public static pr0 a(yu2 yu2Var) {
        return (pr0) pr0.z().a(ul3.STATUS_FAILURE_ARCHITECTURE_NOT_SUPPORTED).b();
    }
}
