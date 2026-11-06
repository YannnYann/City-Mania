package io.bidmachine.media3.extractor.metadata.icy;

import com.ironsource.mediationsdk.logger.IronSourceError;
import io.bidmachine.media3.common.MediaMetadata;
import io.bidmachine.media3.common.Metadata;
import io.bidmachine.media3.common.util.Assertions;
import io.bidmachine.media3.common.util.Log;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes5.dex */
public final class IcyHeaders implements Metadata.Entry {
    public final int bitrate;
    public final String genre;
    public final boolean isPublic;
    public final int metadataInterval;
    public final String name;
    public final String url;

    /* JADX WARN: Multi-variable type inference failed */
    public static IcyHeaders parse(Map<String, List<String>> map) {
        boolean z;
        int i;
        IcyHeaders icyHeaders;
        String str;
        String str2;
        boolean zEquals;
        int i2;
        List<String> list = map.get("icy-br");
        boolean z2 = true;
        int i3 = -1;
        if (list != null) {
            String str3 = list.get(0);
            try {
                i2 = Integer.parseInt(str3) * 1000;
                if (i2 > 0) {
                    z = true;
                } else {
                    try {
                        Log.w("IcyHeaders", "Invalid bitrate: " + str3);
                        z = false;
                        i2 = -1;
                    } catch (NumberFormatException unused) {
                        Log.w("IcyHeaders", "Invalid bitrate header: " + str3);
                        z = false;
                    }
                }
            } catch (NumberFormatException unused2) {
                i2 = -1;
            }
            i = i2;
        } else {
            z = false;
            i = -1;
        }
        List<String> list2 = map.get("icy-genre");
        String str4 = null;
        if (list2 != null) {
            String str5 = list2.get(0);
            icyHeaders = null;
            str4 = str5;
            z = true;
        } else {
            icyHeaders = null;
        }
        List<String> list3 = map.get("icy-name");
        if (list3 != null) {
            str = list3.get(0);
            z = true;
        } else {
            str = icyHeaders;
        }
        List<String> list4 = map.get("icy-url");
        if (list4 != null) {
            str2 = list4.get(0);
            z = true;
        } else {
            str2 = icyHeaders;
        }
        List<String> list5 = map.get("icy-pub");
        if (list5 != null) {
            zEquals = list5.get(0).equals("1");
            z = true;
        } else {
            zEquals = false;
        }
        List<String> list6 = map.get("icy-metaint");
        if (list6 != null) {
            String str6 = list6.get(0);
            try {
                int i4 = Integer.parseInt(str6);
                if (i4 > 0) {
                    i3 = i4;
                } else {
                    try {
                        Log.w("IcyHeaders", "Invalid metadata interval: " + str6);
                        z2 = z;
                    } catch (NumberFormatException unused3) {
                        i3 = i4;
                        Log.w("IcyHeaders", "Invalid metadata interval: " + str6);
                    }
                }
                z = z2;
            } catch (NumberFormatException unused4) {
            }
        }
        int i5 = i3;
        if (z) {
            icyHeaders = new IcyHeaders(i, str4, str, str2, zEquals, i5);
        }
        return icyHeaders;
    }

    public IcyHeaders(int i, String str, String str2, String str3, boolean z, int i2) {
        Assertions.checkArgument(i2 == -1 || i2 > 0);
        this.bitrate = i;
        this.genre = str;
        this.name = str2;
        this.url = str3;
        this.isPublic = z;
        this.metadataInterval = i2;
    }

    @Override // io.bidmachine.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.name;
        if (str != null) {
            builder.setStation(str);
        }
        String str2 = this.genre;
        if (str2 != null) {
            builder.setGenre(str2);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && IcyHeaders.class == obj.getClass()) {
            IcyHeaders icyHeaders = (IcyHeaders) obj;
            if (this.bitrate == icyHeaders.bitrate && Objects.equals(this.genre, icyHeaders.genre) && Objects.equals(this.name, icyHeaders.name) && Objects.equals(this.url, icyHeaders.url) && this.isPublic == icyHeaders.isPublic && this.metadataInterval == icyHeaders.metadataInterval) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i = (IronSourceError.ERROR_NON_EXISTENT_INSTANCE + this.bitrate) * 31;
        String str = this.genre;
        int iHashCode = (i + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.name;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.url;
        return ((((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.isPublic ? 1 : 0)) * 31) + this.metadataInterval;
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.name + "\", genre=\"" + this.genre + "\", bitrate=" + this.bitrate + ", metadataInterval=" + this.metadataInterval;
    }
}
