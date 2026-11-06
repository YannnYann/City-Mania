package com.facebook.ads.redexgen.X;

import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.facebook.ads.androidx.media3.exoplayer.trackselection.DefaultTrackSelector;
import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public final class RL extends LW {
    public boolean A00;
    public boolean A01;
    public boolean A02;
    public boolean A03;
    public boolean A04;
    public boolean A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;

    @MetaExoPlayerCustomization
    public boolean A0A;
    public boolean A0B;
    public boolean A0C;
    public boolean A0D;
    public final SparseArray<Map<RY, RJ>> A0E;
    public final SparseBooleanArray A0F;

    @Deprecated
    public RL() {
        this.A0E = new SparseArray<>();
        this.A0F = new SparseBooleanArray();
        A0W();
    }

    public RL(Context context) {
        super(context);
        this.A0E = new SparseArray<>();
        this.A0F = new SparseBooleanArray();
        A0W();
    }

    @MetaExoPlayerCustomization
    public RL(Bundle bundle) {
        super(bundle);
        A0W();
        C14258i c14258i = C14258i.A0J;
        A17(bundle.getBoolean(C14258i.A0W, c14258i.A0C));
        A11(bundle.getBoolean(C14258i.A0Q, c14258i.A06));
        A12(bundle.getBoolean(C14258i.A0G(), c14258i.A07));
        A10(bundle.getBoolean(C14258i.A0P, c14258i.A05));
        A14(bundle.getBoolean(C14258i.A0T, c14258i.A09));
        A0x(bundle.getBoolean(C14258i.A0M, c14258i.A02));
        A0y(bundle.getBoolean(C14258i.A0N, c14258i.A03));
        A0v(bundle.getBoolean(C14258i.A0K, c14258i.A00));
        A0w(bundle.getBoolean(C14258i.A0L, c14258i.A01));
        A13(bundle.getBoolean(C14258i.A05(), c14258i.A08));
        A16(bundle.getBoolean(C14258i.A0V, c14258i.A0B));
        A18(bundle.getBoolean(C14258i.A0b, c14258i.A0D));
        A0z(bundle.getBoolean(C14258i.A0O, c14258i.A04));
        A15(bundle.getBoolean(C14258i.A0U, c14258i.A0A));
        this.A0E = new SparseArray<>();
        A0X(bundle);
        this.A0F = A0R(bundle.getIntArray(C14258i.A0X));
    }

    @MetaExoPlayerCustomization
    public RL(C14258i c14258i) {
        super(c14258i);
        this.A0C = c14258i.A0C;
        this.A06 = c14258i.A06;
        this.A07 = c14258i.A07;
        this.A05 = c14258i.A05;
        this.A09 = c14258i.A09;
        this.A02 = c14258i.A02;
        this.A03 = c14258i.A03;
        this.A00 = c14258i.A00;
        this.A01 = c14258i.A01;
        this.A08 = c14258i.A08;
        this.A0B = c14258i.A0B;
        this.A0D = c14258i.A0D;
        this.A04 = c14258i.A04;
        this.A0A = c14258i.A0A;
        this.A0E = A0G((SparseArray<Map<RY, RJ>>) c14258i.A0E);
        this.A0F = c14258i.A0F.clone();
    }

    public static SparseArray<Map<RY, RJ>> A0G(SparseArray<Map<RY, RJ>> sparseArray) {
        SparseArray<Map<RY, RJ>> sparseArray2 = new SparseArray<>();
        for (int i = 0; i < sparseArray.size(); i++) {
            sparseArray2.put(sparseArray.keyAt(i), new HashMap(sparseArray.valueAt(i)));
        }
        return sparseArray2;
    }

    private SparseBooleanArray A0R(int[] iArr) {
        if (iArr == null) {
            return new SparseBooleanArray();
        }
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray(iArr.length);
        for (int i : iArr) {
            sparseBooleanArray.append(i, true);
        }
        return sparseBooleanArray;
    }

    @MetaExoPlayerCustomization
    private void A0W() {
        this.A0C = true;
        this.A06 = false;
        this.A07 = true;
        this.A05 = false;
        this.A09 = true;
        this.A02 = false;
        this.A03 = false;
        this.A00 = false;
        this.A01 = false;
        this.A08 = true;
        this.A0B = true;
        this.A0D = false;
        this.A04 = true;
        this.A0A = false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void A0X(Bundle bundle) {
        AbstractC14399l abstractC14399lA01;
        SparseArray<DefaultTrackSelector.SelectionOverride> selectionOverrides;
        int[] intArray = bundle.getIntArray(C14258i.A0Z);
        ArrayList<Bundle> trackGroupArrayBundles = bundle.getParcelableArrayList(C14258i.A0a);
        if (trackGroupArrayBundles == null) {
            abstractC14399lA01 = AbstractC14399l.A03();
        } else {
            abstractC14399lA01 = C1753Lt.A01(RY.A05, trackGroupArrayBundles);
        }
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(C14258i.A0E());
        if (sparseParcelableArray == null) {
            selectionOverrides = new SparseArray<>();
        } else {
            selectionOverrides = C1753Lt.A00(RJ.A05, sparseParcelableArray);
        }
        if (intArray == null || intArray.length != abstractC14399lA01.size()) {
            return;
        }
        for (int i = 0; i < intArray.length; i++) {
            A0r(intArray[i], (RY) abstractC14399lA01.get(i), (RJ) selectionOverrides.get(i));
        }
    }

    @Override // com.facebook.ads.redexgen.X.LW
    /* JADX INFO: renamed from: A0q, reason: merged with bridge method [inline-methods] */
    public final RL A0m(int i, int i2, boolean z) {
        super.A0m(i, i2, z);
        return this;
    }

    @Deprecated
    public final RL A0r(int i, RY ry, RJ rj) {
        Map<RY, RJ> map = this.A0E.get(i);
        if (map == null) {
            map = new HashMap<>();
            this.A0E.put(i, map);
        }
        if (map.containsKey(ry) && N1.A1E(map.get(ry), rj)) {
            return this;
        }
        map.put(ry, rj);
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.LW
    /* JADX INFO: renamed from: A0s, reason: merged with bridge method [inline-methods] */
    public final RL A0n(Context context) {
        super.A0n(context);
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.LW
    /* JADX INFO: renamed from: A0t, reason: merged with bridge method [inline-methods] */
    public final RL A0o(Context context, boolean z) {
        super.A0o(context, z);
        return this;
    }

    public final RL A0u(U1 u1) {
        super.A0W(u1);
        return this;
    }

    public final RL A0v(boolean z) {
        this.A00 = z;
        return this;
    }

    public final RL A0w(boolean z) {
        this.A01 = z;
        return this;
    }

    public final RL A0x(boolean z) {
        this.A02 = z;
        return this;
    }

    public final RL A0y(boolean z) {
        this.A03 = z;
        return this;
    }

    public final RL A0z(boolean z) {
        this.A04 = z;
        return this;
    }

    public final RL A10(boolean z) {
        this.A05 = z;
        return this;
    }

    public final RL A11(boolean z) {
        this.A06 = z;
        return this;
    }

    public final RL A12(boolean z) {
        this.A07 = z;
        return this;
    }

    public final RL A13(boolean z) {
        this.A08 = z;
        return this;
    }

    public final RL A14(boolean z) {
        this.A09 = z;
        return this;
    }

    @MetaExoPlayerCustomization
    public final RL A15(boolean z) {
        this.A0A = z;
        return this;
    }

    public final RL A16(boolean z) {
        this.A0B = z;
        return this;
    }

    public final RL A17(boolean z) {
        this.A0C = z;
        return this;
    }

    public final RL A18(boolean z) {
        this.A0D = z;
        return this;
    }

    @Override // com.facebook.ads.redexgen.X.LW
    /* JADX INFO: renamed from: A19, reason: merged with bridge method [inline-methods] */
    public final C14258i A0p() {
        return new C14258i(this);
    }
}
