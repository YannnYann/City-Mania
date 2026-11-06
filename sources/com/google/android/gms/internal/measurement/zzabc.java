package com.google.android.gms.internal.measurement;

import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzabc extends AbstractMap {
    private static final Comparator zza = new zzaaz();
    private final Object[] zzb;
    private final int[] zzc;
    private final Set zzd;
    private Integer zze;
    private String zzf;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.zzabc, java.util.AbstractMap] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.measurement.zzabc] */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public zzabc(zzabc zzabcVar, zzabc zzabcVar2) {
        int i;
        Object objZza;
        Object[] objArr;
        ?? abstractMap = new AbstractMap();
        abstractMap.zzd = new zzabb(abstractMap, -1);
        abstractMap.zze = null;
        abstractMap.zzf = null;
        int size = zzabcVar.size() + zzabcVar2.size();
        int i2 = zzabcVar.zzc[zzabcVar.size()] + zzabcVar2.zzc[zzabcVar2.size()];
        int i3 = 1;
        int i4 = size + 1;
        Object[] objArr2 = new Object[i2];
        int[] iArr = new int[i4];
        int i5 = 0;
        iArr[0] = size;
        Map.Entry entryZzg = zzabcVar.zzg(0);
        Map.Entry entryZzg2 = zzabcVar2.zzg(0);
        int i6 = 0;
        int i7 = 0;
        int iZzd = size;
        Map.Entry entryZzg3 = entryZzg;
        int i8 = 0;
        while (true) {
            if (entryZzg3 == null && entryZzg2 == null) {
                break;
            }
            int i9 = i8 + 1;
            if (entryZzg3 == null) {
                i = i3;
            } else {
                if (entryZzg2 == null) {
                    i = i3;
                } else {
                    i = i3;
                    int iCompareTo = ((String) entryZzg3.getKey()).compareTo((String) entryZzg2.getKey());
                    if (iCompareTo == 0) {
                        int i10 = i6 + 1;
                        int i11 = i7 + 1;
                        objArr2[i8] = abstractMap.zzf((String) entryZzg3.getKey(), i8);
                        zzabb zzabbVar = (zzabb) entryZzg3.getValue();
                        zzabb zzabbVar2 = (zzabb) entryZzg2.getValue();
                        int i12 = i5;
                        int i13 = i12;
                        abstractMap = abstractMap;
                        while (true) {
                            if (i12 >= zzabbVar.zzc() - zzabbVar.zzb() && i13 >= zzabbVar2.zzc() - zzabbVar2.zzb()) {
                                break;
                            }
                            int iCompare = i12 == zzabbVar.zzc() - zzabbVar.zzb() ? i : i13 == zzabbVar2.zzc() - zzabbVar2.zzb() ? -1 : i5;
                            if (iCompare == 0) {
                                int i14 = zzabe.zza;
                                iCompare = zzabe.zzb.compare(zzabbVar.zza(i12), zzabbVar2.zza(i13));
                            }
                            if (iCompare < 0) {
                                objZza = zzabbVar.zza(i12);
                                i12++;
                            } else {
                                int i15 = i13 + 1;
                                objZza = zzabbVar2.zza(i13);
                                i12 = iCompare == 0 ? i12 + 1 : i12;
                                i13 = i15;
                            }
                            objArr2[iZzd] = objZza;
                            iZzd++;
                            i5 = 0;
                            abstractMap = this;
                        }
                        iArr[i9] = iZzd;
                        entryZzg3 = zzabcVar.zzg(i11);
                        entryZzg2 = zzabcVar2.zzg(i10);
                        i7 = i11;
                        i6 = i10;
                        i8 = i9;
                        i3 = i;
                    } else {
                        if (iCompareTo < 0) {
                        }
                        i5 = 0;
                        abstractMap = this;
                        i8 = i9;
                        i3 = i;
                    }
                }
                i7++;
                iZzd = zzd(entryZzg3, i8, iZzd, objArr2, iArr);
                entryZzg3 = zzabcVar.zzg(i7);
                i5 = 0;
                abstractMap = this;
                i8 = i9;
                i3 = i;
            }
            Map.Entry entry = entryZzg3;
            i6++;
            int iZzd2 = zzd(entryZzg2, i8, iZzd, objArr2, iArr);
            entryZzg2 = zzabcVar2.zzg(i6);
            iZzd = iZzd2;
            entryZzg3 = entry;
            i5 = 0;
            abstractMap = this;
            i8 = i9;
            i3 = i;
        }
        int i16 = iArr[i5];
        int i17 = i16 - i8;
        if (i17 != 0) {
            for (int i18 = i5; i18 <= i8; i18 += i3) {
                iArr[i18] = iArr[i18] - i17;
            }
            int i19 = iArr[i8];
            int i20 = i19 - i8;
            if (zze(i2, i19)) {
                objArr = new Object[i19];
                System.arraycopy(objArr2, i5, objArr, i5, i8);
            } else {
                objArr = objArr2;
            }
            System.arraycopy(objArr2, i16, objArr, i8, i20);
            objArr2 = objArr;
        }
        abstractMap.zzb = objArr2;
        int i21 = iArr[i5] + i3;
        abstractMap.zzc = zze(i4, i21) ? Arrays.copyOf(iArr, i21) : iArr;
    }

    private final int zzd(Map.Entry entry, int i, int i2, Object[] objArr, int[] iArr) {
        zzabb zzabbVar = (zzabb) entry.getValue();
        int iZzc = zzabbVar.zzc() - zzabbVar.zzb();
        System.arraycopy(zzabbVar.zzb.zzb, zzabbVar.zzb(), objArr, i2, iZzc);
        objArr[i] = zzf((String) entry.getKey(), i);
        int i3 = i2 + iZzc;
        iArr[i + 1] = i3;
        return i3;
    }

    private static boolean zze(int i, int i2) {
        return i > 16 && i * 9 > i2 * 10;
    }

    private final Map.Entry zzf(String str, int i) {
        return new AbstractMap.SimpleImmutableEntry(str, new zzabb(this, i));
    }

    private final Map.Entry zzg(int i) {
        if (i < this.zzc[0]) {
            return (Map.Entry) this.zzb[i];
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        return this.zzd;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        if (this.zze == null) {
            this.zze = Integer.valueOf(super.hashCode());
        }
        return this.zze.intValue();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        if (this.zzf == null) {
            this.zzf = super.toString();
        }
        return this.zzf;
    }

    public final /* synthetic */ Object[] zzb() {
        return this.zzb;
    }

    public final /* synthetic */ int[] zzc() {
        return this.zzc;
    }

    public zzabc(List list) {
        this.zzd = new zzabb(this, -1);
        this.zze = null;
        this.zzf = null;
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw null;
        }
        int size = list.size();
        Object[] objArr = new Object[size];
        Iterator it2 = list.iterator();
        if (it2.hasNext()) {
            throw null;
        }
        int[] iArr = {0};
        this.zzb = zze(size, 0) ? Arrays.copyOf(objArr, 0) : objArr;
        this.zzc = iArr;
    }
}
