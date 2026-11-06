package com.facebook.ads.redexgen.X;

import android.text.Layout;
import java.util.Comparator;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.ba, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class C2196ba {
    public static String[] A02 = {"rDZHST5SRHhT1EGWJY5b43Pu6xH8Nu0f", "ANWXJQhqjTMeXSDmEDDzGZ2F3QelD9zK", "IvEqAJTC0cGoM7EjdnVAccNRQ5425EdX", "PyaJEHj4RQqfucJT0y2fJlBrbNuWbIle", "NR1yOPVRLR2TvdgiOhZJ9hURmR1ECghp", "0x4i4Gcdw9ziy2L2UFpwaHIuTG8Na5AZ", "W9W9yQjhujKCuViLN7JX9pBUfm1YLnZd", "jNusheCEHEDQwMvn7U3eFvzJJQIUfYdQ"};
    public static final Comparator<C2196ba> A03 = new Comparator() { // from class: com.facebook.ads.redexgen.X.bZ
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return Integer.compare(((C2196ba) obj2).A00, ((C2196ba) obj).A00);
        }
    };
    public final int A00;
    public final C1936Th A01;

    public C2196ba(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4, int i5) {
        C1737Ld cueBuilder = new C1737Ld().A0G(charSequence).A0F(alignment).A07(f, i).A09(i2).A04(f2).A0A(i3).A06(f3);
        if (z) {
            cueBuilder.A0C(i4);
        }
        this.A01 = cueBuilder.A0H();
        this.A00 = i5;
    }

    public static /* synthetic */ Comparator A01() {
        Comparator<C2196ba> comparator = A03;
        if (A02[4].charAt(11) != 'T') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[7] = "oNQv1xNd4q0J4q1apCs9eSyUuvFsewhq";
        strArr[1] = "6NCmUAoYGh99Jki2l20l5bjfE1NrLyzZ";
        return comparator;
    }
}
