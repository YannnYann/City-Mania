package com.ironsource;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.webkit.WebView;
import com.ironsource.InterfaceC3947ya;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.ironsource.na, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes3.dex */
public final class C3744na extends WebView implements InterfaceC3965za {
    private InterfaceC3947ya a;
    private Xc b;

    public /* synthetic */ C3744na(Context context, InterfaceC3947ya interfaceC3947ya, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i & 2) != 0 ? new InterfaceC3947ya.a(0, 1, null) : interfaceC3947ya);
    }

    @Override // com.ironsource.InterfaceC3965za
    public void a(String script) {
        Intrinsics.checkNotNullParameter(script, "script");
        InterfaceC3947ya interfaceC3947ya = this.a;
        InterfaceC3947ya interfaceC3947ya2 = null;
        if (interfaceC3947ya == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
            interfaceC3947ya = null;
        }
        if (!interfaceC3947ya.a()) {
            InterfaceC3947ya interfaceC3947ya3 = this.a;
            if (interfaceC3947ya3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
                interfaceC3947ya3 = null;
            }
            interfaceC3947ya3.a(this);
        }
        InterfaceC3947ya interfaceC3947ya4 = this.a;
        if (interfaceC3947ya4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("javascriptEngine");
        } else {
            interfaceC3947ya2 = interfaceC3947ya4;
        }
        interfaceC3947ya2.a(script);
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent event) {
        Xc xc;
        Intrinsics.checkNotNullParameter(event, "event");
        if (i == 4 && (xc = this.b) != null && xc.onBackButtonPressed()) {
            return true;
        }
        return super.onKeyDown(i, event);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C3744na(Context context, InterfaceC3947ya javascriptEngine) {
        this(context);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(javascriptEngine, "javascriptEngine");
        this.a = javascriptEngine;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3744na(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
    }

    public final void a(Xc xc) {
        this.b = xc;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3744na(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }

    public final void a() {
        this.b = null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3744na(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
    }
}
