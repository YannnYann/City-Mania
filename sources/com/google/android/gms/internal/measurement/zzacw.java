package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.api.Api;
import java.io.IOException;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
final class zzacw implements zzafo {
    private final zzacv zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzacw(zzacv zzacvVar) {
        this.zza = zzacvVar;
        zzacvVar.zzd = this;
    }

    private final void zzQ(int i) throws IOException {
        if ((this.zzb & 7) != i) {
            throw new zzaeg("Protocol message tag had invalid wire type.");
        }
    }

    private final void zzR(Object obj, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        zzacv zzacvVar = this.zza;
        int iZzp = zzacvVar.zzp();
        zzacvVar.zzO();
        int iZzD = zzacvVar.zzD(iZzp);
        zzacvVar.zza++;
        zzafpVar.zzg(obj, this, zzadfVar);
        zzacvVar.zzb(0);
        zzacvVar.zza--;
        zzacvVar.zzE(iZzD);
    }

    private final Object zzS(zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        Object objZza = zzafpVar.zza();
        zzR(objZza, zzafpVar, zzadfVar);
        zzafpVar.zzk(objZza);
        return objZza;
    }

    private final void zzT(Object obj, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzafpVar.zzg(obj, this, zzadfVar);
            if (this.zzb == this.zzc) {
            } else {
                throw new zzaeh("Failed to parse the message.");
            }
        } finally {
            this.zzc = i;
        }
    }

    private final Object zzU(zzagm zzagmVar, Class cls, zzadf zzadfVar) throws IOException {
        zzagm zzagmVar2 = zzagm.zza;
        switch (zzagmVar.ordinal()) {
            case 0:
                return Double.valueOf(zze());
            case 1:
                return Float.valueOf(zzf());
            case 2:
                return Long.valueOf(zzh());
            case 3:
                return Long.valueOf(zzg());
            case 4:
                return Integer.valueOf(zzi());
            case 5:
                return Long.valueOf(zzj());
            case 6:
                return Integer.valueOf(zzk());
            case 7:
                return Boolean.valueOf(zzl());
            case 8:
                return zzn();
            case 9:
            default:
                throw new IllegalArgumentException("unsupported field type.");
            case 10:
                zzQ(2);
                return zzS(zzafl.zza().zzb(cls), zzadfVar);
            case 11:
                return zzq();
            case 12:
                return Integer.valueOf(zzr());
            case 13:
                return Integer.valueOf(zzs());
            case 14:
                return Integer.valueOf(zzt());
            case 15:
                return Long.valueOf(zzu());
            case 16:
                return Integer.valueOf(zzv());
            case 17:
                return Long.valueOf(zzw());
        }
    }

    private final void zzV(int i) throws IOException {
        if (this.zza.zzH() != i) {
            throw new zzaeh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private static final void zzW(int i) throws IOException {
        if ((i & 3) != 0) {
            throw new zzaeh("Failed to parse the message.");
        }
    }

    private static final void zzX(int i) throws IOException {
        if ((i & 7) != 0) {
            throw new zzaeh("Failed to parse the message.");
        }
    }

    public static zzacw zza(zzacv zzacvVar) {
        Object obj = zzacvVar.zzd;
        return obj != null ? (zzacw) obj : new zzacw(zzacvVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzA(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaeqVar.zzf(zzacvVar.zzg());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaeqVar.zzf(zzacvVar2.zzg());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Long.valueOf(zzacvVar3.zzg()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Long.valueOf(zzacvVar4.zzg()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzB(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzadvVar.zzh(zzacvVar.zzh());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzh());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzh()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzh()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzC(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzX(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzaeqVar.zzf(zzacvVar.zzi());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaeqVar.zzf(zzacvVar2.zzi());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzX(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Long.valueOf(zzacvVar3.zzi()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Long.valueOf(zzacvVar4.zzi()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzD(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i == 2) {
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzW(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzadvVar.zzh(zzacvVar.zzj());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzj());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzW(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzj()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            if (i2 != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzj()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzE(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaci) {
            zzaci zzaciVar = (zzaci) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaciVar.zzf(zzacvVar.zzk());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaciVar.zzf(zzacvVar2.zzk());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Boolean.valueOf(zzacvVar3.zzk()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Boolean.valueOf(zzacvVar4.zzk()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    public final void zzF(List list, boolean z) throws IOException {
        int iZza;
        int iZza2;
        if ((this.zzb & 7) != 2) {
            throw new zzaeg("Protocol message tag had invalid wire type.");
        }
        if ((list instanceof zzaen) && !z) {
            zzaen zzaenVar = (zzaen) list;
            do {
                zzq();
                zzaenVar.zzb();
                zzacv zzacvVar = this.zza;
                if (zzacvVar.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            do {
                list.add(z ? zzn() : zzm());
                zzacv zzacvVar2 = this.zza;
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar2.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzG(List list, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        int iZza;
        int i = this.zzb;
        if ((i & 7) != 2) {
            throw new zzaeg("Protocol message tag had invalid wire type.");
        }
        do {
            list.add(zzS(zzafpVar, zzadfVar));
            zzacv zzacvVar = this.zza;
            if (zzacvVar.zzG() || this.zzd != 0) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    @Deprecated
    public final void zzH(List list, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        int iZza;
        int i = this.zzb;
        if ((i & 7) != 3) {
            throw new zzaeg("Protocol message tag had invalid wire type.");
        }
        do {
            Object objZza = zzafpVar.zza();
            zzT(objZza, zzafpVar, zzadfVar);
            zzafpVar.zzk(objZza);
            list.add(objZza);
            zzacv zzacvVar = this.zza;
            if (zzacvVar.zzG() || this.zzd != 0) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == i);
        this.zzd = iZza;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzJ(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzadvVar.zzh(zzacvVar.zzp());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzp());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzp()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzp()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzK(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzadvVar.zzh(zzacvVar.zzq());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzq());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzq()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzq()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzL(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i == 2) {
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzW(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzadvVar.zzh(zzacvVar.zzr());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzr());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzW(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzr()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            if (i2 != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzr()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzM(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzX(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzaeqVar.zzf(zzacvVar.zzs());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaeqVar.zzf(zzacvVar2.zzs());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzX(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Long.valueOf(zzacvVar3.zzs()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Long.valueOf(zzacvVar4.zzs()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzN(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadv) {
            zzadv zzadvVar = (zzadv) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzadvVar.zzh(zzacvVar.zzt());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadvVar.zzh(zzacvVar2.zzt());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Integer.valueOf(zzacvVar3.zzt()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Integer.valueOf(zzacvVar4.zzt()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzO(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaeqVar.zzf(zzacvVar.zzu());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaeqVar.zzf(zzacvVar2.zzu());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Long.valueOf(zzacvVar3.zzu()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Long.valueOf(zzacvVar4.zzu()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x005b, code lost:
    
        r10.put(r4, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x005e, code lost:
    
        r9.zza.zzE(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0063, code lost:
    
        return;
     */
    @Override // com.google.android.gms.internal.measurement.zzafo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzP(java.util.Map r10, com.google.android.gms.internal.measurement.zzaeu r11, com.google.android.gms.internal.measurement.zzadf r12) throws java.io.IOException {
        /*
            r9 = this;
            r0 = 2
            r9.zzQ(r0)
            com.google.android.gms.internal.measurement.zzacv r1 = r9.zza
            int r2 = r1.zzp()
            int r2 = r1.zzD(r2)
            java.lang.Object r3 = r11.zzd
            java.lang.Object r4 = r11.zzb
            r5 = r3
        L13:
            int r6 = r9.zzb()     // Catch: java.lang.Throwable -> L37
            r7 = 2147483647(0x7fffffff, float:NaN)
            if (r6 == r7) goto L5b
            boolean r7 = r1.zzG()     // Catch: java.lang.Throwable -> L37
            if (r7 == 0) goto L23
            goto L5b
        L23:
            r7 = 1
            java.lang.String r8 = "Unable to parse map entry."
            if (r6 == r7) goto L46
            if (r6 == r0) goto L3b
            boolean r6 = r9.zzd()     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            if (r6 == 0) goto L31
            goto L13
        L31:
            com.google.android.gms.internal.measurement.zzaeh r6 = new com.google.android.gms.internal.measurement.zzaeh     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            r6.<init>(r8)     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            throw r6     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
        L37:
            r10 = move-exception
            goto L64
        L39:
            r6 = move-exception
            goto L4e
        L3b:
            com.google.android.gms.internal.measurement.zzagm r6 = r11.zzc     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            java.lang.Class r7 = r3.getClass()     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            java.lang.Object r5 = r9.zzU(r6, r7, r12)     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            goto L13
        L46:
            com.google.android.gms.internal.measurement.zzagm r6 = r11.zza     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            r7 = 0
            java.lang.Object r4 = r9.zzU(r6, r7, r7)     // Catch: java.lang.Throwable -> L37 com.google.android.gms.internal.measurement.zzaeg -> L39
            goto L13
        L4e:
            boolean r7 = r9.zzd()     // Catch: java.lang.Throwable -> L37
            if (r7 == 0) goto L55
            goto L13
        L55:
            com.google.android.gms.internal.measurement.zzaeh r10 = new com.google.android.gms.internal.measurement.zzaeh     // Catch: java.lang.Throwable -> L37
            r10.<init>(r8, r6)     // Catch: java.lang.Throwable -> L37
            throw r10     // Catch: java.lang.Throwable -> L37
        L5b:
            r10.put(r4, r5)     // Catch: java.lang.Throwable -> L37
            com.google.android.gms.internal.measurement.zzacv r10 = r9.zza
            r10.zzE(r2)
            return
        L64:
            com.google.android.gms.internal.measurement.zzacv r11 = r9.zza
            r11.zzE(r2)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzacw.zzP(java.util.Map, com.google.android.gms.internal.measurement.zzaeu, com.google.android.gms.internal.measurement.zzadf):void");
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzb() throws IOException {
        int iZza = this.zzd;
        if (iZza != 0) {
            this.zzb = iZza;
            this.zzd = 0;
        } else {
            iZza = this.zza.zza();
            this.zzb = iZza;
        }
        return (iZza == 0 || iZza == this.zzc) ? Api.BaseClientBuilder.API_PRIORITY_OTHER : iZza >>> 3;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzc() {
        return this.zzb;
    }

    public final boolean zzd() throws IOException {
        int i;
        zzacv zzacvVar = this.zza;
        if (zzacvVar.zzG() || (i = this.zzb) == this.zzc) {
            return false;
        }
        return zzacvVar.zzc(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final double zze() throws IOException {
        zzQ(1);
        return this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final float zzf() throws IOException {
        zzQ(5);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final long zzg() throws IOException {
        zzQ(0);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final long zzh() throws IOException {
        zzQ(0);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzi() throws IOException {
        zzQ(0);
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final long zzj() throws IOException {
        zzQ(1);
        return this.zza.zzi();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzk() throws IOException {
        zzQ(5);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final boolean zzl() throws IOException {
        zzQ(0);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final String zzm() throws IOException {
        zzQ(2);
        return this.zza.zzl();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final String zzn() throws IOException {
        zzQ(2);
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzo(Object obj, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        zzQ(2);
        zzR(obj, zzafpVar, zzadfVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzp(Object obj, zzafp zzafpVar, zzadf zzadfVar) throws IOException {
        zzQ(3);
        zzT(obj, zzafpVar, zzadfVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final zzacr zzq() throws IOException {
        zzQ(2);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzr() throws IOException {
        zzQ(0);
        return this.zza.zzp();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzs() throws IOException {
        zzQ(0);
        return this.zza.zzq();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzt() throws IOException {
        zzQ(5);
        return this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final long zzu() throws IOException {
        zzQ(1);
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final int zzv() throws IOException {
        zzQ(0);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final long zzw() throws IOException {
        zzQ(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzx(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadc) {
            zzadc zzadcVar = (zzadc) list;
            int i = this.zzb & 7;
            if (i != 1) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzX(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzadcVar.zzf(zzacvVar.zzd());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadcVar.zzf(zzacvVar2.zzd());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzX(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Double.valueOf(zzacvVar3.zzd()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Double.valueOf(zzacvVar4.zzd()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzy(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzadm) {
            zzadm zzadmVar = (zzadm) list;
            int i = this.zzb & 7;
            if (i == 2) {
                zzacv zzacvVar = this.zza;
                int iZzp = zzacvVar.zzp();
                zzW(iZzp);
                int iZzH = zzacvVar.zzH() + iZzp;
                do {
                    zzadmVar.zzf(zzacvVar.zze());
                } while (zzacvVar.zzH() < iZzH);
                return;
            }
            if (i != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzadmVar.zzf(zzacvVar2.zze());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 == 2) {
                zzacv zzacvVar3 = this.zza;
                int iZzp2 = zzacvVar3.zzp();
                zzW(iZzp2);
                int iZzH2 = zzacvVar3.zzH() + iZzp2;
                do {
                    list.add(Float.valueOf(zzacvVar3.zze()));
                } while (zzacvVar3.zzH() < iZzH2);
                return;
            }
            if (i2 != 5) {
                throw new zzaeg("Protocol message tag had invalid wire type.");
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Float.valueOf(zzacvVar4.zze()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzz(List list) throws IOException {
        int iZza;
        int iZza2;
        if (list instanceof zzaeq) {
            zzaeq zzaeqVar = (zzaeq) list;
            int i = this.zzb & 7;
            if (i != 0) {
                if (i != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar = this.zza;
                int iZzH = zzacvVar.zzH() + zzacvVar.zzp();
                do {
                    zzaeqVar.zzf(zzacvVar.zzf());
                } while (zzacvVar.zzH() < iZzH);
                zzV(iZzH);
                return;
            }
            do {
                zzacv zzacvVar2 = this.zza;
                zzaeqVar.zzf(zzacvVar2.zzf());
                if (zzacvVar2.zzG()) {
                    return;
                } else {
                    iZza2 = zzacvVar2.zza();
                }
            } while (iZza2 == this.zzb);
        } else {
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 != 2) {
                    throw new zzaeg("Protocol message tag had invalid wire type.");
                }
                zzacv zzacvVar3 = this.zza;
                int iZzH2 = zzacvVar3.zzH() + zzacvVar3.zzp();
                do {
                    list.add(Long.valueOf(zzacvVar3.zzf()));
                } while (zzacvVar3.zzH() < iZzH2);
                zzV(iZzH2);
                return;
            }
            do {
                zzacv zzacvVar4 = this.zza;
                list.add(Long.valueOf(zzacvVar4.zzf()));
                if (zzacvVar4.zzG()) {
                    return;
                } else {
                    iZza = zzacvVar4.zza();
                }
            } while (iZza == this.zzb);
            iZza2 = iZza;
        }
        this.zzd = iZza2;
    }

    @Override // com.google.android.gms.internal.measurement.zzafo
    public final void zzI(List list) throws IOException {
        int iZza;
        if ((this.zzb & 7) != 2) {
            throw new zzaeg("Protocol message tag had invalid wire type.");
        }
        do {
            list.add(zzq());
            zzacv zzacvVar = this.zza;
            if (zzacvVar.zzG()) {
                return;
            } else {
                iZza = zzacvVar.zza();
            }
        } while (iZza == this.zzb);
        this.zzd = iZza;
    }
}
