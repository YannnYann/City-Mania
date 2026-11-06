package com.google.android.libraries.ads.mobile.sdk.common;

import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes3.dex */
public final class AgeRestrictedTreatment {
    public static final AgeRestrictedTreatment CHILD;
    public static final AgeRestrictedTreatment TEEN;
    public static final AgeRestrictedTreatment UNSPECIFIED;
    public static final /* synthetic */ AgeRestrictedTreatment[] b;
    public final int a;

    static {
        AgeRestrictedTreatment ageRestrictedTreatment = new AgeRestrictedTreatment("UNSPECIFIED", 0, 0);
        UNSPECIFIED = ageRestrictedTreatment;
        AgeRestrictedTreatment ageRestrictedTreatment2 = new AgeRestrictedTreatment("CHILD", 1, 1);
        CHILD = ageRestrictedTreatment2;
        AgeRestrictedTreatment ageRestrictedTreatment3 = new AgeRestrictedTreatment("TEEN", 2, 2);
        TEEN = ageRestrictedTreatment3;
        AgeRestrictedTreatment[] ageRestrictedTreatmentArr = {ageRestrictedTreatment, ageRestrictedTreatment2, ageRestrictedTreatment3};
        b = ageRestrictedTreatmentArr;
        EnumEntriesKt.enumEntries(ageRestrictedTreatmentArr);
    }

    public AgeRestrictedTreatment(String str, int i, int i2) {
        this.a = i2;
    }

    public static AgeRestrictedTreatment[] values() {
        return (AgeRestrictedTreatment[]) b.clone();
    }

    public final int getValue() {
        return this.a;
    }
}
