package io.bidmachine.util.cache;

import com.vungle.ads.internal.protos.Sdk;
import java.io.File;
import java.util.Date;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;

/* JADX INFO: compiled from: MediaFileMetadata.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class MediaFileMetadata {
    public final Date createdAt;
    public final long downloadTime;
    public final File file;
    public final Date lastUsedTime;
    public final String mimeType;
    public final long pingTime;
    public final long sizeBytes;
    public final long usageFrequency;

    public /* synthetic */ MediaFileMetadata(File file, String str, long j, long j2, long j3, long j4, Date date, Date date2, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, str, j, j2, j3, j4, date, date2);
    }

    /* JADX INFO: renamed from: copy-77cDFVw$default, reason: not valid java name */
    public static /* synthetic */ MediaFileMetadata m2734copy77cDFVw$default(MediaFileMetadata mediaFileMetadata, File file, String str, long j, long j2, long j3, long j4, Date date, Date date2, int i, Object obj) {
        if ((i & 1) != 0) {
            file = mediaFileMetadata.file;
        }
        if ((i & 2) != 0) {
            str = mediaFileMetadata.mimeType;
        }
        if ((i & 4) != 0) {
            j = mediaFileMetadata.sizeBytes;
        }
        if ((i & 8) != 0) {
            j2 = mediaFileMetadata.usageFrequency;
        }
        if ((i & 16) != 0) {
            j3 = mediaFileMetadata.pingTime;
        }
        if ((i & 32) != 0) {
            j4 = mediaFileMetadata.downloadTime;
        }
        if ((i & 64) != 0) {
            date = mediaFileMetadata.lastUsedTime;
        }
        if ((i & Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE) != 0) {
            date2 = mediaFileMetadata.createdAt;
        }
        long j5 = j4;
        long j6 = j3;
        long j7 = j2;
        long j8 = j;
        return mediaFileMetadata.m2735copy77cDFVw(file, str, j8, j7, j6, j5, date, date2);
    }

    /* JADX INFO: renamed from: copy-77cDFVw, reason: not valid java name */
    public final MediaFileMetadata m2735copy77cDFVw(File file, String mimeType, long j, long j2, long j3, long j4, Date lastUsedTime, Date createdAt) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        Intrinsics.checkNotNullParameter(lastUsedTime, "lastUsedTime");
        Intrinsics.checkNotNullParameter(createdAt, "createdAt");
        return new MediaFileMetadata(file, mimeType, j, j2, j3, j4, lastUsedTime, createdAt, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaFileMetadata)) {
            return false;
        }
        MediaFileMetadata mediaFileMetadata = (MediaFileMetadata) obj;
        return Intrinsics.areEqual(this.file, mediaFileMetadata.file) && Intrinsics.areEqual(this.mimeType, mediaFileMetadata.mimeType) && this.sizeBytes == mediaFileMetadata.sizeBytes && this.usageFrequency == mediaFileMetadata.usageFrequency && Duration.m2875equalsimpl0(this.pingTime, mediaFileMetadata.pingTime) && Duration.m2875equalsimpl0(this.downloadTime, mediaFileMetadata.downloadTime) && Intrinsics.areEqual(this.lastUsedTime, mediaFileMetadata.lastUsedTime) && Intrinsics.areEqual(this.createdAt, mediaFileMetadata.createdAt);
    }

    public int hashCode() {
        return (((((((((((((this.file.hashCode() * 31) + this.mimeType.hashCode()) * 31) + Long.hashCode(this.sizeBytes)) * 31) + Long.hashCode(this.usageFrequency)) * 31) + Duration.m2889hashCodeimpl(this.pingTime)) * 31) + Duration.m2889hashCodeimpl(this.downloadTime)) * 31) + this.lastUsedTime.hashCode()) * 31) + this.createdAt.hashCode();
    }

    public String toString() {
        return "MediaFileMetadata(file=" + this.file + ", mimeType=" + this.mimeType + ", sizeBytes=" + this.sizeBytes + ", usageFrequency=" + this.usageFrequency + ", pingTime=" + ((Object) Duration.m2903toStringimpl(this.pingTime)) + ", downloadTime=" + ((Object) Duration.m2903toStringimpl(this.downloadTime)) + ", lastUsedTime=" + this.lastUsedTime + ", createdAt=" + this.createdAt + ')';
    }

    public MediaFileMetadata(File file, String str, long j, long j2, long j3, long j4, Date date, Date date2) {
        this.file = file;
        this.mimeType = str;
        this.sizeBytes = j;
        this.usageFrequency = j2;
        this.pingTime = j3;
        this.downloadTime = j4;
        this.lastUsedTime = date;
        this.createdAt = date2;
    }

    public final File getFile() {
        return this.file;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final long getSizeBytes() {
        return this.sizeBytes;
    }

    public final long getUsageFrequency() {
        return this.usageFrequency;
    }

    /* JADX INFO: renamed from: getPingTime-UwyO8pc, reason: not valid java name */
    public final long m2737getPingTimeUwyO8pc() {
        return this.pingTime;
    }

    /* JADX INFO: renamed from: getDownloadTime-UwyO8pc, reason: not valid java name */
    public final long m2736getDownloadTimeUwyO8pc() {
        return this.downloadTime;
    }

    public final Date getLastUsedTime() {
        return this.lastUsedTime;
    }

    public final Date getCreatedAt() {
        return this.createdAt;
    }
}
