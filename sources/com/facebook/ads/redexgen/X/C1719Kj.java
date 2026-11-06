package com.facebook.ads.redexgen.X;

import android.net.Uri;
import com.facebook.ads.androidx.media3.common.MediaItem;
import com.facebook.ads.androidx.media3.common.StreamKey;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Kj, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C1719Kj {
    public Uri A00;
    public C1955Ud A04;
    public Object A05;
    public String A06;
    public String A07;
    public String A08;
    public C1720Kk A01 = new C1720Kk();
    public C1722Km A02 = new C1722Km();
    public List<StreamKey> A09 = Collections.emptyList();
    public List<MediaItem.SubtitleConfiguration> A0A = Collections.emptyList();
    public C1725Kp A03 = new C1725Kp();

    public final C1719Kj A00(Uri uri) {
        this.A00 = uri;
        return this;
    }

    public final C1719Kj A01(Object obj) {
        this.A05 = obj;
        return this;
    }

    public final C1719Kj A02(String str) {
        this.A06 = str;
        return this;
    }

    public final C1719Kj A03(String str) {
        this.A07 = (String) AbstractC1747Ln.A01(str);
        return this;
    }

    public final C1719Kj A04(List<StreamKey> streamKeys) {
        List<StreamKey> listEmptyList;
        if (streamKeys != null && !streamKeys.isEmpty()) {
            listEmptyList = Collections.unmodifiableList(new ArrayList(streamKeys));
        } else {
            listEmptyList = Collections.emptyList();
        }
        this.A09 = listEmptyList;
        return this;
    }

    public final C1958Ug A05() {
        AbstractC1747Ln.A08(this.A02.A00 == null || this.A02.A03 != null);
        C1959Uh c1959Uh = null;
        Uri uri = this.A00;
        if (uri != null) {
            c1959Uh = new C1959Uh(uri, this.A08, this.A02.A03 != null ? this.A02.A08() : null, null, this.A09, this.A06, this.A0A, this.A05);
        }
        return new C1958Ug(this.A07 != null ? this.A07 : "", this.A01.A0B(), c1959Uh, this.A03.A05(), this.A04 != null ? this.A04 : C1955Ud.A0Z);
    }
}
