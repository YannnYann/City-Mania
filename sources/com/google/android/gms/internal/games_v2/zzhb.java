package com.google.android.gms.internal.games_v2;

import java.util.Arrays;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzhb extends zzgt {
    static final zzgt zza = new zzhb(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient Object zzc;
    private final transient int zzd;

    private zzhb(Object obj, Object[] objArr, int i) {
        this.zzc = obj;
        this.zzb = objArr;
        this.zzd = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v14 */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v32 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object[]] */
    public static zzhb zzd(int i, Object[] objArr, zzgs zzgsVar) {
        int iHighestOneBit;
        boolean z;
        int i2;
        int i3;
        short[] sArr;
        boolean z2;
        ?? r16;
        int i4 = i;
        Object[] objArrCopyOf = objArr;
        if (i4 == 0) {
            return (zzhb) zza;
        }
        zzgr zzgrVar = null;
        ?? r2 = 0;
        zzgr zzgrVar2 = null;
        zzgr zzgrVar3 = null;
        boolean z3 = false;
        int i5 = 1;
        if (i4 == 1) {
            Object obj = objArrCopyOf[0];
            Objects.requireNonNull(obj);
            Object obj2 = objArrCopyOf[1];
            Objects.requireNonNull(obj2);
            zzgi.zza(obj, obj2);
            return new zzhb(null, objArrCopyOf, 1);
        }
        zzgd.zzb(i4, objArrCopyOf.length >> 1, "index");
        int iMax = Math.max(i4, 2);
        if (iMax < 751619276) {
            iHighestOneBit = Integer.highestOneBit(iMax - 1);
            do {
                iHighestOneBit += iHighestOneBit;
            } while (((double) iHighestOneBit) * 0.7d < iMax);
        } else {
            iHighestOneBit = 1073741824;
            if (iMax >= 1073741824) {
                throw new IllegalArgumentException("collection too large");
            }
        }
        if (i4 == 1) {
            Object obj3 = objArrCopyOf[0];
            Objects.requireNonNull(obj3);
            Object obj4 = objArrCopyOf[1];
            Objects.requireNonNull(obj4);
            zzgi.zza(obj3, obj4);
            r16 = 0;
            i4 = 1;
            i2 = 1;
        } else {
            int i6 = iHighestOneBit - 1;
            if (iHighestOneBit <= 128) {
                byte[] bArr = new byte[iHighestOneBit];
                Arrays.fill(bArr, (byte) -1);
                int i7 = 0;
                int i8 = 0;
                while (i7 < i4) {
                    int i9 = i8 + i8;
                    int i10 = i7 + i7;
                    Object obj5 = objArrCopyOf[i10];
                    Objects.requireNonNull(obj5);
                    Object obj6 = objArrCopyOf[i10 ^ 1];
                    Objects.requireNonNull(obj6);
                    zzgi.zza(obj5, obj6);
                    int iZza = zzgj.zza(obj5.hashCode());
                    while (true) {
                        int i11 = iZza & i6;
                        z2 = z3;
                        int i12 = bArr[i11] & 255;
                        if (i12 == 255) {
                            bArr[i11] = (byte) i9;
                            if (i8 < i7) {
                                objArrCopyOf[i9] = obj5;
                                objArrCopyOf[i9 ^ 1] = obj6;
                            }
                            i8++;
                        } else {
                            if (obj5.equals(objArrCopyOf[i12 == true ? 1 : 0])) {
                                int i13 = ~i12;
                                Object obj7 = objArrCopyOf[i13 == true ? 1 : 0];
                                Objects.requireNonNull(obj7);
                                zzgr zzgrVar4 = new zzgr(obj5, obj6, obj7);
                                objArrCopyOf[i13 == true ? 1 : 0] = obj6;
                                zzgrVar2 = zzgrVar4;
                                break;
                            }
                            iZza = i11 + 1;
                            z3 = z2;
                        }
                    }
                    i7++;
                    z3 = z2;
                }
                z = z3;
                if (i8 == i4) {
                    i2 = 1;
                    r2 = bArr;
                    r16 = z;
                } else {
                    sArr = new Object[3];
                    sArr[z ? 1 : 0] = bArr;
                    sArr[1] = Integer.valueOf(i8);
                    sArr[2] = zzgrVar2;
                    r2 = sArr;
                    i2 = 1;
                    r16 = z;
                }
            } else {
                z = false;
                if (iHighestOneBit <= 32768) {
                    sArr = new short[iHighestOneBit];
                    Arrays.fill(sArr, (short) -1);
                    int i14 = 0;
                    for (int i15 = 0; i15 < i4; i15++) {
                        int i16 = i14 + i14;
                        int i17 = i15 + i15;
                        Object obj8 = objArrCopyOf[i17];
                        Objects.requireNonNull(obj8);
                        Object obj9 = objArrCopyOf[i17 ^ 1];
                        Objects.requireNonNull(obj9);
                        zzgi.zza(obj8, obj9);
                        int iZza2 = zzgj.zza(obj8.hashCode());
                        while (true) {
                            int i18 = iZza2 & i6;
                            char c = (char) sArr[i18];
                            if (c == 65535) {
                                sArr[i18] = (short) i16;
                                if (i14 < i15) {
                                    objArrCopyOf[i16] = obj8;
                                    objArrCopyOf[i16 ^ 1] = obj9;
                                }
                                i14++;
                            } else {
                                if (obj8.equals(objArrCopyOf[c])) {
                                    int i19 = c ^ 1;
                                    Object obj10 = objArrCopyOf[i19 == true ? 1 : 0];
                                    Objects.requireNonNull(obj10);
                                    zzgr zzgrVar5 = new zzgr(obj8, obj9, obj10);
                                    objArrCopyOf[i19 == true ? 1 : 0] = obj9;
                                    zzgrVar3 = zzgrVar5;
                                    break;
                                }
                                iZza2 = i18 + 1;
                            }
                        }
                    }
                    if (i14 == i4) {
                        r2 = sArr;
                        i2 = 1;
                        r16 = z;
                    } else {
                        i2 = 1;
                        r2 = new Object[]{sArr, Integer.valueOf(i14), zzgrVar3};
                        r16 = z;
                    }
                } else {
                    int[] iArr = new int[iHighestOneBit];
                    Arrays.fill(iArr, -1);
                    int i20 = 0;
                    int i21 = 0;
                    while (i20 < i4) {
                        int i22 = i21 + i21;
                        int i23 = i20 + i20;
                        Object obj11 = objArrCopyOf[i23];
                        Objects.requireNonNull(obj11);
                        Object obj12 = objArrCopyOf[i23 ^ i5];
                        Objects.requireNonNull(obj12);
                        zzgi.zza(obj11, obj12);
                        int iZza3 = zzgj.zza(obj11.hashCode());
                        while (true) {
                            int i24 = iZza3 & i6;
                            int i25 = iArr[i24];
                            if (i25 == -1) {
                                iArr[i24] = i22;
                                if (i21 < i20) {
                                    objArrCopyOf[i22] = obj11;
                                    objArrCopyOf[i22 ^ 1] = obj12;
                                }
                                i21++;
                                i3 = i5;
                            } else {
                                i3 = i5;
                                if (obj11.equals(objArrCopyOf[i25])) {
                                    int i26 = i25 ^ 1;
                                    Object obj13 = objArrCopyOf[i26];
                                    Objects.requireNonNull(obj13);
                                    zzgr zzgrVar6 = new zzgr(obj11, obj12, obj13);
                                    objArrCopyOf[i26] = obj12;
                                    zzgrVar = zzgrVar6;
                                    break;
                                }
                                iZza3 = i24 + 1;
                                i5 = i3;
                            }
                        }
                        i20++;
                        i5 = i3;
                    }
                    i2 = i5;
                    if (i21 == i4) {
                        r2 = iArr;
                        r16 = z;
                    } else {
                        Object[] objArr2 = new Object[3];
                        objArr2[0] = iArr;
                        objArr2[i2] = Integer.valueOf(i21);
                        objArr2[2] = zzgrVar;
                        r2 = objArr2;
                        r16 = z;
                    }
                }
            }
        }
        boolean z4 = r2 instanceof Object[];
        ?? r22 = r2;
        if (z4) {
            Object[] objArr3 = (Object[]) r2;
            zzgsVar.zzc = (zzgr) objArr3[2];
            Object obj14 = objArr3[r16];
            int iIntValue = ((Integer) objArr3[i2]).intValue();
            objArrCopyOf = Arrays.copyOf(objArrCopyOf, iIntValue + iIntValue);
            r22 = obj14;
            i4 = iIntValue;
        }
        return new zzhb(r22, objArrCopyOf, i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:4:0x0003  */
    /* JADX WARN: Removed duplicated region for block: B:4:0x0003 A[EDGE_INSN: B:44:0x0003->B:4:0x0003 BREAK  A[LOOP:0: B:16:0x0038->B:22:0x004e], EDGE_INSN: B:46:0x0003->B:4:0x0003 BREAK  A[LOOP:1: B:26:0x0063->B:32:0x007a], EDGE_INSN: B:48:0x0003->B:4:0x0003 BREAK  A[LOOP:2: B:34:0x0089->B:43:0x00a0]] */
    @Override // com.google.android.gms.internal.games_v2.zzgt, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object get(java.lang.Object r10) {
        /*
            r9 = this;
            r0 = 0
            if (r10 != 0) goto L6
        L3:
            r10 = r0
            goto L9c
        L6:
            int r1 = r9.zzd
            java.lang.Object[] r2 = r9.zzb
            r3 = 1
            if (r1 != r3) goto L20
            r1 = 0
            r1 = r2[r1]
            java.util.Objects.requireNonNull(r1)
            boolean r10 = r1.equals(r10)
            if (r10 == 0) goto L3
            r10 = r2[r3]
            java.util.Objects.requireNonNull(r10)
            goto L9c
        L20:
            java.lang.Object r1 = r9.zzc
            if (r1 != 0) goto L25
            goto L3
        L25:
            boolean r4 = r1 instanceof byte[]
            r5 = -1
            if (r4 == 0) goto L51
            r4 = r1
            byte[] r4 = (byte[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.games_v2.zzgj.zza(r1)
        L38:
            r1 = r1 & r6
            r5 = r4[r1]
            r7 = 255(0xff, float:3.57E-43)
            r5 = r5 & r7
            if (r5 != r7) goto L41
            goto L3
        L41:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L4e
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L4e:
            int r1 = r1 + 1
            goto L38
        L51:
            boolean r4 = r1 instanceof short[]
            if (r4 == 0) goto L7d
            r4 = r1
            short[] r4 = (short[]) r4
            int r1 = r4.length
            int r6 = r1 + (-1)
            int r1 = r10.hashCode()
            int r1 = com.google.android.gms.internal.games_v2.zzgj.zza(r1)
        L63:
            r1 = r1 & r6
            short r5 = r4[r1]
            char r5 = (char) r5
            r7 = 65535(0xffff, float:9.1834E-41)
            if (r5 != r7) goto L6d
            goto L3
        L6d:
            r7 = r2[r5]
            boolean r7 = r10.equals(r7)
            if (r7 == 0) goto L7a
            r10 = r5 ^ 1
            r10 = r2[r10]
            goto L9c
        L7a:
            int r1 = r1 + 1
            goto L63
        L7d:
            int[] r1 = (int[]) r1
            int r4 = r1.length
            int r4 = r4 + r5
            int r6 = r10.hashCode()
            int r6 = com.google.android.gms.internal.games_v2.zzgj.zza(r6)
        L89:
            r6 = r6 & r4
            r7 = r1[r6]
            if (r7 != r5) goto L90
            goto L3
        L90:
            r8 = r2[r7]
            boolean r8 = r10.equals(r8)
            if (r8 == 0) goto La0
            r10 = r7 ^ 1
            r10 = r2[r10]
        L9c:
            if (r10 != 0) goto L9f
            return r0
        L9f:
            return r10
        La0:
            int r6 = r6 + 1
            goto L89
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.games_v2.zzhb.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.games_v2.zzgt, java.util.Map
    /* JADX INFO: renamed from: zza */
    public final zzgu entrySet() {
        return new zzgy(this, this.zzb, 0, this.zzd);
    }

    @Override // com.google.android.gms.internal.games_v2.zzgt, java.util.Map
    /* JADX INFO: renamed from: zzb */
    public final zzgu keySet() {
        return new zzgz(this, new zzha(this.zzb, 0, this.zzd));
    }

    @Override // com.google.android.gms.internal.games_v2.zzgt, java.util.Map
    /* JADX INFO: renamed from: zzc */
    public final zzgm values() {
        return new zzha(this.zzb, 1, this.zzd);
    }
}
