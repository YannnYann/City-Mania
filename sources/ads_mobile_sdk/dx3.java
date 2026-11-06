package ads_mobile_sdk;

import android.content.Context;
import android.os.Build;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;

/* JADX INFO: loaded from: classes.dex */
public final class dx3 implements zw3 {
    public static final /* synthetic */ int $r8$clinit = 0;
    public final Context a;
    public final String b;
    public final jw0 c;
    public CoroutineScope d;
    public CoroutineScope e;
    public g83 f;
    public ex0 g;
    public final Mutex h;
    public final CompletableJob i;
    public String j;

    public dx3(Context context, String afmaVersion, jw0 flagDataStore) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(afmaVersion, "afmaVersion");
        Intrinsics.checkNotNullParameter(flagDataStore, "flagDataStore");
        this.a = context;
        this.b = afmaVersion;
        this.c = flagDataStore;
        this.h = MutexKt.Mutex$default(false, 1, null);
        this.i = JobKt__JobKt.Job$default(null, 1, null);
    }

    @Override // ads_mobile_sdk.zw3
    public final Object a(ContinuationImpl continuationImpl) {
        return a(this, (Continuation) continuationImpl);
    }

    @Override // ads_mobile_sdk.zw3
    public final Object b(ContinuationImpl continuationImpl) {
        Object objJoin = this.i.join(continuationImpl);
        return objJoin == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objJoin : Unit.INSTANCE;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae A[Catch: all -> 0x00b9, TryCatch #2 {all -> 0x00b9, blocks: (B:39:0x00aa, B:41:0x00ae, B:43:0x00b2, B:46:0x00bd, B:48:0x00d7, B:50:0x00db, B:56:0x00ed, B:52:0x00e3, B:54:0x00e7), top: B:83:0x00aa }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0137 A[Catch: all -> 0x015b, TryCatch #3 {all -> 0x015b, blocks: (B:60:0x0128, B:62:0x0137, B:63:0x013d), top: B:85:0x0128 }] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013d A[Catch: all -> 0x015b, TRY_LEAVE, TryCatch #3 {all -> 0x015b, blocks: (B:60:0x0128, B:62:0x0137, B:63:0x013d), top: B:85:0x0128 }] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.Object a(ads_mobile_sdk.dx3 r17, kotlin.coroutines.Continuation r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 363
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ads_mobile_sdk.dx3.a(ads_mobile_sdk.dx3, kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // ads_mobile_sdk.zw3
    public final Object a() {
        if (!Mutex.DefaultImpls.tryLock$default(this.h, null, 1, null)) {
            return null;
        }
        try {
            return this.j;
        } finally {
            Mutex.DefaultImpls.unlock$default(this.h, null, 1, null);
        }
    }

    public final String a(String str) {
        ex0 ex0Var = this.g;
        if (ex0Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("flags");
            ex0Var = null;
        }
        if (ex0Var.A0()) {
            str = StringsKt__StringsJVMKt.replace$default(str, "Android 10; K", "Android " + Build.VERSION.RELEASE + "; " + Build.MODEL + " Build/" + Build.ID, false, 4, (Object) null);
        }
        String str2 = str + " (Mobile; " + this.b + ")";
        this.j = str2;
        return str2;
    }
}
