package ads_mobile_sdk;

import android.app.Application;
import android.content.Context;
import com.google.android.libraries.ads.mobile.sdk.common.AdActivity;
import java.lang.ref.WeakReference;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes.dex */
public final class xz0 extends Lambda implements Function0 {
    public final /* synthetic */ Context a;
    public final /* synthetic */ Context b;
    public final /* synthetic */ Class c = AdActivity.class;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xz0(Context context, Context context2) {
        super(0);
        this.a = context;
        this.b = context2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        vh1 vh1Var = mj0.a;
        WeakReference weakReference = new WeakReference(this.a);
        Context applicationContext = this.b;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "$applicationContext");
        applicationContext.getClass();
        Context applicationContext2 = this.b;
        Intrinsics.checkNotNullExpressionValue(applicationContext2, "$applicationContext");
        Application application = (Application) applicationContext2;
        application.getClass();
        Class cls = this.c;
        cls.getClass();
        return new vf0(applicationContext, application, weakReference, cls);
    }
}
