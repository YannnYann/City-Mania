package io.bidmachine.media3.common;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class AdOverlayInfo {
    public final int purpose;
    public final String reasonDetail;
    public final View view;

    public static final class Builder {
        public String detailedReason;
        public final int purpose;
        public final View view;

        public Builder(View view, int i) {
            this.view = view;
            this.purpose = i;
        }

        public Builder setDetailedReason(String str) {
            this.detailedReason = str;
            return this;
        }

        public AdOverlayInfo build() {
            return new AdOverlayInfo(this.view, this.purpose, this.detailedReason);
        }
    }

    @Deprecated
    public AdOverlayInfo(View view, int i, String str) {
        this.view = view;
        this.purpose = i;
        this.reasonDetail = str;
    }
}
