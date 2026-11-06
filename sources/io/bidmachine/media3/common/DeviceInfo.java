package io.bidmachine.media3.common;

import com.ironsource.mediationsdk.logger.IronSourceError;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Util;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class DeviceInfo {
    public final int maxVolume;
    public final int minVolume;
    public final int playbackType;
    public final String routingControllerId;
    public static final DeviceInfo UNKNOWN = new Builder(0).build();
    public static final String FIELD_PLAYBACK_TYPE = Util.intToStringMaxRadix(0);
    public static final String FIELD_MIN_VOLUME = Util.intToStringMaxRadix(1);
    public static final String FIELD_MAX_VOLUME = Util.intToStringMaxRadix(2);
    public static final String FIELD_ROUTING_CONTROLLER_ID = Util.intToStringMaxRadix(3);

    public static final class Builder {
        public int maxVolume;
        public int minVolume;
        public final int playbackType;
        public String routingControllerId;

        public Builder(int i) {
            this.playbackType = i;
        }

        public Builder setMinVolume(int i) {
            this.minVolume = i;
            return this;
        }

        public Builder setMaxVolume(int i) {
            this.maxVolume = i;
            return this;
        }

        public DeviceInfo build() {
            Assertions.checkArgument(this.minVolume <= this.maxVolume);
            return new DeviceInfo(this);
        }
    }

    public DeviceInfo(Builder builder) {
        this.playbackType = builder.playbackType;
        this.minVolume = builder.minVolume;
        this.maxVolume = builder.maxVolume;
        this.routingControllerId = builder.routingControllerId;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DeviceInfo)) {
            return false;
        }
        DeviceInfo deviceInfo = (DeviceInfo) obj;
        return this.playbackType == deviceInfo.playbackType && this.minVolume == deviceInfo.minVolume && this.maxVolume == deviceInfo.maxVolume && Objects.equals(this.routingControllerId, deviceInfo.routingControllerId);
    }

    public int hashCode() {
        int i = (((((IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.playbackType) * 31) + this.minVolume) * 31) + this.maxVolume) * 31;
        String str = this.routingControllerId;
        return i + (str == null ? 0 : str.hashCode());
    }
}
