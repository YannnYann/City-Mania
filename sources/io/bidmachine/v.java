package io.bidmachine;

import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.TargetingInfo;

/* JADX INFO: loaded from: classes4.dex */
public class v implements InitializationParams {
    public final TargetingInfo a;
    public final DataRestrictions b;

    public v(TargetingParams targetingParams, DataRestrictions dataRestrictions) {
        this.a = new TargetingInfoImpl(targetingParams);
        this.b = dataRestrictions;
    }

    @Override // io.bidmachine.GeneralParams
    public DataRestrictions getDataRestrictions() {
        return this.b;
    }

    @Override // io.bidmachine.GeneralParams
    public TargetingInfo getTargetingInfo() {
        return this.a;
    }

    @Override // io.bidmachine.GeneralParams
    public boolean isTestMode() {
        return k.b().u();
    }
}
