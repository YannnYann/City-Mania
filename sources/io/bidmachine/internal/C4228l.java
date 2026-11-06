package io.bidmachine.internal;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import io.bidmachine.util.AutoSizeTextView;
import io.bidmachine.util.ViewUtilsKt;
import java.lang.ref.WeakReference;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: io.bidmachine.internal.l, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C4228l extends AutoSizeTextView {
    public a a;

    public C4228l(Context context) {
        super(context);
    }

    public final void a(View baseAutoSizeView, float f) {
        Intrinsics.checkNotNullParameter(baseAutoSizeView, "baseAutoSizeView");
        b();
        a aVar = new a(this, f);
        aVar.a(baseAutoSizeView);
        this.a = aVar;
    }

    public final void b() {
        a aVar = this.a;
        if (aVar != null) {
            aVar.a();
        }
        this.a = null;
    }

    /* JADX INFO: renamed from: io.bidmachine.internal.l$a */
    public static final class a implements View.OnLayoutChangeListener {
        public final float a;
        public final WeakReference b;
        public WeakReference c;
        public int d;
        public int e;

        public a(View childView, float f) {
            Intrinsics.checkNotNullParameter(childView, "childView");
            this.a = f;
            this.b = new WeakReference(childView);
        }

        public final void a(View view) {
            Intrinsics.checkNotNullParameter(view, "view");
            this.c = new WeakReference(view);
            view.addOnLayoutChangeListener(this);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            View view2;
            if (view == null) {
                return;
            }
            int i9 = i3 - i;
            int i10 = i4 - i2;
            if ((i9 == this.d && i10 == this.e) || (view2 = (View) this.b.get()) == null) {
                return;
            }
            this.d = i9;
            this.e = i10;
            float f = ((i10 * i9) * this.a) / i9;
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            if (layoutParams == null) {
                view2.setLayoutParams(new ViewGroup.LayoutParams(i9, (int) f));
                return;
            }
            layoutParams.width = i9;
            layoutParams.height = (int) f;
            view2.requestLayout();
        }

        public final void a() {
            View view;
            WeakReference weakReference = this.c;
            if (weakReference == null || (view = (View) weakReference.get()) == null) {
                return;
            }
            view.removeOnLayoutChangeListener(this);
        }
    }

    public final void a() {
        b();
        ViewUtilsKt.removeFromParent(this);
    }
}
