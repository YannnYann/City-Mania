package com.facebook.ads.redexgen.X;

import android.content.Intent;
import android.graphics.Color;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.ads.AdSize;
import com.vungle.ads.internal.protos.Sdk;
import io.bidmachine.protobuf.EventTypeExtended;
import java.util.Arrays;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.kM, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2733kM {
    public static byte[] A03;
    public static String[] A04 = {"RIyp", "8bfHllwZoJb6KTmdH", "gFRo5MPf1zEWFunFtAAEYqP", "2XHgfeMv64qze1uh4GiM7vxhoXT0t7Cn", "quPWe4yK7yTe2sBfqWZeaK6wCXbMRc", "gUzUbxfzFDg4sHtG6Y2fsTTyyICVeZlZ", "LOCp7uX4vp7jyQxaUZAF345u43tgoRc", "drvNVtrUFEvpRd3TylNZ7LyCWMwJR1"};
    public C3300tf A00;
    public final AudienceNetworkActivity A01;
    public final C1643Hi A02;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 113);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A03 = new byte[]{96, 65, 70, 81, 67, 112, 120, 121, 116, 124, 105, 116, 114, 115, 89, 124, 105, 124, 48, 44, 33, 35, 37, 45, 37, 46, 52, 9, 36, 76, 91, 79, 75, 91, 77, 74, 106, 87, 83, 91};
    }

    static {
        A01();
    }

    public C2733kM(C1643Hi c1643Hi, AudienceNetworkActivity audienceNetworkActivity) {
        this.A02 = c1643Hi;
        this.A01 = audienceNetworkActivity;
    }

    private void A02(int i, int i2) {
        if (this.A01.getWindow() != null) {
            AudienceNetworkActivity audienceNetworkActivity = this.A01;
            String[] strArr = A04;
            if (strArr[0].length() == strArr[6].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[7] = "nXCJSGtHylGbDsR3FZ0lW1J4MHkyDP";
            strArr2[4] = "Au0OMy1esseUGEC1uzZ3fS0ZPW6iiT";
            audienceNetworkActivity.getWindow().setFlags(i, i2);
        }
    }

    public final C2593i4 A03(Intent intent, RelativeLayout relativeLayout) {
        String stringExtra = intent.getStringExtra(A00(5, 13, 108));
        if (stringExtra != null) {
            C2593i4 c2593i4A01 = AbstractC2594i5.A01(this.A02, stringExtra);
            if (c2593i4A01 != null) {
                relativeLayout.addView(c2593i4A01, new RelativeLayout.LayoutParams(-1, -1));
            }
            return c2593i4A01;
        }
        return null;
    }

    public final void A04() {
        if (C2888mv.A2K(this.A01)) {
            A02(16777216, 16777216);
        }
    }

    public final void A05() {
        if (this.A00 != null && C2888mv.A1B(this.A01)) {
            this.A00.A07();
        }
    }

    public final void A06() {
        if (C2888mv.A2S(this.A01)) {
            A02(Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE, Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE);
        }
    }

    public final void A07(Intent intent, EnumC2980oR enumC2980oR, RelativeLayout relativeLayout) {
        if (C2888mv.A1B(this.A01) && enumC2980oR != EnumC2980oR.A04) {
            this.A00 = new C3300tf();
            this.A00.A0C(intent.getStringExtra(A00(18, 11, 49)));
            C3300tf c3300tf = this.A00;
            String placementId = this.A01.getPackageName();
            c3300tf.A0B(placementId);
            long longExtra = intent.getLongExtra(A00(29, 11, 79), 0L);
            if (longExtra != 0) {
                C3300tf c3300tf2 = this.A00;
                String[] strArr = A04;
                String str = strArr[7];
                String placementId2 = strArr[4];
                if (str.length() != placementId2.length()) {
                    throw new RuntimeException();
                }
                String[] strArr2 = A04;
                strArr2[5] = "e0sFc3betYzrocSt2r05YpNlTQ2co3YK";
                strArr2[3] = "r1SSJ0D7soBhWfOqDmBWbr3oKQtX3s0q";
                c3300tf2.A09(longExtra);
            }
            TextView textView = new TextView(this.A01);
            String placementId3 = A00(0, 5, 85);
            textView.setText(placementId3);
            textView.setTextColor(-1);
            AbstractC3111qc.A0O(textView, Color.argb(AdSize.WIDE_SKYSCRAPER_WIDTH, 0, 0, 0));
            textView.setPadding(5, 5, 5, 5);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(12, -1);
            layoutParams.addRule(11, -1);
            textView.setLayoutParams(layoutParams);
            ViewOnLongClickListenerC2699jo viewOnLongClickListenerC2699jo = new ViewOnLongClickListenerC2699jo(this.A00, relativeLayout);
            textView.setOnLongClickListener(viewOnLongClickListenerC2699jo);
            relativeLayout.setOnLongClickListener(viewOnLongClickListenerC2699jo);
            relativeLayout.getOverlay().add(this.A00);
        }
    }

    public final void A08(EnumC2980oR enumC2980oR, boolean z) {
        if (C2888mv.A2z(this.A02)) {
            EnumC2980oR enumC2980oR2 = EnumC2980oR.A04;
            String[] strArr = A04;
            if (strArr[5].charAt(26) == strArr[3].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[0] = "wjWX";
            strArr2[6] = "VbcFO09W4hKPvYCxrEZ3e5LbEpSKqoE";
            if (enumC2980oR == enumC2980oR2 && z) {
                A02(EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE, EventTypeExtended.EVENT_TYPE_EXTENDED_CONTAINER_ADDED_VALUE);
                return;
            }
        }
        this.A01.requestWindowFeature(1);
        A02(1024, 1024);
    }
}
