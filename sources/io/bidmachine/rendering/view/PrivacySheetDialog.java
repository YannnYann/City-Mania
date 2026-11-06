package io.bidmachine.rendering.view;

import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import io.bidmachine.rendering.R$style;
import io.bidmachine.rendering.internal.t;
import io.bidmachine.rendering.model.PrivacySheetParams;
import io.bidmachine.util.IntentUtilsKt;
import io.bidmachine.util.UtilsKt;
import java.lang.ref.WeakReference;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: loaded from: classes5.dex */
public final class PrivacySheetDialog extends Dialog {
    public static final Companion Companion = new Companion(null);
    public static WeakReference c = new WeakReference(null);
    public final PrivacySheetParams a;
    public final Lazy b;

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final PrivacySheetDialog show(Context context, PrivacySheetParams privacySheetParams) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(privacySheetParams, "privacySheetParams");
            PrivacySheetDialog privacySheetDialog = (PrivacySheetDialog) PrivacySheetDialog.c.get();
            if (privacySheetDialog != null && privacySheetDialog.isShowing()) {
                if (Intrinsics.areEqual(privacySheetDialog.a, privacySheetParams)) {
                    return privacySheetDialog;
                }
                privacySheetDialog.dismiss();
            }
            PrivacySheetDialog privacySheetDialog2 = new PrivacySheetDialog(context, privacySheetParams, null);
            PrivacySheetDialog.c = new WeakReference(privacySheetDialog2);
            try {
                privacySheetDialog2.show();
                return privacySheetDialog2;
            } catch (Throwable th) {
                t.b(th);
                return privacySheetDialog2;
            }
        }

        public Companion() {
        }
    }

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PrivacySheetParams.ActionType.values().length];
            try {
                iArr[PrivacySheetParams.ActionType.REDIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PrivacySheetParams.ActionType.COPY_TO_CLIPBOARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final class a extends Lambda implements Function0 {
        public a() {
            super(0);
        }

        public final void a() {
            PrivacySheetDialog.this.dismiss();
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Object invoke() {
            a();
            return Unit.INSTANCE;
        }
    }

    public static final class b extends Lambda implements Function0 {
        public final /* synthetic */ Context a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(Context context) {
            super(0);
            this.a = context;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public final io.bidmachine.rendering.internal.view.privacy.b invoke() {
            return new io.bidmachine.rendering.internal.view.privacy.b(this.a);
        }
    }

    public static final class c extends Lambda implements Function1 {
        public c() {
            super(1);
        }

        public final void a(PrivacySheetParams.Action action) {
            Intrinsics.checkNotNullParameter(action, "action");
            PrivacySheetDialog.this.a(action);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Object invoke(Object obj) {
            a((PrivacySheetParams.Action) obj);
            return Unit.INSTANCE;
        }
    }

    public /* synthetic */ PrivacySheetDialog(Context context, PrivacySheetParams privacySheetParams, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, privacySheetParams);
    }

    public final io.bidmachine.rendering.internal.view.privacy.b a() {
        return (io.bidmachine.rendering.internal.view.privacy.b) this.b.getValue();
    }

    public final Object b(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            return Result.m2760constructorimpl(IntentUtilsKt.openUrl(context, str));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        io.bidmachine.rendering.internal.view.privacy.b bVarA = a();
        bVarA.setOnCloseClickListener(new a());
        setContentView(bVarA);
        Window window = getWindow();
        if (window != null) {
            window.addFlags(Integer.MIN_VALUE);
            window.setLayout(-1, -1);
            a(window);
        }
        a(this.a);
    }

    public PrivacySheetDialog(Context context, PrivacySheetParams privacySheetParams) {
        super(context, R$style.Bm_BottomSheetDialog);
        this.a = privacySheetParams;
        this.b = LazyKt__LazyJVMKt.lazy(new b(context));
        Window window = getWindow();
        if (window != null) {
            window.requestFeature(1);
        }
    }

    public final void a(Window window) {
        if (Build.VERSION.SDK_INT >= 30) {
            window.setDecorFitsSystemWindows(false);
        } else {
            View decorView = window.getDecorView();
            decorView.setSystemUiVisibility(decorView.getSystemUiVisibility() | 1792);
        }
    }

    public final void a(PrivacySheetParams privacySheetParams) {
        io.bidmachine.rendering.internal.view.privacy.b bVarA = a();
        bVarA.setTitle(privacySheetParams.getTitle());
        bVarA.setSubtitle(privacySheetParams.getSubtitle());
        bVarA.a(privacySheetParams.getActions(), new c());
        bVarA.a(privacySheetParams.getFooterTitle(), privacySheetParams.getFooterText());
    }

    public final void a(PrivacySheetParams.Action action) {
        String data = action.getData();
        int i = WhenMappings.$EnumSwitchMapping$0[action.getType().ordinal()];
        if (i == 1) {
            b(data);
        } else {
            if (i != 2) {
                return;
            }
            a(data);
        }
    }

    public final Object a(String str) {
        try {
            Result.Companion companion = Result.Companion;
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "context");
            ClipboardManager clipboardManager = UtilsKt.getClipboardManager(context);
            if (clipboardManager != null) {
                clipboardManager.setPrimaryClip(ClipData.newPlainText("", str));
            }
            return Result.m2760constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.Companion;
            return Result.m2760constructorimpl(ResultKt.createFailure(th));
        }
    }
}
