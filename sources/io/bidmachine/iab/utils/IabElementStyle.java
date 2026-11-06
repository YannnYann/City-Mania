package io.bidmachine.iab.utils;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.unity3d.services.UnityAdsConstants;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public class IabElementStyle implements Serializable {
    public Integer a;
    public Integer b;
    public Boolean c;
    public Boolean d;
    public Integer e;
    public Integer f;
    public String g;
    public Float h;
    public Float i;
    public Integer j;
    public Integer k;
    public Integer l;
    public Integer m;
    public Integer n;
    public Integer o;
    public Integer p;
    public Integer q;
    public String r;
    public Float s;
    public Float t;
    public Float u;
    public Integer v;
    public Float w;

    public IabElementStyle() {
    }

    public void applyAlignment(FrameLayout.LayoutParams layoutParams) {
        layoutParams.gravity = positionAsGravity();
    }

    public void applyMargin(Context context, ViewGroup.MarginLayoutParams layoutParams) {
        layoutParams.leftMargin = getMarginLeft(context).intValue();
        layoutParams.topMargin = getMarginTop(context).intValue();
        layoutParams.rightMargin = getMarginRight(context).intValue();
        layoutParams.bottomMargin = getMarginBottom(context).intValue();
    }

    public void applyPadding(Context context, View view) {
        view.setPadding(getPaddingLeft(context).intValue(), getPaddingTop(context).intValue(), getPaddingRight(context).intValue(), getPaddingBottom(context).intValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void applyRelativeAlignment(android.widget.RelativeLayout.LayoutParams r4) {
        /*
            r3 = this;
            java.lang.Integer r0 = r3.getHorizontalPosition()
            int r0 = r0.intValue()
            r1 = 1
            r2 = 17
            if (r0 == r1) goto L22
            r1 = 3
            if (r0 == r1) goto L1c
            r1 = 5
            if (r0 == r1) goto L16
            if (r0 == r2) goto L22
            goto L27
        L16:
            r0 = 11
            r4.addRule(r0)
            goto L27
        L1c:
            r0 = 9
            r4.addRule(r0)
            goto L27
        L22:
            r0 = 14
            r4.addRule(r0)
        L27:
            java.lang.Integer r0 = r3.getVerticalPosition()
            int r0 = r0.intValue()
            r1 = 16
            if (r0 == r1) goto L4a
            if (r0 == r2) goto L4a
            r1 = 48
            if (r0 == r1) goto L44
            r1 = 80
            if (r0 == r1) goto L3e
            return
        L3e:
            r0 = 12
            r4.addRule(r0)
            return
        L44:
            r0 = 10
            r4.addRule(r0)
            return
        L4a:
            r0 = 15
            r4.addRule(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.iab.utils.IabElementStyle.applyRelativeAlignment(android.widget.RelativeLayout$LayoutParams):void");
    }

    public IabElementStyle copyWith(IabElementStyle copyFrom) {
        IabElementStyle iabElementStyle = new IabElementStyle();
        iabElementStyle.merge(this);
        iabElementStyle.merge(copyFrom);
        return iabElementStyle;
    }

    public String getContent() {
        return this.r;
    }

    public Integer getFillColor() {
        Integer num = this.b;
        return num != null ? num : Integer.valueOf(Assets.BACKGROUND_COLOR);
    }

    public Float getFontSize(Context context) {
        return this.w != null ? Float.valueOf(Utils.dpToPx(context, r0.floatValue())) : Float.valueOf(Utils.dpToPx(context, 16.0f));
    }

    public Integer getFontStyle() {
        Integer num = this.v;
        if (num != null) {
            return num;
        }
        return 0;
    }

    public Integer getHeight(Context context) {
        Float f = this.u;
        if (f != null) {
            return f.floatValue() == -1.0f ? Integer.valueOf(this.u.intValue()) : this.u.floatValue() == -2.0f ? Integer.valueOf(this.u.intValue()) : Integer.valueOf(Utils.dpToPx(context, this.u.floatValue()));
        }
        return -2;
    }

    public Float getHideAfter() {
        return this.i;
    }

    public Integer getHorizontalPosition() {
        Integer num = this.e;
        if (num != null) {
            return num;
        }
        return 3;
    }

    public Integer getMarginBottom(Context context) {
        if (this.q != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getMarginLeft(Context context) {
        if (this.n != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getMarginRight(Context context) {
        if (this.p != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getMarginTop(Context context) {
        if (this.o != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Float getOpacity() {
        Float f = this.h;
        return f != null ? f : Float.valueOf(1.0f);
    }

    public Integer getPaddingBottom(Context context) {
        if (this.m != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getPaddingLeft(Context context) {
        if (this.j != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getPaddingRight(Context context) {
        if (this.k != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getPaddingTop(Context context) {
        if (this.l != null) {
            return Integer.valueOf(Utils.dpToPx(context, r0.intValue()));
        }
        return 0;
    }

    public Integer getStrokeColor() {
        Integer num = this.a;
        return num != null ? num : Integer.valueOf(Assets.MAIN_ASSETS_COLOR);
    }

    public Float getStrokeWidth(Context context) {
        return this.s != null ? Float.valueOf(Utils.dpToPx(context, r0.floatValue())) : Float.valueOf(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    public String getStyle() {
        return this.g;
    }

    public Integer getVerticalPosition() {
        Integer num = this.f;
        if (num != null) {
            return num;
        }
        return 48;
    }

    public Integer getWidth(Context context) {
        Float f = this.t;
        if (f != null) {
            return f.floatValue() == -1.0f ? Integer.valueOf(this.t.intValue()) : this.t.floatValue() == -2.0f ? Integer.valueOf(this.t.intValue()) : Integer.valueOf(Utils.dpToPx(context, this.t.floatValue()));
        }
        return -2;
    }

    public boolean hasFillColor() {
        return this.b != null;
    }

    public boolean hasStrokeColor() {
        return this.a != null;
    }

    public Boolean isOutlined() {
        Boolean bool = this.c;
        return bool != null ? bool : Boolean.FALSE;
    }

    public Boolean isVisible() {
        Boolean bool = this.d;
        return bool != null ? bool : Boolean.TRUE;
    }

    public void merge(IabElementStyle style) {
        if (style == null) {
            return;
        }
        Integer num = style.a;
        if (num != null) {
            this.a = num;
        }
        Integer num2 = style.b;
        if (num2 != null) {
            this.b = num2;
        }
        Boolean bool = style.c;
        if (bool != null) {
            this.c = bool;
        }
        Boolean bool2 = style.d;
        if (bool2 != null) {
            this.d = bool2;
        }
        Integer num3 = style.e;
        if (num3 != null) {
            this.e = num3;
        }
        Integer num4 = style.f;
        if (num4 != null) {
            this.f = num4;
        }
        String str = style.g;
        if (str != null) {
            this.g = str;
        }
        Float f = style.h;
        if (f != null) {
            this.h = f;
        }
        Float f2 = style.i;
        if (f2 != null) {
            this.i = f2;
        }
        Integer num5 = style.j;
        if (num5 != null) {
            this.j = num5;
        }
        Integer num6 = style.k;
        if (num6 != null) {
            this.k = num6;
        }
        Integer num7 = style.l;
        if (num7 != null) {
            this.l = num7;
        }
        Integer num8 = style.m;
        if (num8 != null) {
            this.m = num8;
        }
        Integer num9 = style.n;
        if (num9 != null) {
            this.n = num9;
        }
        Integer num10 = style.p;
        if (num10 != null) {
            this.p = num10;
        }
        Integer num11 = style.o;
        if (num11 != null) {
            this.o = num11;
        }
        Integer num12 = style.q;
        if (num12 != null) {
            this.q = num12;
        }
        String str2 = style.r;
        if (str2 != null) {
            this.r = str2;
        }
        Float f3 = style.s;
        if (f3 != null) {
            this.s = f3;
        }
        Float f4 = style.t;
        if (f4 != null) {
            this.t = f4;
        }
        Float f5 = style.u;
        if (f5 != null) {
            this.u = f5;
        }
        Integer num13 = style.v;
        if (num13 != null) {
            this.v = num13;
        }
        Float f6 = style.w;
        if (f6 != null) {
            this.w = f6;
        }
    }

    public int positionAsGravity() {
        return getVerticalPosition().intValue() | getHorizontalPosition().intValue();
    }

    public void setContent(String content) {
        this.r = content;
    }

    public void setFillColor(Integer fillColor) {
        this.b = fillColor;
    }

    public void setFontSize(Float fontSize) {
        this.w = fontSize;
    }

    public void setFontStyle(Integer fontStyle) {
        this.v = fontStyle;
    }

    public void setHeight(Number height) {
        this.u = height != null ? Float.valueOf(height.floatValue()) : null;
    }

    public void setHideAfter(Float hideAfter) {
        this.i = hideAfter;
    }

    public void setHorizontalPosition(Integer horizontalPosition) {
        this.e = horizontalPosition;
    }

    public void setMargin(Integer left, Integer top, Integer right, Integer bottom) {
        this.n = left;
        this.o = top;
        this.p = right;
        this.q = bottom;
    }

    public void setOpacity(Float opacity) {
        this.h = opacity;
    }

    public void setOutlined(Boolean outlined) {
        this.c = outlined;
    }

    public void setPadding(Integer left, Integer top, Integer right, Integer bottom) {
        this.j = left;
        this.l = top;
        this.k = right;
        this.m = bottom;
    }

    public void setStrokeColor(Integer strokeColor) {
        this.a = strokeColor;
    }

    public void setStrokeWidth(Float strokeWidth) {
        this.s = strokeWidth;
    }

    public void setStyle(String style) {
        this.g = style;
    }

    public void setVerticalPosition(Integer verticalPosition) {
        this.f = verticalPosition;
    }

    public void setVisible(Boolean visible) {
        this.d = visible;
    }

    public void setWidth(Number width) {
        this.t = width != null ? Float.valueOf(width.floatValue()) : null;
    }

    public IabElementStyle(IabElementStyle copyFrom) {
        merge(copyFrom);
    }

    public void setMargin(String value) {
        if (TextUtils.isEmpty(value)) {
            setMargin(null, null, null, null);
            return;
        }
        String[] strArrSplit = value.split(" ");
        if (strArrSplit.length == 1) {
            int iIntValue = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
            setMargin(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue));
            return;
        }
        if (strArrSplit.length == 2) {
            int iIntValue2 = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
            int iIntValue3 = Utils.convertCssSizeToPx(strArrSplit[1]).intValue();
            setMargin(Integer.valueOf(iIntValue3), Integer.valueOf(iIntValue2), Integer.valueOf(iIntValue3), Integer.valueOf(iIntValue2));
        } else {
            if (strArrSplit.length == 3) {
                int iIntValue4 = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
                int iIntValue5 = Utils.convertCssSizeToPx(strArrSplit[1]).intValue();
                setMargin(Integer.valueOf(iIntValue5), Integer.valueOf(iIntValue4), Integer.valueOf(iIntValue5), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[2]).intValue()));
                return;
            }
            if (strArrSplit.length == 4) {
                setMargin(Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[3]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[0]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[1]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[2]).intValue()));
            }
        }
    }

    public void setPadding(String value) {
        if (TextUtils.isEmpty(value)) {
            setPadding(null, null, null, null);
            return;
        }
        String[] strArrSplit = value.split(" ");
        if (strArrSplit.length == 1) {
            int iIntValue = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
            setPadding(Integer.valueOf(iIntValue), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue), Integer.valueOf(iIntValue));
            return;
        }
        if (strArrSplit.length == 2) {
            int iIntValue2 = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
            int iIntValue3 = Utils.convertCssSizeToPx(strArrSplit[1]).intValue();
            setPadding(Integer.valueOf(iIntValue3), Integer.valueOf(iIntValue2), Integer.valueOf(iIntValue3), Integer.valueOf(iIntValue2));
        } else {
            if (strArrSplit.length == 3) {
                int iIntValue4 = Utils.convertCssSizeToPx(strArrSplit[0]).intValue();
                int iIntValue5 = Utils.convertCssSizeToPx(strArrSplit[1]).intValue();
                setPadding(Integer.valueOf(iIntValue5), Integer.valueOf(iIntValue4), Integer.valueOf(iIntValue5), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[2]).intValue()));
                return;
            }
            if (strArrSplit.length == 4) {
                setPadding(Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[3]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[0]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[1]).intValue()), Integer.valueOf(Utils.convertCssSizeToPx(strArrSplit[2]).intValue()));
            }
        }
    }
}
