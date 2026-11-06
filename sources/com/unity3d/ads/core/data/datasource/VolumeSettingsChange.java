package com.unity3d.ads.core.data.datasource;

import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: AndroidDynamicDeviceInfoDataSource.kt */
/* JADX INFO: loaded from: classes4.dex */
public abstract class VolumeSettingsChange {
    public /* synthetic */ VolumeSettingsChange(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: AndroidDynamicDeviceInfoDataSource.kt */
    public static final class MuteChange extends VolumeSettingsChange {
        private final boolean isMuted;

        public static /* synthetic */ MuteChange copy$default(MuteChange muteChange, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = muteChange.isMuted;
            }
            return muteChange.copy(z);
        }

        public final boolean component1() {
            return this.isMuted;
        }

        public final MuteChange copy(boolean z) {
            return new MuteChange(z);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof MuteChange) && this.isMuted == ((MuteChange) obj).isMuted;
        }

        public int hashCode() {
            return Boolean.hashCode(this.isMuted);
        }

        public String toString() {
            return "MuteChange(isMuted=" + this.isMuted + ')';
        }

        public MuteChange(boolean z) {
            super(null);
            this.isMuted = z;
        }

        public final boolean isMuted() {
            return this.isMuted;
        }
    }

    private VolumeSettingsChange() {
    }

    /* JADX INFO: compiled from: AndroidDynamicDeviceInfoDataSource.kt */
    public static final class VolumeChange extends VolumeSettingsChange {
        private final double volume;

        public static /* synthetic */ VolumeChange copy$default(VolumeChange volumeChange, double d, int i, Object obj) {
            if ((i & 1) != 0) {
                d = volumeChange.volume;
            }
            return volumeChange.copy(d);
        }

        public final double component1() {
            return this.volume;
        }

        public final VolumeChange copy(double d) {
            return new VolumeChange(d);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof VolumeChange) && Double.compare(this.volume, ((VolumeChange) obj).volume) == 0;
        }

        public int hashCode() {
            return Double.hashCode(this.volume);
        }

        public String toString() {
            return "VolumeChange(volume=" + this.volume + ')';
        }

        public VolumeChange(double d) {
            super(null);
            this.volume = d;
        }

        public final double getVolume() {
            return this.volume;
        }
    }
}
