package io.bidmachine.util.version;

import java.util.List;
import java.util.ListIterator;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* JADX INFO: compiled from: Version.kt */
/* JADX INFO: loaded from: classes5.dex */
public final class Version implements Comparable<Version> {
    public static final Companion Companion = new Companion(null);
    public final int major;
    public final int minor;
    public final int patch;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Version)) {
            return false;
        }
        Version version = (Version) obj;
        return this.major == version.major && this.minor == version.minor && this.patch == version.patch;
    }

    public int hashCode() {
        return (((Integer.hashCode(this.major) * 31) + Integer.hashCode(this.minor)) * 31) + Integer.hashCode(this.patch);
    }

    public Version(int i, int i2, int i3) {
        this.major = i;
        this.minor = i2;
        this.patch = i3;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.major);
        sb.append('.');
        sb.append(this.minor);
        sb.append('.');
        sb.append(this.patch);
        return sb.toString();
    }

    @Override // java.lang.Comparable
    public int compareTo(Version other) {
        Intrinsics.checkNotNullParameter(other, "other");
        int iCompare = Intrinsics.compare(this.major, other.major);
        if (iCompare != 0) {
            return iCompare;
        }
        int iCompare2 = Intrinsics.compare(this.minor, other.minor);
        return iCompare2 != 0 ? iCompare2 : Intrinsics.compare(this.patch, other.patch);
    }

    /* JADX INFO: compiled from: Version.kt */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }

        public final Version parseVersion(String str) {
            List listEmptyList;
            if (str != null && str.length() != 0) {
                try {
                    List<String> listSplit = new Regex("\\.").split(str, 0);
                    if (listSplit.isEmpty()) {
                        listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    } else {
                        ListIterator<String> listIterator = listSplit.listIterator(listSplit.size());
                        while (listIterator.hasPrevious()) {
                            if (listIterator.previous().length() != 0) {
                                listEmptyList = CollectionsKt___CollectionsKt.take(listSplit, listIterator.nextIndex() + 1);
                                break;
                            }
                        }
                        listEmptyList = CollectionsKt__CollectionsKt.emptyList();
                    }
                    String[] strArr = (String[]) listEmptyList.toArray(new String[0]);
                    if (strArr.length == 0) {
                        return null;
                    }
                    int length = strArr.length;
                    int i = 0;
                    int i2 = 0;
                    int i3 = 0;
                    for (int i4 = 0; i4 < length; i4++) {
                        if (i4 == 0) {
                            i = Integer.parseInt(strArr[0]);
                        } else if (i4 == 1) {
                            i2 = Integer.parseInt(strArr[1]);
                        } else if (i4 == 2) {
                            i3 = Integer.parseInt(strArr[2]);
                        } else {
                            i3 = (i3 * 100) + Integer.parseInt(strArr[i4]);
                        }
                    }
                    return new Version(i, i2, i3);
                } catch (Throwable unused) {
                }
            }
            return null;
        }
    }
}
