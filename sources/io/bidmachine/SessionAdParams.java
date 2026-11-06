package io.bidmachine;

import com.explorestack.protobuf.Struct;
import com.explorestack.protobuf.Value;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.models.RequestParams;

/* JADX INFO: loaded from: classes4.dex */
@Deprecated
public final class SessionAdParams extends RequestParams<SessionAdParams> {
    private Integer sessionDuration;

    public void clear() {
        this.sessionDuration = null;
    }

    public void fillUserExtension(Struct.Builder builder) {
        if (this.sessionDuration != null) {
            builder.putFields("sessionduration", Value.newBuilder().setNumberValue(this.sessionDuration.intValue()).build());
        }
    }

    public Integer getSessionDuration() {
        return this.sessionDuration;
    }

    @Override // io.bidmachine.models.RequestParams
    public void merge(SessionAdParams sessionAdParams) {
        this.sessionDuration = (Integer) Utils.oneOf(this.sessionDuration, sessionAdParams.sessionDuration);
    }

    @Deprecated
    /* JADX INFO: renamed from: setClickRate, reason: merged with bridge method [inline-methods] */
    public SessionAdParams m2449setClickRate(Float f) {
        Logger.w("The method setClickRate is no longer supported and has no effect.");
        return this;
    }

    @Deprecated
    /* JADX INFO: renamed from: setCompletionRate, reason: merged with bridge method [inline-methods] */
    public SessionAdParams m2450setCompletionRate(Float f) {
        Logger.w("The method setCompletionRate is no longer supported and has no effect.");
        return this;
    }

    @Deprecated
    /* JADX INFO: renamed from: setImpressionCount, reason: merged with bridge method [inline-methods] */
    public SessionAdParams m2451setImpressionCount(Integer num) {
        Logger.w("The method setImpressionCount is no longer supported and has no effect.");
        return this;
    }

    @Deprecated
    /* JADX INFO: renamed from: setIsUserClickedOnLastAd, reason: merged with bridge method [inline-methods] */
    public SessionAdParams m2452setIsUserClickedOnLastAd(Boolean bool) {
        Logger.w("The method setIsUserClickedOnLastAd is no longer supported and has no effect.");
        return this;
    }

    /* JADX INFO: renamed from: setSessionDuration, reason: merged with bridge method [inline-methods] */
    public SessionAdParams m2453setSessionDuration(Integer num) {
        if (num == null || num.intValue() >= 0) {
            this.sessionDuration = num;
            return this;
        }
        Logger.e("session duration shouldn't be negative");
        return this;
    }
}
