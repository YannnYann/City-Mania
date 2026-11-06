package io.bidmachine;

import io.bidmachine.AdRequestParameters;
import io.bidmachine.models.DataRestrictions;
import io.bidmachine.models.TargetingInfo;
import io.bidmachine.unified.UnifiedAdRequestParams;

/* JADX INFO: loaded from: classes4.dex */
public class UnifiedAdRequestParamsImpl<AdRequestParametersType extends AdRequestParameters> implements UnifiedAdRequestParams {
    private final AdRequestParametersType adRequestParameters;
    private final DataRestrictions dataRestrictions;
    private final TargetingInfo targetingInfo;

    public UnifiedAdRequestParamsImpl(AdRequestParametersType adrequestparameterstype, TargetingInfo targetingInfo, DataRestrictions dataRestrictions) {
        this.adRequestParameters = adrequestparameterstype;
        this.targetingInfo = targetingInfo;
        this.dataRestrictions = dataRestrictions;
    }

    @Override // io.bidmachine.unified.UnifiedAdRequestParams
    public AdRequestParametersType getAdRequestParameters() {
        return this.adRequestParameters;
    }

    @Override // io.bidmachine.GeneralParams
    public DataRestrictions getDataRestrictions() {
        return this.dataRestrictions;
    }

    @Override // io.bidmachine.GeneralParams
    public TargetingInfo getTargetingInfo() {
        return this.targetingInfo;
    }

    @Override // io.bidmachine.GeneralParams
    public boolean isTestMode() {
        return k.b().u();
    }
}
