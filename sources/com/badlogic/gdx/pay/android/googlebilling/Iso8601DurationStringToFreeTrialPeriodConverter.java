package com.badlogic.gdx.pay.android.googlebilling;

import com.badlogic.gdx.pay.FreeTrialPeriod;

/* JADX INFO: loaded from: classes.dex */
public class Iso8601DurationStringToFreeTrialPeriodConverter {
    public static FreeTrialPeriod convertToFreeTrialPeriod(String str) {
        return new FreeTrialPeriod(Integer.parseInt(str.substring(1, str.length() - 1)), FreeTrialPeriod.PeriodUnit.parse(str.substring(str.length() - 1).charAt(0)));
    }
}
