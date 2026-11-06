package io.bidmachine.rendering.internal.view;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.unity3d.services.UnityAdsConstants;
import io.bidmachine.rendering.internal.InterfaceC4239b;
import io.bidmachine.rendering.model.ElementLayoutParams;
import io.bidmachine.rendering.model.SideBindParams;
import io.bidmachine.rendering.model.SideType;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
public final class e extends RelativeLayout {

    public static final class a extends RelativeLayout.LayoutParams {
        public final int a;
        public final int b;
        public float c;
        public float d;

        public a(int i, int i2) {
            super(i, i2);
            this.a = i;
            this.b = i2;
            this.c = 1.0f;
            this.d = 1.0f;
        }

        public final float a() {
            return this.d;
        }

        public final int b() {
            return this.b;
        }

        public final int c() {
            return this.a;
        }

        public final float d() {
            return this.c;
        }

        public final void e() {
            int[] rules = getRules();
            Intrinsics.checkNotNullExpressionValue(rules, "getRules()");
            if ((this.c > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || this.a > 0) && rules[9] == -1 && rules[11] == -1) {
                removeRule(9);
                removeRule(11);
                addRule(14);
            }
            if ((this.d > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || this.b > 0) && rules[10] == -1 && rules[12] == -1) {
                removeRule(10);
                removeRule(12);
                addRule(15);
            }
        }

        public final void a(Context context, ElementLayoutParams elementLayoutParams, List adFormList) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(elementLayoutParams, "elementLayoutParams");
            Intrinsics.checkNotNullParameter(adFormList, "adFormList");
            this.c = elementLayoutParams.getWidthPercent();
            this.d = elementLayoutParams.getHeightPercent();
            setMargins(elementLayoutParams.getMarginLeftPx(context), elementLayoutParams.getMarginTopPx(context), -elementLayoutParams.getMarginRightPx(context), -elementLayoutParams.getMarginBottomPx(context));
            SideBindParams topSideBindParams = elementLayoutParams.getTopSideBindParams();
            SideBindParams bottomSideBindParams = elementLayoutParams.getBottomSideBindParams();
            if (!a(elementLayoutParams.getCenterYSideBindParams(), 15, elementLayoutParams.getWidthPx(context))) {
                b(topSideBindParams, bottomSideBindParams, adFormList);
            }
            SideBindParams leftSideBindParams = elementLayoutParams.getLeftSideBindParams();
            SideBindParams rightSideBindParams = elementLayoutParams.getRightSideBindParams();
            if (!a(elementLayoutParams.getCenterXSideBindParams(), 14, elementLayoutParams.getHeightPx(context))) {
                a(leftSideBindParams, rightSideBindParams, adFormList);
            }
            e();
        }

        public final void b(SideBindParams sideBindParams, SideBindParams sideBindParams2, List list) {
            a(sideBindParams, SideType.Top, 6, 3, 10, list);
            a(sideBindParams2, SideType.Bottom, 8, 2, 12, list);
        }

        public final boolean a(SideBindParams sideBindParams, int i, int i2) {
            if (i2 < 0 || sideBindParams == null) {
                return false;
            }
            addRule(i);
            return true;
        }

        public final void a(SideBindParams sideBindParams, SideBindParams sideBindParams2, List list) {
            a(sideBindParams, SideType.Left, 5, 1, 9, list);
            a(sideBindParams2, SideType.Right, 7, 0, 11, list);
        }

        public final void a(SideBindParams sideBindParams, SideType sideType, int i, int i2, int i3, List list) {
            if (sideBindParams == null) {
                return;
            }
            View viewA = a(list, sideBindParams.getTargetName());
            if (viewA != null) {
                if (sideBindParams.getTargetSideType() != sideType) {
                    i = i2;
                }
                addRule(i, viewA.getId());
                return;
            }
            addRule(i3);
        }

        public final View a(List list, String str) {
            Object next;
            if (str != null && str.length() != 0) {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (Intrinsics.areEqual(((InterfaceC4239b) next).g().getName(), str)) {
                        break;
                    }
                }
                InterfaceC4239b interfaceC4239b = (InterfaceC4239b) next;
                if (interfaceC4239b != null) {
                    return interfaceC4239b.j();
                }
            }
            return null;
        }
    }

    public e(Context context) {
        super(context);
    }

    public final void a(int i, int i2) {
        int size = (View.MeasureSpec.getSize(i) - getPaddingLeft()) - getPaddingRight();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            View childAt = getChildAt(i3);
            Intrinsics.checkNotNullExpressionValue(childAt, "getChildAt(i)");
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            if (layoutParams instanceof a) {
                a(size, size2, childAt, (a) layoutParams);
            }
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        a(i, i2);
        super.onMeasure(i, i2);
    }

    public final void a(int i, int i2, View view, a aVar) {
        Integer numA;
        Integer numA2;
        float fD = aVar.d();
        if (fD > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT && fD < 1.0f && (numA2 = a(aVar.c(), i, view.getMeasuredWidth(), fD)) != null) {
            ((RelativeLayout.LayoutParams) aVar).width = numA2.intValue();
        }
        float fA = aVar.a();
        if (fA <= UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || fA >= 1.0f || (numA = a(aVar.b(), i2, view.getMeasuredHeight(), fA)) == null) {
            return;
        }
        ((RelativeLayout.LayoutParams) aVar).height = numA.intValue();
    }

    public final Integer a(int i, int i2, int i3, float f) {
        if (i <= 0) {
            if (i == -1) {
                i = i2;
            } else {
                if (i != -2) {
                    return null;
                }
                i = i3;
            }
        }
        if (i == 0) {
            return null;
        }
        return Integer.valueOf(Math.round(i * f));
    }
}
