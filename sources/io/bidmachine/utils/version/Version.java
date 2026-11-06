package io.bidmachine.utils.version;

import android.text.TextUtils;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public class Version implements Comparable<Version> {
    public final int major;
    public final int minor;
    public final int patch;

    public Version(int i, int i2, int i3) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
    }

    public static Version parseVersion(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] strArrSplit = str.split("\\.");
            if (strArrSplit.length == 0) {
                return null;
            }
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = 0;
            while (i < strArrSplit.length) {
                if (i == 0) {
                    i2 = Integer.parseInt(strArrSplit[0]);
                } else if (i != 1) {
                    i4 = i != 2 ? (i4 * 100) + Integer.parseInt(strArrSplit[i]) : Integer.parseInt(strArrSplit[2]);
                } else {
                    i3 = Integer.parseInt(strArrSplit[1]);
                }
                i++;
            }
            return new Version(i2, i3, i4);
        } catch (Throwable unused) {
            return null;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            Version version = (Version) obj;
            if (this.major == version.major && this.minor == version.minor && this.patch == version.patch) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.major), Integer.valueOf(this.minor), Integer.valueOf(this.patch));
    }

    public boolean isAfter(Version version) {
        return compareTo(version) > 0;
    }

    public boolean isAfterOrEquals(Version version) {
        return compareTo(version) >= 0;
    }

    public boolean isBefore(Version version) {
        return compareTo(version) < 0;
    }

    public boolean isBeforeOrEquals(Version version) {
        return compareTo(version) <= 0;
    }

    public String toString() {
        return this.major + "." + this.minor + "." + this.patch;
    }

    @Override // java.lang.Comparable
    public int compareTo(Version version) {
        int iCompare = Integer.compare(this.major, version.major);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Integer.compare(this.minor, version.minor);
        return iCompare2 != 0 ? iCompare2 : Integer.compare(this.patch, version.patch);
    }
}
