package io.bidmachine;

import io.bidmachine.internal.C4235t;
import io.bidmachine.internal.O;
import io.bidmachine.internal.w;
import io.bidmachine.models.DataRestrictions;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt__CharKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes4.dex */
public final class DataRestrictionsImpl implements DataRestrictions {
    private final C4235t platformPrivacySettings;
    private final io.bidmachine.internal.w privacyGroupRestrictions;
    private final io.bidmachine.internal.A publisherPrivacySettings;

    public DataRestrictionsImpl(io.bidmachine.internal.w privacyGroupRestrictions, io.bidmachine.internal.A publisherPrivacySettings, C4235t platformPrivacySettings) {
        Intrinsics.checkNotNullParameter(privacyGroupRestrictions, "privacyGroupRestrictions");
        Intrinsics.checkNotNullParameter(publisherPrivacySettings, "publisherPrivacySettings");
        Intrinsics.checkNotNullParameter(platformPrivacySettings, "platformPrivacySettings");
        this.privacyGroupRestrictions = privacyGroupRestrictions;
        this.publisherPrivacySettings = publisherPrivacySettings;
        this.platformPrivacySettings = platformPrivacySettings;
    }

    public boolean getHasAdIdsPermission() {
        return this.privacyGroupRestrictions.e() == w.b.PASS;
    }

    public boolean getHasDemographicsPermission() {
        return this.privacyGroupRestrictions.a() == w.b.PASS;
    }

    public boolean getHasDeviceInfoPermission() {
        return this.privacyGroupRestrictions.b() == w.b.PASS;
    }

    public boolean getHasNetworkPermission() {
        return this.privacyGroupRestrictions.c() == w.b.PASS;
    }

    public boolean getHasPreciseLocationPermission() {
        return this.privacyGroupRestrictions.d() == w.b.PASS;
    }

    public String getUsPrivacyString() {
        String strA = this.publisherPrivacySettings.a();
        return strA == null ? this.platformPrivacySettings.a() : strA;
    }

    public boolean isUserAgeRestricted() {
        Boolean boolC = this.publisherPrivacySettings.c();
        if (boolC != null) {
            return boolC.booleanValue();
        }
        return false;
    }

    public boolean isUserHasCcpaConsent() {
        String usPrivacyString = getUsPrivacyString();
        return usPrivacyString != null && usPrivacyString.length() == 4 && usPrivacyString.charAt(0) == '1' && CharsKt__CharKt.equals(usPrivacyString.charAt(2), 'N', true);
    }

    public boolean isUserHasConsent() {
        Boolean boolB = this.publisherPrivacySettings.b();
        if (boolB != null) {
            return boolB.booleanValue();
        }
        O oD = this.platformPrivacySettings.d();
        Boolean boolValueOf = oD != null ? Boolean.valueOf(oD.a()) : null;
        if (boolValueOf != null) {
            return boolValueOf.booleanValue();
        }
        return false;
    }

    public boolean isUserInCcpaScope() {
        String usPrivacyString = getUsPrivacyString();
        return usPrivacyString != null && usPrivacyString.length() == 4 && usPrivacyString.charAt(0) == '1' && !StringsKt__StringsKt.contains$default((CharSequence) usPrivacyString, (CharSequence) "---", false, 2, (Object) null);
    }

    public boolean isUserInGdprScope() {
        Boolean boolH = this.publisherPrivacySettings.h();
        if (boolH != null) {
            return boolH.booleanValue();
        }
        Boolean boolH2 = this.platformPrivacySettings.h();
        if (boolH2 != null) {
            return boolH2.booleanValue();
        }
        return false;
    }
}
