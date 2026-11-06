package io.bidmachine.iab.mraid;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import io.bidmachine.iab.IabError;
import io.bidmachine.iab.utils.Utils;
import io.bidmachine.rendering.internal.AbstractC4238a;
import io.bidmachine.rendering.internal.AdActivity;
import io.bidmachine.util.UiUtils;
import kotlin.jvm.functions.Function0;

/* JADX INFO: loaded from: classes5.dex */
public class MraidActivity extends AdActivity {
    public static final SparseArray d = new SparseArray();
    public Integer a;
    public MraidInterstitial b;
    public boolean c = false;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[MraidType.values().length];
            a = iArr;
            try {
                iArr[MraidType.Static.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[MraidType.Video.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[MraidType.Rewarded.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public static /* synthetic */ String a(Throwable th) {
        return "Exception during showing MraidActivity: " + th;
    }

    public static void show(Context context, MraidInterstitial mraidInterstitial, MraidType mraidType) {
        if (mraidInterstitial == null) {
            MraidLog.e("MraidActivity", "MraidInterstitial is null during showing MraidActivity", new Object[0]);
            return;
        }
        if (context == null) {
            MraidLog.e("MraidActivity", "Context is null during showing MraidActivity", new Object[0]);
            mraidInterstitial.c(IabError.noRequiredArguments("Context is null during showing MraidActivity"));
            return;
        }
        if (mraidType == null) {
            MraidLog.e("MraidActivity", "MraidType is null during showing MraidActivity", new Object[0]);
            mraidInterstitial.c(IabError.noRequiredArguments("MraidType is null during showing MraidActivity"));
            return;
        }
        try {
            a(mraidInterstitial);
            context.startActivity(a(context, mraidType, mraidInterstitial.id));
        } catch (Throwable th) {
            MraidLog.e("MraidActivity", (Function0<String>) new Function0() { // from class: io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MraidActivity.a(th);
                }
            });
            mraidInterstitial.c(IabError.throwable("Exception during showing MraidActivity", th));
            a(Integer.valueOf(mraidInterstitial.id));
        }
    }

    public final void c() {
        a(this.a);
    }

    @Override // io.bidmachine.rendering.internal.AdActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!getIntent().hasExtra("InterstitialId")) {
            MraidLog.e("MraidActivity", "Mraid display cache id not provided", new Object[0]);
            UiUtils.finishActivityWithoutAnimation(this);
            return;
        }
        int intExtra = getIntent().getIntExtra("InterstitialId", 0);
        this.a = Integer.valueOf(intExtra);
        MraidInterstitial mraidInterstitial = (MraidInterstitial) d.get(intExtra);
        this.b = mraidInterstitial;
        if (mraidInterstitial == null) {
            MraidLog.e("MraidActivity", "Mraid interstitial not found in display cache, id=%s", this.a);
            UiUtils.finishActivityWithoutAnimation(this);
            return;
        }
        MraidType mraidType = (MraidType) getIntent().getSerializableExtra("InterstitialType");
        if (mraidType == null) {
            MraidLog.e("MraidActivity", "MraidType is null", new Object[0]);
            UiUtils.finishActivityWithoutAnimation(this);
            this.b.c(IabError.internal("MraidType is null"));
            return;
        }
        UiUtils.prepareFullscreen(this);
        int i = a.a[mraidType.ordinal()];
        if (i == 1 || i == 2) {
            this.c = true;
        } else if (i == 3) {
            this.c = false;
        }
        try {
            this.b.a((Activity) this, false);
        } catch (Exception e) {
            MraidLog.e("MraidActivity", (Function0<String>) new Function0() { // from class: io.bidmachine.iab.mraid.MraidActivity$$ExternalSyntheticLambda1
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return MraidActivity.a(e);
                }
            });
            UiUtils.finishActivityWithoutAnimation(this);
            this.b.c(IabError.throwable("Exception during showing MraidInterstitial in MraidActivity", e));
            c();
        }
        UiUtils.applyFullscreen(this);
        Utils.applyWindowInsets(this);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.b == null || isChangingConfigurations()) {
            return;
        }
        this.b.b();
        c();
    }

    public static void a(MraidInterstitial mraidInterstitial) {
        d.put(mraidInterstitial.id, mraidInterstitial);
    }

    public static void a(Integer num) {
        if (num == null) {
            return;
        }
        d.remove(num.intValue());
    }

    public static Intent a(Context context, MraidType mraidType, int i) {
        Intent intentA = AbstractC4238a.a(context, MraidActivity.class);
        intentA.putExtra("InterstitialId", i);
        intentA.putExtra("InterstitialType", mraidType);
        return intentA;
    }

    public static /* synthetic */ String a(Exception exc) {
        return "Exception during showing MraidInterstitial in MraidActivity: " + exc;
    }

    @Override // io.bidmachine.rendering.internal.AdActivity
    public void a() {
        if (this.c) {
            MraidInterstitial mraidInterstitial = this.b;
            if (mraidInterstitial != null) {
                mraidInterstitial.dispatchClose();
            } else {
                UiUtils.finishActivityWithoutAnimation(this);
            }
        }
    }
}
