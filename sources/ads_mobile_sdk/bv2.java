package ads_mobile_sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.google.common.base.Function;
import com.google.common.util.concurrent.FluentFuture;
import com.google.common.util.concurrent.ListenableFuture;
import com.google.common.util.concurrent.MoreExecutors;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes.dex */
public final class bv2 implements xu2 {
    public final Context a;
    public final ExecutorService b;
    public final n71 c;
    public final String d;
    public final j61 e;
    public final String f;
    public final ts3 g;
    public final pv2 h;

    public bv2(Context context, ExecutorService executorService, na naVar, n71 n71Var, ts3 ts3Var, pv2 pv2Var) {
        this.a = context;
        this.b = executorService;
        this.c = n71Var;
        this.g = ts3Var;
        this.h = pv2Var;
        this.d = naVar.M();
        this.e = a(naVar.L());
        this.f = naVar.S().A();
    }

    public static j61 a(ma maVar) {
        j61 j61VarA = j61.a(maVar.getNumber());
        return j61VarA != null ? j61VarA : j61.UNKNOWN_HOST_TYPE;
    }

    @Override // ads_mobile_sdk.xu2
    public final ListenableFuture a() {
        int i;
        ts3 ts3Var = this.g;
        lq0 lq0Var = lq0.EVENT_ID_ORCAS_FETCHER_FETCH_PROGRAM;
        n71 n71Var = this.c;
        za zaVarA = ab.v().a(du.a(iy3.b())).a(Build.VERSION.SDK_INT).c(Build.MODEL).a(this.a.getPackageName());
        try {
            i = this.a.getPackageManager().getPackageInfo(this.a.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            i = -1;
        }
        return ts3Var.a(lq0Var, FluentFuture.from(((q71) n71Var).a(Uri.parse(this.f).buildUpon().appendQueryParameter("aspq", hi.a(true).encode(((ab) zaVarA.b(i).b(this.d).h().a(this.e).b()).c())).build().toString(), false, new byte[0], null)).transform(new Function() { // from class: ads_mobile_sdk.bv2$$ExternalSyntheticLambda0
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((z61) obj);
            }
        }, this.b).catching(UnknownHostException.class, new Function() { // from class: ads_mobile_sdk.bv2$$ExternalSyntheticLambda1
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((UnknownHostException) obj);
            }
        }, MoreExecutors.directExecutor()).catching(SocketException.class, new Function() { // from class: ads_mobile_sdk.bv2$$ExternalSyntheticLambda2
            @Override // com.google.common.base.Function
            public final Object apply(Object obj) {
                return this.f$0.a((SocketException) obj);
            }
        }, MoreExecutors.directExecutor()));
    }

    public final pr0 a(z61 z61Var) {
        if (((p71) z61Var).a != 200) {
            ts3 ts3Var = this.g;
            lq0 lq0Var = lq0.EVENT_ID_UNSPECIFIED;
            ((st1) ts3Var.a).a(20002, -1L, null, new String(iy3.b(), StandardCharsets.UTF_8));
            return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_HTTP_ERROR).b();
        }
        try {
            String str = new String(((p71) z61Var).b);
            if (TextUtils.isEmpty(str)) {
                this.g.b(lq0.EVENT_ID_ORCAS_FETCHER_PROGRAM_EMPTY_RESPONSE);
                return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_EMPTY_BYTECODE).b();
            }
            db dbVarA = db.a(hi.a(str, true), er0.b());
            if (dbVarA.w().y() && dbVarA.w().z()) {
                if (!this.h.a(dbVarA)) {
                    this.g.b(lq0.EVENT_ID_ORCAS_FETCHER_PROGRAM_SIGNATURE_VERIFICATION_FAILURE);
                    return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_SIGNATURE_VALIDATION_FAILED).b();
                }
                return (pr0) pr0.z().a((iv2) iv2.A().a(dbVarA.w().x()).a(dbVarA.v()).b()).a(dbVarA.w().w()).a(ul3.STATUS_UPDATE_PROGRAM_BYTECODE).b();
            }
            this.g.b(lq0.EVENT_ID_ORCAS_FETCHER_PROGRAM_EMPTY_RESPONSE);
            return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_EMPTY_BYTECODE).b();
        } catch (Throwable th) {
            ts3 ts3Var2 = this.g;
            lq0 lq0Var2 = lq0.EVENT_ID_UNSPECIFIED;
            ((st1) ts3Var2.a).a(20004, -1L, th, null);
            return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_DECODE_FAILURE).b();
        }
    }

    public final pr0 a(UnknownHostException unknownHostException) {
        this.g.b(lq0.EVENT_ID_ORCAS_FETCHER_PROGRAM_UNKNOWN_HOST_EXCEPTION);
        return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_HTTP_RUNTIME_EXCEPTION).b();
    }

    public final pr0 a(SocketException socketException) {
        this.g.b(lq0.EVENT_ID_ORCAS_FETCHER_PROGRAM_SOCKET_EXCEPTION);
        return (pr0) pr0.z().a(ul3.STATUS_FAILURE_INVALID_RESPONSE_HTTP_RUNTIME_EXCEPTION).b();
    }
}
