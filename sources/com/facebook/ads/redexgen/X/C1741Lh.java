package com.facebook.ads.redexgen.X;

import android.os.Handler;
import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.vungle.ads.internal.protos.Sdk;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.facebook.ads.redexgen.X.Lh, reason: case insensitive filesystem */
/* JADX INFO: loaded from: assets/audience_network/classes.dex */
public class C1741Lh implements InterfaceC2389ei, InterfaceC2393en {
    public static byte[] A0C;
    public static String[] A0D = {"OTBhn", "woE0GsYsDC", "jJJsRhZ6eh", "RbmDZKGZyk", "MbYnCV2deeCvNEpfUSPgn7RvJuamywdV", "va4Mi1JJiq4w08mNkhVxy34L1bzftr4W", "QQZqW8pW387BdDH3gcXSwYVoWAeaIxNz", "E72k8"};
    public static final String A0E;
    public int A00;
    public LK A01;
    public InterfaceC2408f2 A02;
    public C2409f3 A03;
    public InterfaceC2936nh A04;
    public List<GT> A05;
    public boolean A06;
    public boolean A07;
    public boolean A08;
    public boolean A09;
    public final C1643Hi A0A;
    public final String A0B;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0C, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 106);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A0C = new byte[]{124, 89, 92, 77, 73, 88, 79, 29, 92, 81, 79, 88, 92, 89, 68, 29, 81, 82, 92, 89, 88, 89, 29, 89, 92, 73, 92, 93, 114, 119, 125, 117, 62, 118, 127, 110, 110, 123, 112, 123, 122, 62, 113, 112, 62, 114, 113, 125, 117, 109, 125, 108, 123, 123, 112, 62, 127, 122, 104, 71, 66, 72, 64, 11, 71, 68, 76, 76, 78, 79, 10, 26, 7, 31, 27, 13, 26, 55, 28, 17, 24, 13, 64, 66, 79, 79, 70, 81, 119, 90, 83, 70, 54, 52, 39, 49, 54, 59, 33, 92, 94, 77, 91, 86, 81, 91, 32, 32, 55, 28, 55, 58, 51, 38, 87, 64, 82, 93, 72, 85, 74, 89, 17, 12, 3, 18, 17, 10, 13, 22, 93, 70, 65, 89, 93, 77, 97, 76, 20, 11, 7, 21};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private void A06(Map<String, String> map, Map<String, String> map2) {
        try {
            new Handler().postDelayed(new C1743Lj(this, map2, A03(map)), this.A01.A09() * 1000);
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:54:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A0M(java.util.Map<java.lang.String, java.lang.String> r11) {
        /*
            Method dump skipped, instruction units count: 368
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.ads.redexgen.X.C1741Lh.A0M(java.util.Map):void");
    }

    static {
        A04();
        A0E = C1741Lh.class.getSimpleName();
    }

    public C1741Lh(C1643Hi c1643Hi) {
        this(c1643Hi, new LK());
    }

    public C1741Lh(C1643Hi c1643Hi, LK lk) {
        this.A0B = UUID.randomUUID().toString();
        this.A00 = 200;
        this.A01 = lk;
        this.A0A = c1643Hi;
    }

    private Map<String, String> A03(Map<String, String> map) {
        HashMap map2 = new HashMap();
        String strA02 = A02(Sdk.SDKError.Reason.CONFIG_REFRESH_FAILED_VALUE, 4, 8);
        if (map.containsKey(strA02)) {
            map2.put(strA02, map.get(strA02));
        }
        String strA022 = A02(Sdk.SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE, 8, 8);
        if (map.containsKey(strA022)) {
            map2.put(strA022, map.get(strA022));
        }
        return map2;
    }

    private void A05(LK lk) {
        if (!this.A06) {
            this.A01 = lk;
            List<LK> listA0f = this.A01.A0f();
            if (listA0f != null && listA0f.size() > 0) {
                int size = listA0f.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i = 0; i < size; i++) {
                    C1741Lh adapter = new C1741Lh(this.A0A);
                    adapter.A05(listA0f.get(i));
                    arrayList.add(new GT(this.A0A, adapter, (C2831lz) null, this.A04));
                }
                this.A05 = arrayList;
            }
            this.A06 = true;
            this.A07 = A07();
            return;
        }
        throw new IllegalStateException(A02(0, 27, 87));
    }

    private boolean A07() {
        if (((!this.A01.A0j() && !TextUtils.isEmpty(this.A01.A0Y())) || (!TextUtils.isEmpty(this.A01.A0V()) && this.A01.A0j())) && (this.A01.A0I() != null || this.A01.A0j())) {
            C2937ni c2937niA0H = this.A01.A0H();
            if (A0D[2].length() != 10) {
                throw new RuntimeException();
            }
            A0D[6] = "coz4LHwVNN2LSDndRSBnj9WvwXuRM5HO";
            if (c2937niA0H != null || A9N() == AdPlacementType.NATIVE_BANNER) {
                return true;
            }
        }
        return false;
    }

    public final int A08() {
        return this.A01.A02();
    }

    public final int A09() {
        return this.A01.A05();
    }

    public final int A0A() {
        int iA08 = this.A01.A08();
        if (iA08 < 0 || iA08 > 100) {
            return 0;
        }
        return iA08;
    }

    public final int A0B() {
        return this.A00;
    }

    public final int A0C() {
        return this.A01.A0B();
    }

    public final int A0D() {
        return this.A01.A0C();
    }

    public final LK A0E() {
        return this.A01;
    }

    public final InterfaceC2408f2 A0F() {
        return this.A02;
    }

    public final String A0G() {
        return this.A01.A0b();
    }

    public final List<GT> A0H() {
        if (!A0R()) {
            return null;
        }
        return this.A05;
    }

    public final void A0I() {
        if (!this.A09) {
            String strA0c = A0E().A0c();
            if (A0D[2].length() != 10) {
                throw new RuntimeException();
            }
            A0D[5] = "8ArINtb0xmmgo9NmELWQk3NiIhKYvaDc";
            if (strA0c != null) {
                this.A0A.A0A().AIC(strA0c);
            }
            this.A09 = true;
        }
    }

    public final void A0J() {
        Iterator<GT> it;
        if (this.A05 == null) {
            return;
        }
        boolean zIsEmpty = this.A05.isEmpty();
        if (A0D[6].charAt(13) != 'D') {
            throw new RuntimeException();
        }
        A0D[6] = "kj4WnsmCok25qDrlf1kxSYggARLvW33C";
        if (!zIsEmpty) {
            List<GT> list = this.A05;
            if (A0D[2].length() != 10) {
                it = list.iterator();
            } else {
                A0D[2] = "wGXHpE1nya";
                it = list.iterator();
            }
            while (true) {
                boolean zHasNext = it.hasNext();
                if (A0D[2].length() != 10) {
                    A0D[6] = "0lb5BUzW8n1EJDWyWAqaA7d0lZJNpkzV";
                    if (!zHasNext) {
                        return;
                    }
                } else {
                    A0D[5] = "QJQdkpg5cmGOeaue26HVF3aLtsB2qwfM";
                    if (!zHasNext) {
                        return;
                    }
                }
                it.next().unregisterView();
            }
        }
    }

    public final void A0K(InterfaceC2408f2 interfaceC2408f2) {
        this.A02 = interfaceC2408f2;
    }

    public final void A0L(C1643Hi c1643Hi, InterfaceC2408f2 interfaceC2408f2, InterfaceC2909nG interfaceC2909nG, C2467fz c2467fz, InterfaceC2936nh interfaceC2936nh) {
        int iA06;
        this.A02 = interfaceC2408f2;
        this.A04 = interfaceC2936nh;
        JSONObject jSONObjectA03 = c2467fz.A03();
        C2831lz c2831lzA01 = c2467fz.A01();
        if (c2831lzA01 != null) {
            iA06 = c2831lzA01.A06();
        } else {
            iA06 = 200;
        }
        this.A00 = iA06;
        A05(AbstractC2410f4.A00(c1643Hi, jSONObjectA03, AbstractC3077q4.A02(jSONObjectA03, A02(Sdk.SDKError.Reason.ASSET_WRITE_ERROR_VALUE, 2, 94))));
        if (AbstractC2390ej.A06(c1643Hi, this, interfaceC2909nG)) {
            c1643Hi.A0F().A5b();
            interfaceC2408f2.AG3(this, C2947nt.A00(AdErrorType.NO_FILL));
        } else {
            if (interfaceC2408f2 != null) {
                interfaceC2408f2.AG0(this);
            }
            this.A03 = new C2409f3(c1643Hi, this.A0B, this, interfaceC2408f2);
            this.A03.A02();
        }
    }

    public final void A0N(Map<String, String> extraData) {
        this.A0A.A0A().ABr(this.A01.A7z(), extraData);
    }

    public final void A0O(Map<String, String> map) {
        if (A0R() && !this.A08) {
            if (this.A02 != null) {
                this.A02.AG1(this);
            }
            HashMap map2 = new HashMap();
            if (map != null) {
                map2.putAll(map);
            }
            if (this.A01.A0j()) {
                map2.put(A02(99, 7, 85), String.valueOf(A0E().A04()));
                map2.put(A02(92, 7, 63), String.valueOf(A0E().A03()));
            }
            if (!TextUtils.isEmpty(A7z())) {
                if (!this.A01.A0j()) {
                    this.A0A.A0F().A3h();
                    AbstractC2498gU.A02(this.A01.A0a(), AbstractC3086qD.A00(A02(Sdk.SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 6, 86)));
                }
                this.A0A.A0A().AC7(A7z(), map2);
                C3013oz.A00(this.A0A).A0E(AdPlacementType.NATIVE.toString(), A7z());
            }
            if (A0T() || A0U()) {
                A06(map, map2);
            }
            this.A08 = true;
        }
    }

    public final boolean A0P() {
        return true;
    }

    public final boolean A0Q() {
        return A0R() && this.A01.A0E() != null;
    }

    public final boolean A0R() {
        return this.A06 && this.A07;
    }

    public final boolean A0S() {
        return this.A01.A0i();
    }

    public final boolean A0T() {
        if (C2888mv.A1b(this.A0A) && A0R()) {
            boolean zA0k = this.A01.A0k();
            if (A0D[4].charAt(15) != 'f') {
                throw new RuntimeException();
            }
            A0D[6] = "hsrOxssvGH6abDOIeI9T6FJFSNjQSl4a";
            if (zA0k) {
                return true;
            }
        }
        return false;
    }

    public final boolean A0U() {
        if (C2888mv.A1b(this.A0A) && A0R()) {
            boolean zA0l = this.A01.A0l();
            String[] strArr = A0D;
            if (strArr[0].length() != strArr[7].length()) {
                throw new RuntimeException();
            }
            A0D[2] = "qputmJyOXU";
            if (zA0l) {
                return true;
            }
        }
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2389ei
    public final String A7z() {
        return this.A01.A7z();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2389ei
    public final Collection<String> A8Q() {
        return A0E().A8Q();
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2389ei
    public final EnumC2388eh A8w() {
        return A0E().A8w();
    }

    public AdPlacementType A9N() {
        return AdPlacementType.NATIVE;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final boolean ALe() {
        return false;
    }

    @Override // com.facebook.ads.redexgen.X.InterfaceC2393en
    public final void onDestroy() {
        if (this.A03 != null) {
            this.A03.A03();
        }
    }
}
