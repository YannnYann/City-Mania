package io.bidmachine.utils.version;

import android.text.TextUtils;
import com.ironsource.C3522b4;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class VersionRange {
    public final Version from;
    public final boolean isInclusiveFrom;
    public final boolean isInclusiveTo;
    public final Version to;

    public VersionRange(Version version, Version version2, boolean z, boolean z2) {
        this.from = version;
        this.to = version2;
        this.isInclusiveFrom = z;
        this.isInclusiveTo = z2;
    }

    public static boolean isAfter(Version version, Version version2, boolean z) {
        if (z && version2.isAfterOrEquals(version)) {
            return true;
        }
        return !z && version2.isAfter(version);
    }

    public static boolean isBefore(Version version, Version version2, boolean z) {
        if (z && version2.isBeforeOrEquals(version)) {
            return true;
        }
        return !z && version2.isBefore(version);
    }

    public static VersionRange parseVersionRange(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            boolean zStartsWith = str.startsWith(C3522b4.j.d);
            boolean zStartsWith2 = str.startsWith("(");
            if (zStartsWith || zStartsWith2) {
                str = str.substring(1);
            } else {
                zStartsWith = true;
            }
            boolean zEndsWith = str.endsWith(C3522b4.j.e);
            boolean zEndsWith2 = str.endsWith(")");
            if (zEndsWith || zEndsWith2) {
                str = str.substring(0, str.length() - 1);
            } else {
                zEndsWith = true;
            }
            String[] strArrSplit = str.split("-");
            if (strArrSplit.length >= 2) {
                return new VersionRange(Version.parseVersion(strArrSplit[0]), Version.parseVersion(strArrSplit[1]), zStartsWith, zEndsWith);
            }
            Version version = Version.parseVersion(str);
            if (version != null) {
                return new VersionRange(version, version, zStartsWith, zEndsWith);
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean contains(Version version) {
        Version version2;
        Version version3 = this.from;
        if (version3 != null && this.to != null && isAfter(version3, version, this.isInclusiveFrom) && isBefore(this.to, version, this.isInclusiveTo)) {
            return true;
        }
        Version version4 = this.from;
        if (version4 != null && this.to == null && isAfter(version4, version, this.isInclusiveFrom)) {
            return true;
        }
        if (this.from == null && (version2 = this.to) != null && isBefore(version2, version, this.isInclusiveTo)) {
            return true;
        }
        return this.from == null && this.to == null;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            VersionRange versionRange = (VersionRange) obj;
            if (this.isInclusiveFrom == versionRange.isInclusiveFrom && this.isInclusiveTo == versionRange.isInclusiveTo && Objects.equals(this.from, versionRange.from) && Objects.equals(this.to, versionRange.to)) {
                return true;
            }
        }
        return false;
    }
}
