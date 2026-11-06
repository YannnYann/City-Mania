package com.google.android.gms.measurement.internal;

import android.app.BroadcastOptions;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzahh;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.internal.measurement.zzhv;
import com.ironsource.C3522b4;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@23.2.0 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzpg implements zzjg {
    public static volatile zzpg zzb;
    public List zzA;
    public long zzB;
    public final Map zzC;
    public final Map zzD;
    public final Map zzE;
    public zzlu zzG;
    public String zzH;
    public zzaz zzI;
    public long zzJ;
    public long zza;
    public final zzht zzc;
    public final zzgz zzd;
    public zzaw zze;
    public zzhb zzf;
    public zzok zzg;
    public zzad zzh;
    public final zzpk zzi;
    public zzlp zzj;
    public zznn zzk;
    public final zzou zzl;
    public zzhk zzm;
    public final zzic zzn;
    public boolean zzp;
    public List zzq;
    public int zzs;
    public int zzt;
    public boolean zzu;
    public boolean zzv;
    public boolean zzw;
    public FileLock zzx;
    public FileChannel zzy;
    public List zzz;
    public final AtomicBoolean zzo = new AtomicBoolean(false);
    public final Deque zzr = new LinkedList();
    public final Map zzF = new HashMap();
    public final zzpo zzK = new zzpb(this);

    public zzpg(zzph zzphVar, zzic zzicVar) {
        Preconditions.checkNotNull(zzphVar);
        this.zzn = zzic.zzy(zzphVar.zza, null, null, null);
        this.zzB = -1L;
        this.zzl = new zzou(this);
        zzpk zzpkVar = new zzpk(this);
        zzpkVar.zzaz();
        this.zzi = zzpkVar;
        zzgz zzgzVar = new zzgz(this);
        zzgzVar.zzaz();
        this.zzd = zzgzVar;
        zzht zzhtVar = new zzht(this);
        zzhtVar.zzaz();
        this.zzc = zzhtVar;
        this.zzC = new HashMap();
        this.zzD = new HashMap();
        this.zzE = new HashMap();
        zzaX().zzj(new zzov(this, zzphVar));
    }

    public static zzpg zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zzb == null) {
            synchronized (zzpg.class) {
                try {
                    if (zzb == null) {
                        zzb = new zzpg((zzph) Preconditions.checkNotNull(new zzph(context)), null);
                    }
                } finally {
                }
            }
        }
        return zzb;
    }

    public static final void zzaB(com.google.android.gms.internal.measurement.zzhr zzhrVar, int i, String str) {
        List listZza = zzhrVar.zza();
        for (int i2 = 0; i2 < listZza.size(); i2++) {
            if ("_err".equals(((com.google.android.gms.internal.measurement.zzhw) listZza.get(i2)).zzb())) {
                return;
            }
        }
        zzhv zzhvVarZzn = com.google.android.gms.internal.measurement.zzhw.zzn();
        zzhvVarZzn.zzb("_err");
        zzhvVarZzn.zzf(i);
        com.google.android.gms.internal.measurement.zzhw zzhwVar = (com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn.zzbd();
        zzhv zzhvVarZzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
        zzhvVarZzn2.zzb("_ev");
        zzhvVarZzn2.zzd(str);
        com.google.android.gms.internal.measurement.zzhw zzhwVar2 = (com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn2.zzbd();
        zzhrVar.zzf(zzhwVar);
        zzhrVar.zzf(zzhwVar2);
    }

    public static final void zzaC(com.google.android.gms.internal.measurement.zzhr zzhrVar, String str) {
        List listZza = zzhrVar.zza();
        for (int i = 0; i < listZza.size(); i++) {
            if (str.equals(((com.google.android.gms.internal.measurement.zzhw) listZza.get(i)).zzb())) {
                zzhrVar.zzj(i);
                return;
            }
        }
    }

    public static void zzaR(Context context, Intent intent) {
        if (Build.VERSION.SDK_INT < 34) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        }
    }

    public static final boolean zzaS(zzr zzrVar) {
        return !TextUtils.isEmpty(zzrVar.zzb);
    }

    public static final zzos zzaT(zzos zzosVar) {
        if (zzosVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zzosVar.zzax()) {
            return zzosVar;
        }
        throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(zzosVar.getClass())));
    }

    public static final Boolean zzaU(zzr zzrVar) {
        Boolean bool = zzrVar.zzp;
        String str = zzrVar.zzC;
        if (!TextUtils.isEmpty(str)) {
            zzji zzjiVarZza = zze.zzc(str).zza();
            zzji zzjiVar = zzji.UNINITIALIZED;
            int iOrdinal = zzjiVarZza.ordinal();
            if (iOrdinal == 0 || iOrdinal == 1) {
                return null;
            }
            if (iOrdinal == 2) {
                return Boolean.TRUE;
            }
            if (iOrdinal == 3) {
                return Boolean.FALSE;
            }
        }
        return bool;
    }

    public final void zzA(String str, zzjl zzjlVar) {
        zzaX().zzg();
        zzu();
        this.zzC.put(str, zzjlVar);
        zzj().zzaa(str, zzjlVar);
    }

    public final zzjl zzB(String str) {
        zzjl zzjlVar = zzjl.zza;
        zzaX().zzg();
        zzu();
        zzjl zzjlVarZzY = (zzjl) this.zzC.get(str);
        if (zzjlVarZzY == null) {
            zzjlVarZzY = zzj().zzY(str);
            if (zzjlVarZzY == null) {
                zzjlVarZzY = zzjl.zza;
            }
            zzA(str, zzjlVarZzY);
        }
        return zzjlVarZzY;
    }

    public final long zzC() {
        long jCurrentTimeMillis = zzba().currentTimeMillis();
        zznn zznnVar = this.zzk;
        zznnVar.zzay();
        zznnVar.zzg();
        zzhe zzheVar = zznnVar.zzf;
        long jZza = zzheVar.zza();
        if (jZza == 0) {
            jZza = ((long) zznnVar.zzu.zzk().zzf().nextInt(86400000)) + 1;
            zzheVar.zzb(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    public final void zzD(zzbh zzbhVar, String str) {
        zzh zzhVarZzu = zzj().zzu(str);
        if (zzhVarZzu == null || TextUtils.isEmpty(zzhVarZzu.zzr())) {
            zzaW().zzj().zzb("No app data available; dropping event", str);
            return;
        }
        Boolean boolZzaO = zzaO(zzhVarZzu);
        if (boolZzaO == null) {
            if (!"_ui".equals(zzbhVar.zza)) {
                zzaW().zze().zzb("Could not find package. appId", zzgu.zzl(str));
            }
        } else if (!boolZzaO.booleanValue()) {
            zzaW().zzb().zzb("App version does not match; dropping event. appId", zzgu.zzl(str));
            return;
        }
        zzE(zzbhVar, new zzr(str, zzhVarZzu.zzf(), zzhVarZzu.zzr(), zzhVarZzu.zzt(), zzhVarZzu.zzv(), zzhVarZzu.zzx(), zzhVarZzu.zzz(), (String) null, zzhVarZzu.zzD(), false, zzhVarZzu.zzl(), 0L, 0, zzhVarZzu.zzac(), false, zzhVarZzu.zzae(), zzhVarZzu.zzB(), zzhVarZzu.zzag(), zzB(str).zzl(), "", (String) null, zzhVarZzu.zzai(), zzhVarZzu.zzak(), zzB(str).zzb(), zzx(str).zze(), zzhVarZzu.zzao(), zzhVarZzu.zzaw(), zzhVarZzu.zzay(), zzhVarZzu.zzaH(), 0L, zzhVarZzu.zzaL(), 0L));
    }

    public final void zzE(zzbh zzbhVar, zzr zzrVar) {
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzgv zzgvVarZza = zzgv.zza(zzbhVar);
        zzt().zzK(zzgvVarZza.zze, zzj().zzV(str));
        zzt().zzI(zzgvVarZza, zzd().zzd(str));
        zzbh zzbhVarZzb = zzgvVarZza.zzb();
        if (!zzd().zzp(null, zzfy.zzaZ) && "_cmp".equals(zzbhVarZzb.zza)) {
            zzbf zzbfVar = zzbhVarZzb.zzb;
            if ("referrer API v2".equals(zzbfVar.zzd("_cis"))) {
                String strZzd = zzbfVar.zzd("gclid");
                if (!TextUtils.isEmpty(strZzd)) {
                    zzad(new zzpl("_lgclid", zzbhVarZzb.zzd, strZzd, "auto"), zzrVar);
                }
            }
        }
        zzF(zzbhVarZzb, zzrVar);
    }

    public final void zzF(zzbh zzbhVar, zzr zzrVar) {
        long j;
        List<zzah> listZzt;
        List listZzt2;
        List<zzah> listZzt3;
        long j2;
        String str;
        Preconditions.checkNotNull(zzrVar);
        String str2 = zzrVar.zza;
        Preconditions.checkNotEmpty(str2);
        zzaX().zzg();
        zzu();
        long j3 = zzbhVar.zzd;
        long j4 = zzbhVar.zze;
        zzgv zzgvVarZza = zzgv.zza(zzbhVar);
        zzaX().zzg();
        zzlu zzluVar = this.zzG;
        if (zzluVar == null || (str = this.zzH) == null || !str.equals(str2)) {
            zzluVar = null;
        }
        zzpp.zzay(zzluVar, zzgvVarZza.zze, false);
        zzbh zzbhVarZzb = zzgvVarZza.zzb();
        zzp();
        if (zzpk.zzG(zzbhVarZzb, zzrVar)) {
            if (!zzrVar.zzh) {
                zzap(zzrVar);
                return;
            }
            List list = zzrVar.zzr;
            if (list != null) {
                String str3 = zzbhVarZzb.zza;
                if (!list.contains(str3)) {
                    zzaW().zzj().zzd("Dropping non-safelisted event. appId, event name, origin", str2, str3, zzbhVarZzb.zzc);
                    return;
                }
                Bundle bundleZzf = zzbhVarZzb.zzb.zzf();
                j = j3;
                bundleZzf.putLong("ga_safelisted", 1L);
                zzbhVarZzb = new zzbh(str3, new zzbf(bundleZzf), zzbhVarZzb.zzc, zzbhVarZzb.zzd, zzbhVarZzb.zze);
            } else {
                j = j3;
            }
            zzj().zzb();
            try {
                String str4 = zzbhVarZzb.zza;
                if ("_s".equals(str4) && !zzj().zzQ(str2, "_s") && zzbhVarZzb.zzb.zzb("_sid").longValue() != 0) {
                    if (zzj().zzQ(str2, "_f") || zzj().zzQ(str2, "_v")) {
                        zzj().zzX(str2, null, "_sid", zzG(str2, zzbhVarZzb));
                    } else {
                        zzj().zzX(str2, Long.valueOf(zzba().currentTimeMillis() - 15000), "_sid", zzG(str2, zzbhVarZzb));
                    }
                }
                zzaw zzawVarZzj = zzj();
                Preconditions.checkNotEmpty(str2);
                zzawVarZzj.zzg();
                zzawVarZzj.zzay();
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i < 0) {
                    zzawVarZzj.zzu.zzaW().zze().zzc("Invalid time querying timed out conditional properties", zzgu.zzl(str2), Long.valueOf(j));
                    listZzt = Collections.EMPTY_LIST;
                } else {
                    listZzt = zzawVarZzj.zzt("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzah zzahVar : listZzt) {
                    if (zzahVar != null) {
                        zzaW().zzk().zzd("User property timed out", zzahVar.zza, this.zzn.zzl().zzc(zzahVar.zzc.zzb), zzahVar.zzc.zza());
                        zzbh zzbhVar2 = zzahVar.zzg;
                        if (zzbhVar2 != null) {
                            j2 = j;
                            zzH(new zzbh(zzbhVar2, j2, j4), zzrVar);
                        } else {
                            j2 = j;
                        }
                        zzj().zzr(str2, zzahVar.zzc.zzb);
                        j = j2;
                    }
                }
                long j5 = j;
                zzaw zzawVarZzj2 = zzj();
                Preconditions.checkNotEmpty(str2);
                zzawVarZzj2.zzg();
                zzawVarZzj2.zzay();
                if (i < 0) {
                    zzawVarZzj2.zzu.zzaW().zze().zzc("Invalid time querying expired conditional properties", zzgu.zzl(str2), Long.valueOf(j5));
                    listZzt2 = Collections.EMPTY_LIST;
                } else {
                    listZzt2 = zzawVarZzj2.zzt("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j5)});
                }
                ArrayList arrayList = new ArrayList(listZzt2.size());
                Iterator it = listZzt2.iterator();
                while (it.hasNext()) {
                    zzah zzahVar2 = (zzah) it.next();
                    if (zzahVar2 != null) {
                        Iterator it2 = it;
                        int i2 = i;
                        zzaW().zzk().zzd("User property expired", zzahVar2.zza, this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
                        zzj().zzk(str2, zzahVar2.zzc.zzb);
                        zzbh zzbhVar3 = zzahVar2.zzk;
                        if (zzbhVar3 != null) {
                            arrayList.add(zzbhVar3);
                        }
                        zzj().zzr(str2, zzahVar2.zzc.zzb);
                        it = it2;
                        i = i2;
                    }
                }
                int i3 = i;
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    zzH(new zzbh((zzbh) it3.next(), j5, j4), zzrVar);
                    j4 = j4;
                }
                long j6 = j4;
                zzaw zzawVarZzj3 = zzj();
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str4);
                zzawVarZzj3.zzg();
                zzawVarZzj3.zzay();
                if (i3 < 0) {
                    zzic zzicVar = zzawVarZzj3.zzu;
                    zzicVar.zzaW().zze().zzd("Invalid time querying triggered conditional properties", zzgu.zzl(str2), zzicVar.zzl().zza(str4), Long.valueOf(j5));
                    listZzt3 = Collections.EMPTY_LIST;
                } else {
                    listZzt3 = zzawVarZzj3.zzt("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str4, String.valueOf(j5)});
                }
                ArrayList arrayList2 = new ArrayList(listZzt3.size());
                for (zzah zzahVar3 : listZzt3) {
                    if (zzahVar3 != null) {
                        zzpl zzplVar = zzahVar3.zzc;
                        long j7 = j5;
                        zzpn zzpnVar = new zzpn((String) Preconditions.checkNotNull(zzahVar3.zza), zzahVar3.zzb, zzplVar.zzb, j7, Preconditions.checkNotNull(zzplVar.zza()));
                        j5 = j7;
                        if (zzj().zzl(zzpnVar)) {
                            zzaW().zzk().zzd("User property triggered", zzahVar3.zza, this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                        } else {
                            zzaW().zzb().zzd("Too many active user properties, ignoring", zzgu.zzl(zzahVar3.zza), this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                        }
                        zzbh zzbhVar4 = zzahVar3.zzi;
                        if (zzbhVar4 != null) {
                            arrayList2.add(zzbhVar4);
                        }
                        zzahVar3.zzc = new zzpl(zzpnVar);
                        zzahVar3.zze = true;
                        zzj().zzp(zzahVar3);
                    }
                }
                zzH(zzbhVarZzb, zzrVar);
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    long j8 = j6;
                    zzH(new zzbh((zzbh) it4.next(), j5, j8), zzrVar);
                    j6 = j8;
                }
                zzj().zzc();
                zzj().zzd();
            } catch (Throwable th) {
                zzj().zzd();
                throw th;
            }
        }
    }

    public final Bundle zzG(String str, zzbh zzbhVar) {
        Bundle bundle = new Bundle();
        bundle.putLong("_sid", zzbhVar.zzb.zzb("_sid").longValue());
        zzpn zzpnVarZzm = zzj().zzm(str, "_sno");
        if (zzpnVarZzm != null) {
            Object obj = zzpnVarZzm.zze;
            if (obj instanceof Long) {
                bundle.putLong("_sno", ((Long) obj).longValue());
            }
        }
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0360 A[Catch: all -> 0x0176, TryCatch #1 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02ec, B:98:0x031f, B:100:0x0360, B:102:0x0365, B:103:0x037c, B:105:0x0387, B:107:0x03a0, B:109:0x03a5, B:110:0x03bc, B:113:0x03de, B:117:0x0401, B:118:0x0418, B:120:0x0424, B:123:0x0441, B:124:0x0455, B:126:0x045d, B:128:0x0469, B:130:0x046f, B:131:0x0476, B:132:0x0483, B:138:0x04c5, B:139:0x04da, B:141:0x0504, B:144:0x051b, B:146:0x0525, B:149:0x0560, B:151:0x058b, B:153:0x05c3, B:154:0x05c6, B:156:0x05ce, B:157:0x05d1, B:159:0x05d9, B:160:0x05dc, B:162:0x05e4, B:163:0x05e7, B:165:0x05f0, B:166:0x05f4, B:168:0x0601, B:169:0x0604, B:171:0x0638, B:173:0x0642, B:177:0x0659, B:182:0x0666, B:185:0x066f, B:189:0x0680, B:193:0x068e, B:197:0x069c, B:201:0x06aa, B:205:0x06b8, B:209:0x06c4, B:213:0x06d2, B:214:0x06de, B:216:0x06e4, B:217:0x06e7, B:219:0x06fd, B:220:0x0707, B:222:0x0714, B:224:0x071e, B:225:0x0721, B:227:0x073d, B:229:0x0741, B:232:0x0755, B:234:0x0760, B:235:0x0769, B:237:0x0775, B:239:0x0781, B:241:0x078b, B:243:0x0791, B:245:0x07a3, B:247:0x07c1, B:249:0x07c7, B:250:0x07d0, B:253:0x07e5, B:255:0x081f, B:257:0x0829, B:258:0x082c, B:260:0x0836, B:262:0x0852, B:263:0x085b, B:265:0x0891, B:267:0x0899, B:269:0x08a3, B:270:0x08b0, B:272:0x08ba, B:273:0x08c7, B:274:0x08d0, B:276:0x08d6, B:278:0x0912, B:280:0x091c, B:282:0x092e, B:286:0x0939, B:287:0x097e, B:288:0x0989, B:289:0x0996, B:291:0x099c, B:300:0x09e7, B:301:0x0a3d, B:303:0x0a4e, B:317:0x0aaf, B:308:0x0a66, B:309:0x0a69, B:294:0x09a8, B:296:0x09d4, B:314:0x0a82, B:315:0x0a99, B:316:0x0a9a, B:150:0x057d, B:135:0x04ac, B:92:0x0300, B:93:0x0307, B:95:0x030d, B:97:0x0319, B:53:0x018d, B:56:0x019d, B:58:0x01b2, B:64:0x01ce, B:69:0x0202, B:71:0x0208, B:73:0x0216, B:75:0x0224, B:78:0x0230, B:86:0x02b5, B:88:0x02bf, B:80:0x0259, B:81:0x0272, B:85:0x0298, B:84:0x0285, B:67:0x01da, B:68:0x01f8), top: B:324:0x0155, inners: #0, #2, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:104:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x07e2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0189 A[PHI: r27 r28
      0x0189: PHI (r27v2 java.lang.String) = (r27v0 java.lang.String), (r27v0 java.lang.String), (r27v3 java.lang.String) binds: [B:70:0x0206, B:72:0x0214, B:51:0x0185] A[DONT_GENERATE, DONT_INLINE]
      0x0189: PHI (r28v6 java.lang.String) = (r28v1 java.lang.String), (r28v1 java.lang.String), (r28v7 java.lang.String) binds: [B:70:0x0206, B:72:0x0214, B:51:0x0185] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x019d A[Catch: all -> 0x0176, TRY_ENTER, TryCatch #1 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02ec, B:98:0x031f, B:100:0x0360, B:102:0x0365, B:103:0x037c, B:105:0x0387, B:107:0x03a0, B:109:0x03a5, B:110:0x03bc, B:113:0x03de, B:117:0x0401, B:118:0x0418, B:120:0x0424, B:123:0x0441, B:124:0x0455, B:126:0x045d, B:128:0x0469, B:130:0x046f, B:131:0x0476, B:132:0x0483, B:138:0x04c5, B:139:0x04da, B:141:0x0504, B:144:0x051b, B:146:0x0525, B:149:0x0560, B:151:0x058b, B:153:0x05c3, B:154:0x05c6, B:156:0x05ce, B:157:0x05d1, B:159:0x05d9, B:160:0x05dc, B:162:0x05e4, B:163:0x05e7, B:165:0x05f0, B:166:0x05f4, B:168:0x0601, B:169:0x0604, B:171:0x0638, B:173:0x0642, B:177:0x0659, B:182:0x0666, B:185:0x066f, B:189:0x0680, B:193:0x068e, B:197:0x069c, B:201:0x06aa, B:205:0x06b8, B:209:0x06c4, B:213:0x06d2, B:214:0x06de, B:216:0x06e4, B:217:0x06e7, B:219:0x06fd, B:220:0x0707, B:222:0x0714, B:224:0x071e, B:225:0x0721, B:227:0x073d, B:229:0x0741, B:232:0x0755, B:234:0x0760, B:235:0x0769, B:237:0x0775, B:239:0x0781, B:241:0x078b, B:243:0x0791, B:245:0x07a3, B:247:0x07c1, B:249:0x07c7, B:250:0x07d0, B:253:0x07e5, B:255:0x081f, B:257:0x0829, B:258:0x082c, B:260:0x0836, B:262:0x0852, B:263:0x085b, B:265:0x0891, B:267:0x0899, B:269:0x08a3, B:270:0x08b0, B:272:0x08ba, B:273:0x08c7, B:274:0x08d0, B:276:0x08d6, B:278:0x0912, B:280:0x091c, B:282:0x092e, B:286:0x0939, B:287:0x097e, B:288:0x0989, B:289:0x0996, B:291:0x099c, B:300:0x09e7, B:301:0x0a3d, B:303:0x0a4e, B:317:0x0aaf, B:308:0x0a66, B:309:0x0a69, B:294:0x09a8, B:296:0x09d4, B:314:0x0a82, B:315:0x0a99, B:316:0x0a9a, B:150:0x057d, B:135:0x04ac, B:92:0x0300, B:93:0x0307, B:95:0x030d, B:97:0x0319, B:53:0x018d, B:56:0x019d, B:58:0x01b2, B:64:0x01ce, B:69:0x0202, B:71:0x0208, B:73:0x0216, B:75:0x0224, B:78:0x0230, B:86:0x02b5, B:88:0x02bf, B:80:0x0259, B:81:0x0272, B:85:0x0298, B:84:0x0285, B:67:0x01da, B:68:0x01f8), top: B:324:0x0155, inners: #0, #2, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01f8 A[Catch: all -> 0x0176, TryCatch #1 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02ec, B:98:0x031f, B:100:0x0360, B:102:0x0365, B:103:0x037c, B:105:0x0387, B:107:0x03a0, B:109:0x03a5, B:110:0x03bc, B:113:0x03de, B:117:0x0401, B:118:0x0418, B:120:0x0424, B:123:0x0441, B:124:0x0455, B:126:0x045d, B:128:0x0469, B:130:0x046f, B:131:0x0476, B:132:0x0483, B:138:0x04c5, B:139:0x04da, B:141:0x0504, B:144:0x051b, B:146:0x0525, B:149:0x0560, B:151:0x058b, B:153:0x05c3, B:154:0x05c6, B:156:0x05ce, B:157:0x05d1, B:159:0x05d9, B:160:0x05dc, B:162:0x05e4, B:163:0x05e7, B:165:0x05f0, B:166:0x05f4, B:168:0x0601, B:169:0x0604, B:171:0x0638, B:173:0x0642, B:177:0x0659, B:182:0x0666, B:185:0x066f, B:189:0x0680, B:193:0x068e, B:197:0x069c, B:201:0x06aa, B:205:0x06b8, B:209:0x06c4, B:213:0x06d2, B:214:0x06de, B:216:0x06e4, B:217:0x06e7, B:219:0x06fd, B:220:0x0707, B:222:0x0714, B:224:0x071e, B:225:0x0721, B:227:0x073d, B:229:0x0741, B:232:0x0755, B:234:0x0760, B:235:0x0769, B:237:0x0775, B:239:0x0781, B:241:0x078b, B:243:0x0791, B:245:0x07a3, B:247:0x07c1, B:249:0x07c7, B:250:0x07d0, B:253:0x07e5, B:255:0x081f, B:257:0x0829, B:258:0x082c, B:260:0x0836, B:262:0x0852, B:263:0x085b, B:265:0x0891, B:267:0x0899, B:269:0x08a3, B:270:0x08b0, B:272:0x08ba, B:273:0x08c7, B:274:0x08d0, B:276:0x08d6, B:278:0x0912, B:280:0x091c, B:282:0x092e, B:286:0x0939, B:287:0x097e, B:288:0x0989, B:289:0x0996, B:291:0x099c, B:300:0x09e7, B:301:0x0a3d, B:303:0x0a4e, B:317:0x0aaf, B:308:0x0a66, B:309:0x0a69, B:294:0x09a8, B:296:0x09d4, B:314:0x0a82, B:315:0x0a99, B:316:0x0a9a, B:150:0x057d, B:135:0x04ac, B:92:0x0300, B:93:0x0307, B:95:0x030d, B:97:0x0319, B:53:0x018d, B:56:0x019d, B:58:0x01b2, B:64:0x01ce, B:69:0x0202, B:71:0x0208, B:73:0x0216, B:75:0x0224, B:78:0x0230, B:86:0x02b5, B:88:0x02bf, B:80:0x0259, B:81:0x0272, B:85:0x0298, B:84:0x0285, B:67:0x01da, B:68:0x01f8), top: B:324:0x0155, inners: #0, #2, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0208 A[Catch: all -> 0x0176, TryCatch #1 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02ec, B:98:0x031f, B:100:0x0360, B:102:0x0365, B:103:0x037c, B:105:0x0387, B:107:0x03a0, B:109:0x03a5, B:110:0x03bc, B:113:0x03de, B:117:0x0401, B:118:0x0418, B:120:0x0424, B:123:0x0441, B:124:0x0455, B:126:0x045d, B:128:0x0469, B:130:0x046f, B:131:0x0476, B:132:0x0483, B:138:0x04c5, B:139:0x04da, B:141:0x0504, B:144:0x051b, B:146:0x0525, B:149:0x0560, B:151:0x058b, B:153:0x05c3, B:154:0x05c6, B:156:0x05ce, B:157:0x05d1, B:159:0x05d9, B:160:0x05dc, B:162:0x05e4, B:163:0x05e7, B:165:0x05f0, B:166:0x05f4, B:168:0x0601, B:169:0x0604, B:171:0x0638, B:173:0x0642, B:177:0x0659, B:182:0x0666, B:185:0x066f, B:189:0x0680, B:193:0x068e, B:197:0x069c, B:201:0x06aa, B:205:0x06b8, B:209:0x06c4, B:213:0x06d2, B:214:0x06de, B:216:0x06e4, B:217:0x06e7, B:219:0x06fd, B:220:0x0707, B:222:0x0714, B:224:0x071e, B:225:0x0721, B:227:0x073d, B:229:0x0741, B:232:0x0755, B:234:0x0760, B:235:0x0769, B:237:0x0775, B:239:0x0781, B:241:0x078b, B:243:0x0791, B:245:0x07a3, B:247:0x07c1, B:249:0x07c7, B:250:0x07d0, B:253:0x07e5, B:255:0x081f, B:257:0x0829, B:258:0x082c, B:260:0x0836, B:262:0x0852, B:263:0x085b, B:265:0x0891, B:267:0x0899, B:269:0x08a3, B:270:0x08b0, B:272:0x08ba, B:273:0x08c7, B:274:0x08d0, B:276:0x08d6, B:278:0x0912, B:280:0x091c, B:282:0x092e, B:286:0x0939, B:287:0x097e, B:288:0x0989, B:289:0x0996, B:291:0x099c, B:300:0x09e7, B:301:0x0a3d, B:303:0x0a4e, B:317:0x0aaf, B:308:0x0a66, B:309:0x0a69, B:294:0x09a8, B:296:0x09d4, B:314:0x0a82, B:315:0x0a99, B:316:0x0a9a, B:150:0x057d, B:135:0x04ac, B:92:0x0300, B:93:0x0307, B:95:0x030d, B:97:0x0319, B:53:0x018d, B:56:0x019d, B:58:0x01b2, B:64:0x01ce, B:69:0x0202, B:71:0x0208, B:73:0x0216, B:75:0x0224, B:78:0x0230, B:86:0x02b5, B:88:0x02bf, B:80:0x0259, B:81:0x0272, B:85:0x0298, B:84:0x0285, B:67:0x01da, B:68:0x01f8), top: B:324:0x0155, inners: #0, #2, #3, #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02fd  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0300 A[Catch: all -> 0x0176, TryCatch #1 {all -> 0x0176, blocks: (B:36:0x0155, B:39:0x0164, B:41:0x016c, B:47:0x0179, B:89:0x02ec, B:98:0x031f, B:100:0x0360, B:102:0x0365, B:103:0x037c, B:105:0x0387, B:107:0x03a0, B:109:0x03a5, B:110:0x03bc, B:113:0x03de, B:117:0x0401, B:118:0x0418, B:120:0x0424, B:123:0x0441, B:124:0x0455, B:126:0x045d, B:128:0x0469, B:130:0x046f, B:131:0x0476, B:132:0x0483, B:138:0x04c5, B:139:0x04da, B:141:0x0504, B:144:0x051b, B:146:0x0525, B:149:0x0560, B:151:0x058b, B:153:0x05c3, B:154:0x05c6, B:156:0x05ce, B:157:0x05d1, B:159:0x05d9, B:160:0x05dc, B:162:0x05e4, B:163:0x05e7, B:165:0x05f0, B:166:0x05f4, B:168:0x0601, B:169:0x0604, B:171:0x0638, B:173:0x0642, B:177:0x0659, B:182:0x0666, B:185:0x066f, B:189:0x0680, B:193:0x068e, B:197:0x069c, B:201:0x06aa, B:205:0x06b8, B:209:0x06c4, B:213:0x06d2, B:214:0x06de, B:216:0x06e4, B:217:0x06e7, B:219:0x06fd, B:220:0x0707, B:222:0x0714, B:224:0x071e, B:225:0x0721, B:227:0x073d, B:229:0x0741, B:232:0x0755, B:234:0x0760, B:235:0x0769, B:237:0x0775, B:239:0x0781, B:241:0x078b, B:243:0x0791, B:245:0x07a3, B:247:0x07c1, B:249:0x07c7, B:250:0x07d0, B:253:0x07e5, B:255:0x081f, B:257:0x0829, B:258:0x082c, B:260:0x0836, B:262:0x0852, B:263:0x085b, B:265:0x0891, B:267:0x0899, B:269:0x08a3, B:270:0x08b0, B:272:0x08ba, B:273:0x08c7, B:274:0x08d0, B:276:0x08d6, B:278:0x0912, B:280:0x091c, B:282:0x092e, B:286:0x0939, B:287:0x097e, B:288:0x0989, B:289:0x0996, B:291:0x099c, B:300:0x09e7, B:301:0x0a3d, B:303:0x0a4e, B:317:0x0aaf, B:308:0x0a66, B:309:0x0a69, B:294:0x09a8, B:296:0x09d4, B:314:0x0a82, B:315:0x0a99, B:316:0x0a9a, B:150:0x057d, B:135:0x04ac, B:92:0x0300, B:93:0x0307, B:95:0x030d, B:97:0x0319, B:53:0x018d, B:56:0x019d, B:58:0x01b2, B:64:0x01ce, B:69:0x0202, B:71:0x0208, B:73:0x0216, B:75:0x0224, B:78:0x0230, B:86:0x02b5, B:88:0x02bf, B:80:0x0259, B:81:0x0272, B:85:0x0298, B:84:0x0285, B:67:0x01da, B:68:0x01f8), top: B:324:0x0155, inners: #0, #2, #3, #5 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzH(com.google.android.gms.measurement.internal.zzbh r44, com.google.android.gms.measurement.internal.zzr r45) {
        /*
            Method dump skipped, instruction units count: 2792
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzH(com.google.android.gms.measurement.internal.zzbh, com.google.android.gms.measurement.internal.zzr):void");
    }

    public final void zzI(zzh zzhVar, com.google.android.gms.internal.measurement.zzic zzicVar) {
        com.google.android.gms.internal.measurement.zziu zziuVar;
        zzaX().zzg();
        zzu();
        zzan zzanVarZzd = zzan.zzd(zzicVar.zzaA());
        String strZzc = zzhVar.zzc();
        zzaX().zzg();
        zzu();
        zzjl zzjlVarZzB = zzB(strZzc);
        zzji zzjiVar = zzji.UNINITIALIZED;
        int iOrdinal = zzjlVarZzB.zzp().ordinal();
        if (iOrdinal == 1) {
            zzanVarZzd.zzc(zzjk.AD_STORAGE, zzam.REMOTE_ENFORCED_DEFAULT);
        } else if (iOrdinal == 2 || iOrdinal == 3) {
            zzanVarZzd.zzb(zzjk.AD_STORAGE, zzjlVarZzB.zzb());
        } else {
            zzanVarZzd.zzc(zzjk.AD_STORAGE, zzam.FAILSAFE);
        }
        int iOrdinal2 = zzjlVarZzB.zzq().ordinal();
        if (iOrdinal2 == 1) {
            zzanVarZzd.zzc(zzjk.ANALYTICS_STORAGE, zzam.REMOTE_ENFORCED_DEFAULT);
        } else if (iOrdinal2 == 2 || iOrdinal2 == 3) {
            zzanVarZzd.zzb(zzjk.ANALYTICS_STORAGE, zzjlVarZzB.zzb());
        } else {
            zzanVarZzd.zzc(zzjk.ANALYTICS_STORAGE, zzam.FAILSAFE);
        }
        String strZzc2 = zzhVar.zzc();
        zzaX().zzg();
        zzu();
        zzba zzbaVarZzz = zzz(strZzc2, zzx(strZzc2), zzB(strZzc2), zzanVarZzd);
        zzicVar.zzaD(((Boolean) Preconditions.checkNotNull(zzbaVarZzz.zzj())).booleanValue());
        if (!TextUtils.isEmpty(zzbaVarZzz.zzk())) {
            zzicVar.zzaF(zzbaVarZzz.zzk());
        }
        zzaX().zzg();
        zzu();
        Iterator it = zzicVar.zzk().iterator();
        while (true) {
            if (it.hasNext()) {
                zziuVar = (com.google.android.gms.internal.measurement.zziu) it.next();
                if ("_npa".equals(zziuVar.zzc())) {
                    break;
                }
            } else {
                zziuVar = null;
                break;
            }
        }
        if (zziuVar != null) {
            zzjk zzjkVar = zzjk.AD_PERSONALIZATION;
            if (zzanVarZzd.zza(zzjkVar) == zzam.UNSET) {
                zzpn zzpnVarZzm = zzj().zzm(zzhVar.zzc(), "_npa");
                if (zzpnVarZzm != null) {
                    String str = zzpnVarZzm.zzb;
                    if ("tcf".equals(str)) {
                        zzanVarZzd.zzc(zzjkVar, zzam.TCF);
                    } else if ("app".equals(str)) {
                        zzanVarZzd.zzc(zzjkVar, zzam.API);
                    } else {
                        zzanVarZzd.zzc(zzjkVar, zzam.MANIFEST);
                    }
                } else {
                    Boolean boolZzae = zzhVar.zzae();
                    if (boolZzae == null || ((boolZzae.booleanValue() && zziuVar.zzh() != 1) || !(boolZzae.booleanValue() || zziuVar.zzh() == 0))) {
                        zzanVarZzd.zzc(zzjkVar, zzam.API);
                    } else {
                        zzanVarZzd.zzc(zzjkVar, zzam.MANIFEST);
                    }
                }
            }
        } else {
            int iZzaD = zzaD(zzhVar.zzc(), zzanVarZzd);
            com.google.android.gms.internal.measurement.zzit zzitVarZzm = com.google.android.gms.internal.measurement.zziu.zzm();
            zzitVarZzm.zzb("_npa");
            zzitVarZzm.zza(zzba().currentTimeMillis());
            zzitVarZzm.zze(iZzaD);
            zzicVar.zzo((com.google.android.gms.internal.measurement.zziu) zzitVarZzm.zzbd());
            zzaW().zzk().zzc("Setting user property", "non_personalized_ads(_npa)", Integer.valueOf(iZzaD));
        }
        zzicVar.zzaB(zzanVarZzd.toString());
        boolean zZzz = this.zzc.zzz(zzhVar.zzc());
        List listZzb = zzicVar.zzb();
        int i = 0;
        for (int i2 = 0; i2 < listZzb.size(); i2++) {
            if ("_tcf".equals(((com.google.android.gms.internal.measurement.zzhs) listZzb.get(i2)).zzd())) {
                com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) ((com.google.android.gms.internal.measurement.zzhs) listZzb.get(i2)).zzco();
                List listZza = zzhrVar.zza();
                int i3 = 0;
                while (true) {
                    if (i3 >= listZza.size()) {
                        break;
                    }
                    if ("_tcfd".equals(((com.google.android.gms.internal.measurement.zzhw) listZza.get(i3)).zzb())) {
                        String strZzd = ((com.google.android.gms.internal.measurement.zzhw) listZza.get(i3)).zzd();
                        if (zZzz && strZzd.length() > 4) {
                            char[] charArray = strZzd.toCharArray();
                            int i4 = 1;
                            while (true) {
                                if (i4 >= 64) {
                                    break;
                                }
                                if (charArray[4] == "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(i4)) {
                                    i = i4;
                                    break;
                                }
                                i4++;
                            }
                            charArray[4] = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_".charAt(1 | i);
                            strZzd = String.valueOf(charArray);
                        }
                        zzhv zzhvVarZzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                        zzhvVarZzn.zzb("_tcfd");
                        zzhvVarZzn.zzd(strZzd);
                        zzhrVar.zze(i3, zzhvVarZzn);
                    } else {
                        i3++;
                    }
                }
                zzicVar.zzf(i2, zzhrVar);
                return;
            }
        }
    }

    public final void zzJ(zzh zzhVar, com.google.android.gms.internal.measurement.zzic zzicVar) {
        zzaX().zzg();
        zzu();
        com.google.android.gms.internal.measurement.zzgx zzgxVarZzt = com.google.android.gms.internal.measurement.zzha.zzt();
        byte[] bArrZzaJ = zzhVar.zzaJ();
        if (bArrZzaJ != null) {
            try {
                zzgxVarZzt = (com.google.android.gms.internal.measurement.zzgx) zzpk.zzw(zzgxVarZzt, bArrZzaJ);
            } catch (zzaeh unused) {
                zzaW().zze().zzb("Failed to parse locally stored ad campaign info. appId", zzgu.zzl(zzhVar.zzc()));
            }
        }
        for (com.google.android.gms.internal.measurement.zzhs zzhsVar : zzicVar.zzb()) {
            if (zzhsVar.zzd().equals("_cmp")) {
                String str = (String) zzpk.zzN(zzhsVar, "gclid", "");
                String str2 = (String) zzpk.zzN(zzhsVar, "gbraid", "");
                String str3 = (String) zzpk.zzN(zzhsVar, "gad_source", "");
                String str4 = (String) zzpk.zzN(zzhsVar, "deep_link_url", "");
                String[] strArrSplit = ((String) zzfy.zzbb.zzb(null)).split(",");
                zzp();
                if (!zzpk.zzK(zzhsVar, strArrSplit).isEmpty()) {
                    long jLongValue = ((Long) zzpk.zzN(zzhsVar, "click_timestamp", 0L)).longValue();
                    if (jLongValue <= 0) {
                        jLongValue = zzhsVar.zzf();
                    }
                    if ("referrer API v2".equals(zzpk.zzM(zzhsVar, "_cis"))) {
                        if (jLongValue > zzgxVarZzt.zzo()) {
                            if (str.isEmpty()) {
                                zzgxVarZzt.zzj();
                            } else {
                                zzgxVarZzt.zzi(str);
                            }
                            if (str2.isEmpty()) {
                                zzgxVarZzt.zzl();
                            } else {
                                zzgxVarZzt.zzk(str2);
                            }
                            if (str3.isEmpty()) {
                                zzgxVarZzt.zzn();
                            } else {
                                zzgxVarZzt.zzm(str3);
                            }
                            zzgxVarZzt.zzp(jLongValue);
                            zzgxVarZzt.zzs();
                            zzgxVarZzt.zzt(zzaE(zzhsVar));
                        }
                    } else if (jLongValue > zzgxVarZzt.zzg()) {
                        if (str.isEmpty()) {
                            zzgxVarZzt.zzb();
                        } else {
                            zzgxVarZzt.zza(str);
                        }
                        if (str2.isEmpty()) {
                            zzgxVarZzt.zzd();
                        } else {
                            zzgxVarZzt.zzc(str2);
                        }
                        if (str3.isEmpty()) {
                            zzgxVarZzt.zzf();
                        } else {
                            zzgxVarZzt.zze(str3);
                        }
                        if (zzd().zzp(null, zzfy.zzba)) {
                            if (str4.isEmpty()) {
                                zzgxVarZzt.zzv();
                            } else {
                                zzgxVarZzt.zzu(str4);
                            }
                        }
                        zzgxVarZzt.zzh(jLongValue);
                        zzgxVarZzt.zzq();
                        zzgxVarZzt.zzr(zzaE(zzhsVar));
                    }
                }
            }
        }
        if (!((com.google.android.gms.internal.measurement.zzha) zzgxVarZzt.zzbd()).equals(com.google.android.gms.internal.measurement.zzha.zzu())) {
            zzicVar.zzaM((com.google.android.gms.internal.measurement.zzha) zzgxVarZzt.zzbd());
        }
        zzhVar.zzaI(((com.google.android.gms.internal.measurement.zzha) zzgxVarZzt.zzbd()).zzcd());
        if (zzhVar.zza()) {
            zzj().zzv(zzhVar, false, false);
        }
        if (zzd().zzp(null, zzfy.zzba)) {
            for (int i = 0; i < zzicVar.zzc(); i++) {
                com.google.android.gms.internal.measurement.zzhs zzhsVarZzd = zzicVar.zzd(i);
                if ("_cmp".equals(zzhsVarZzd.zzd())) {
                    com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzhsVarZzd.zzco();
                    List listZza = zzhrVar.zza();
                    int i2 = 0;
                    while (true) {
                        if (i2 >= listZza.size()) {
                            break;
                        }
                        if ("deep_link_url".equals(((com.google.android.gms.internal.measurement.zzhw) listZza.get(i2)).zzb())) {
                            zzhrVar.zzj(i2);
                            zzicVar.zzf(i, zzhrVar);
                            break;
                        }
                        i2++;
                    }
                }
            }
        }
        if (zzd().zzp(null, zzfy.zzaZ)) {
            zzj().zzk(zzhVar.zzc(), "_lgclid");
        }
    }

    public final String zzK(zzjl zzjlVar) {
        if (!zzjlVar.zzo(zzjk.ANALYTICS_STORAGE)) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzt().zzf().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    public final void zzL(List list) {
        Preconditions.checkArgument(!list.isEmpty());
        if (this.zzz != null) {
            zzaW().zzb().zza("Set uploading progress before finishing the previous upload");
        } else {
            this.zzz = new ArrayList(list);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.measurement.internal.zzpg] */
    /* JADX WARN: Type inference failed for: r1v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v22, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v25, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [android.database.Cursor] */
    public final void zzM() {
        zzaw zzawVarZzj;
        long jZzF;
        SQLiteException e;
        zzh zzhVarZzu;
        zzaX().zzg();
        zzu();
        this.zzw = true;
        try {
            zzic zzicVar = this.zzn;
            zzicVar.zzaV();
            Boolean boolZzJ = zzicVar.zzt().zzJ();
            if (boolZzJ == null) {
                zzaW().zze().zza("Upload data called on the client side before use of service was decided");
            } else if (boolZzJ.booleanValue()) {
                zzaW().zzb().zza("Upload called in the client side when service should be used");
            } else if (this.zza > 0) {
                zzaM();
            } else {
                zzaX().zzg();
                if (this.zzz != null) {
                    zzaW().zzk().zza("Uploading requested multiple times");
                } else if (zzi().zzb()) {
                    ?? CurrentTimeMillis = zzba().currentTimeMillis();
                    ?? r7 = 0;
                    cursorRawQuery = null;
                    Cursor cursorRawQuery = null;
                    string = null;
                    string = null;
                    String string = null;
                    int iZzm = zzd().zzm(null, zzfy.zzah);
                    zzd();
                    long jZzF2 = CurrentTimeMillis - zzal.zzF();
                    for (int i = 0; i < iZzm && zzaH(null, jZzF2); i++) {
                    }
                    zzaif.zza();
                    zzaX().zzg();
                    zzaw();
                    long jZza = this.zzk.zzd.zza();
                    if (jZza != 0) {
                        zzaW().zzj().zzb("Uploading events. Elapsed time since last upload attempt (ms)", Long.valueOf(Math.abs(CurrentTimeMillis - jZza)));
                    }
                    String strZzF = zzj().zzF();
                    long j = -1;
                    if (TextUtils.isEmpty(strZzF)) {
                        try {
                            this.zzB = -1L;
                            zzawVarZzj = zzj();
                            zzd();
                            jZzF = CurrentTimeMillis - zzal.zzF();
                            zzawVarZzj.zzg();
                            zzawVarZzj.zzay();
                        } catch (Throwable th) {
                            th = th;
                            r7 = CurrentTimeMillis;
                        }
                        try {
                            CurrentTimeMillis = zzawVarZzj.zze().rawQuery("select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;", new String[]{String.valueOf(jZzF)});
                            try {
                                if (CurrentTimeMillis.moveToFirst()) {
                                    string = CurrentTimeMillis.getString(0);
                                } else {
                                    zzawVarZzj.zzu.zzaW().zzk().zza("No expired configs for apps with pending events");
                                }
                            } catch (SQLiteException e2) {
                                e = e2;
                                zzawVarZzj.zzu.zzaW().zzb().zzb("Error selecting expired configs", e);
                                if (CurrentTimeMillis != 0) {
                                }
                                if (!TextUtils.isEmpty(string)) {
                                    zzX(zzhVarZzu);
                                }
                                this.zzw = false;
                                zzaN();
                            }
                        } catch (SQLiteException e3) {
                            e = e3;
                            CurrentTimeMillis = 0;
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                        CurrentTimeMillis.close();
                        if (!TextUtils.isEmpty(string) && (zzhVarZzu = zzj().zzu(string)) != null) {
                            zzX(zzhVarZzu);
                        }
                    } else {
                        if (this.zzB == -1) {
                            zzaw zzawVarZzj2 = zzj();
                            try {
                                try {
                                    cursorRawQuery = zzawVarZzj2.zze().rawQuery("select rowid from raw_events order by rowid desc limit 1;", null);
                                    if (cursorRawQuery.moveToFirst()) {
                                        j = cursorRawQuery.getLong(0);
                                    }
                                } finally {
                                    if (cursorRawQuery != null) {
                                        cursorRawQuery.close();
                                    }
                                }
                            } catch (SQLiteException e4) {
                                zzawVarZzj2.zzu.zzaW().zzb().zzb("Error querying raw events", e4);
                                if (cursorRawQuery != null) {
                                }
                                this.zzB = j;
                                zzN(strZzF, CurrentTimeMillis);
                                this.zzw = false;
                                zzaN();
                            }
                            cursorRawQuery.close();
                            this.zzB = j;
                        }
                        zzN(strZzF, CurrentTimeMillis);
                    }
                } else {
                    zzaW().zzk().zza("Network not connected, ignoring upload request");
                    zzaM();
                }
            }
            this.zzw = false;
            zzaN();
        } catch (Throwable th3) {
            this.zzw = false;
            zzaN();
            throw th3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00be, code lost:
    
        r22 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x045e A[PHI: r10 r16 r23
      0x045e: PHI (r10v39 java.util.List) = (r10v53 java.util.List), (r10v38 java.util.List) binds: [B:184:0x0484, B:176:0x045c] A[DONT_GENERATE, DONT_INLINE]
      0x045e: PHI (r16v7 java.util.List) = (r16v12 java.util.List), (r16v13 java.util.List) binds: [B:184:0x0484, B:176:0x045c] A[DONT_GENERATE, DONT_INLINE]
      0x045e: PHI (r23v12 android.database.Cursor) = (r23v18 android.database.Cursor), (r23v22 android.database.Cursor) binds: [B:184:0x0484, B:176:0x045c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x006b A[PHI: r0 r10 r23
      0x006b: PHI (r0v117 java.util.List) = (r0v8 java.util.List), (r0v141 java.util.List) binds: [B:108:0x022a, B:16:0x0069] A[DONT_GENERATE, DONT_INLINE]
      0x006b: PHI (r10v57 android.database.Cursor) = (r10v5 android.database.Cursor), (r10v59 android.database.Cursor) binds: [B:108:0x022a, B:16:0x0069] A[DONT_GENERATE, DONT_INLINE]
      0x006b: PHI (r23v28 long) = (r23v2 long), (r23v29 long) binds: [B:108:0x022a, B:16:0x0069] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0492  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x055c  */
    /* JADX WARN: Removed duplicated region for block: B:325:0x07cc  */
    /* JADX WARN: Removed duplicated region for block: B:331:0x07fc  */
    /* JADX WARN: Removed duplicated region for block: B:334:0x080d  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0823 A[LOOP:7: B:336:0x081d->B:338:0x0823, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:341:0x084e  */
    /* JADX WARN: Removed duplicated region for block: B:342:0x0851  */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0866  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0942  */
    /* JADX WARN: Removed duplicated region for block: B:364:0x0945  */
    /* JADX WARN: Removed duplicated region for block: B:372:0x09b2  */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0a0d  */
    /* JADX WARN: Removed duplicated region for block: B:442:0x07e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:471:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzN(java.lang.String r33, long r34) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2577
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzN(java.lang.String, long):void");
    }

    public final boolean zzO(String str, String str2) {
        zzh zzhVarZzu = zzj().zzu(str);
        if (zzhVarZzu != null && zzt().zzad(str, zzhVarZzu.zzay())) {
            this.zzF.remove(str2);
            return true;
        }
        zzpe zzpeVar = (zzpe) this.zzF.get(str2);
        if (zzpeVar == null) {
            return true;
        }
        return zzpeVar.zzb();
    }

    public final void zzP(String str) {
        com.google.android.gms.internal.measurement.zzib zzibVarZzd;
        zzaX().zzg();
        zzu();
        this.zzw = true;
        try {
            zzic zzicVar = this.zzn;
            zzicVar.zzaV();
            Boolean boolZzJ = zzicVar.zzt().zzJ();
            if (boolZzJ == null) {
                zzaW().zze().zza("Upload data called on the client side before use of service was decided");
            } else if (boolZzJ.booleanValue()) {
                zzaW().zzb().zza("Upload called in the client side when service should be used");
            } else if (this.zza > 0) {
                zzaM();
            } else if (!zzi().zzb()) {
                zzaW().zzk().zza("Network not connected, ignoring upload request");
                zzaM();
            } else if (zzj().zzD(str)) {
                zzaw zzawVarZzj = zzj();
                Preconditions.checkNotEmpty(str);
                zzawVarZzj.zzg();
                zzawVarZzj.zzay();
                List listZzC = zzawVarZzj.zzC(str, zzoo.zza(zzls.GOOGLE_SIGNAL), 1);
                zzpj zzpjVar = listZzC.isEmpty() ? null : (zzpj) listZzC.get(0);
                if (zzpjVar != null && (zzibVarZzd = zzpjVar.zzd()) != null) {
                    zzaW().zzk().zzd("[sgtm] Uploading data from upload queue. appId, type, url", str, zzpjVar.zzf(), zzpjVar.zze());
                    byte[] bArrZzcd = zzibVarZzd.zzcd();
                    if (Log.isLoggable(zzaW().zzn(), 2)) {
                        zzaW().zzk().zzd("[sgtm] Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(bArrZzcd.length), zzp().zzi(zzibVarZzd));
                    }
                    zzot zzotVarZza = zzpjVar.zza();
                    this.zzv = true;
                    zzi().zzc(str, zzotVarZza, zzibVarZzd, new zzox(this, str, zzpjVar));
                }
            } else {
                zzaW().zzk().zzb("[sgtm] Upload queue has no batches for appId", str);
            }
            this.zzw = false;
            zzaN();
        } catch (Throwable th) {
            this.zzw = false;
            zzaN();
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x001e A[Catch: all -> 0x0010, TryCatch #0 {all -> 0x0010, blocks: (B:4:0x000d, B:19:0x005a, B:22:0x0080, B:13:0x001e, B:15:0x0048, B:17:0x0052, B:18:0x0056), top: B:27:0x000d }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzQ(java.lang.String r4, int r5, java.lang.Throwable r6, byte[] r7, com.google.android.gms.measurement.internal.zzpj r8) {
        /*
            r3 = this;
            com.google.android.gms.measurement.internal.zzhz r0 = r3.zzaX()
            r0.zzg()
            r3.zzu()
            r0 = 0
            if (r7 != 0) goto L13
            byte[] r7 = new byte[r0]     // Catch: java.lang.Throwable -> L10
            goto L13
        L10:
            r4 = move-exception
            goto L9b
        L13:
            r1 = 200(0xc8, float:2.8E-43)
            if (r5 == r1) goto L1c
            r1 = 204(0xcc, float:2.86E-43)
            if (r5 != r1) goto L5a
            r5 = r1
        L1c:
            if (r6 != 0) goto L5a
            com.google.android.gms.measurement.internal.zzaw r6 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            long r7 = r8.zzc()     // Catch: java.lang.Throwable -> L10
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch: java.lang.Throwable -> L10
            r6.zzE(r7)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgu r6 = r3.zzaW()     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgs r6 = r6.zzk()     // Catch: java.lang.Throwable -> L10
            java.lang.String r7 = "Successfully uploaded batch from upload queue. appId, status"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            r6.zzc(r7, r4, r5)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgz r5 = r3.zzi()     // Catch: java.lang.Throwable -> L10
            boolean r5 = r5.zzb()     // Catch: java.lang.Throwable -> L10
            if (r5 == 0) goto L56
            com.google.android.gms.measurement.internal.zzaw r5 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            boolean r5 = r5.zzD(r4)     // Catch: java.lang.Throwable -> L10
            if (r5 == 0) goto L56
            r3.zzP(r4)     // Catch: java.lang.Throwable -> L10
            goto L95
        L56:
            r3.zzaM()     // Catch: java.lang.Throwable -> L10
            goto L95
        L5a:
            java.lang.String r1 = new java.lang.String     // Catch: java.lang.Throwable -> L10
            java.nio.charset.Charset r2 = java.nio.charset.StandardCharsets.UTF_8     // Catch: java.lang.Throwable -> L10
            r1.<init>(r7, r2)     // Catch: java.lang.Throwable -> L10
            int r7 = r1.length()     // Catch: java.lang.Throwable -> L10
            r2 = 32
            int r7 = java.lang.Math.min(r2, r7)     // Catch: java.lang.Throwable -> L10
            java.lang.String r7 = r1.substring(r0, r7)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgu r1 = r3.zzaW()     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzgs r1 = r1.zzh()     // Catch: java.lang.Throwable -> L10
            java.lang.String r2 = "Network upload failed. Will retry later. appId, status, error"
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            if (r6 != 0) goto L80
            r6 = r7
        L80:
            r1.zzd(r2, r4, r5, r6)     // Catch: java.lang.Throwable -> L10
            com.google.android.gms.measurement.internal.zzaw r4 = r3.zzj()     // Catch: java.lang.Throwable -> L10
            long r5 = r8.zzc()     // Catch: java.lang.Throwable -> L10
            java.lang.Long r5 = java.lang.Long.valueOf(r5)     // Catch: java.lang.Throwable -> L10
            r4.zzK(r5)     // Catch: java.lang.Throwable -> L10
            r3.zzaM()     // Catch: java.lang.Throwable -> L10
        L95:
            r3.zzv = r0
            r3.zzaN()
            return
        L9b:
            r3.zzv = r0
            r3.zzaN()
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzQ(java.lang.String, int, java.lang.Throwable, byte[], com.google.android.gms.measurement.internal.zzpj):void");
    }

    public final void zzR(String str, boolean z, Long l, Long l2) {
        zzh zzhVarZzu = zzj().zzu(str);
        if (zzhVarZzu != null) {
            zzhVarZzu.zzar(z);
            zzhVarZzu.zzat(l);
            zzhVarZzu.zzav(l2);
            if (zzhVarZzu.zza()) {
                zzj().zzv(zzhVarZzu, false, false);
            }
        }
    }

    public final void zzS(String str, com.google.android.gms.internal.measurement.zzic zzicVar) {
        int iZzx;
        int iIndexOf;
        Set setZzl = zzh().zzl(str);
        if (setZzl != null) {
            zzicVar.zzaw(setZzl);
        }
        if (zzh().zzq(str)) {
            zzicVar.zzG();
        }
        if (zzh().zzr(str)) {
            String strZzD = zzicVar.zzD();
            if (!TextUtils.isEmpty(strZzD) && (iIndexOf = strZzD.indexOf(".")) != -1) {
                zzicVar.zzE(strZzD.substring(0, iIndexOf));
            }
        }
        if (zzh().zzs(str) && (iZzx = zzpk.zzx(zzicVar, "_id")) != -1) {
            zzicVar.zzr(iZzx);
        }
        if (zzh().zzt(str)) {
            zzicVar.zzan();
        }
        if (zzh().zzu(str)) {
            zzicVar.zzX();
            if (zzB(str).zzo(zzjk.ANALYTICS_STORAGE)) {
                Map map = this.zzE;
                zzpd zzpdVar = (zzpd) map.get(str);
                if (zzpdVar == null || zzpdVar.zzb + zzd().zzl(str, zzfy.zzaj) < zzba().elapsedRealtime()) {
                    zzpdVar = new zzpd(this, (byte[]) null);
                    map.put(str, zzpdVar);
                }
                zzicVar.zzax(zzpdVar.zza);
            }
        }
        if (zzh().zzv(str)) {
            zzicVar.zzav();
        }
    }

    public final void zzT(com.google.android.gms.internal.measurement.zzic zzicVar, zzpc zzpcVar) {
        for (int i = 0; i < zzicVar.zzc(); i++) {
            com.google.android.gms.internal.measurement.zzhr zzhrVar = (com.google.android.gms.internal.measurement.zzhr) zzicVar.zzd(i).zzco();
            Iterator it = zzhrVar.zza().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if ("_c".equals(((com.google.android.gms.internal.measurement.zzhw) it.next()).zzb())) {
                    if (zzpcVar.zza.zzar() >= zzd().zzm(zzpcVar.zza.zzA(), zzfy.zzak)) {
                        int iZzm = zzd().zzm(zzpcVar.zza.zzA(), zzfy.zzax);
                        String strZzaz = null;
                        if (iZzm <= 0) {
                            if (zzd().zzp(zzpcVar.zza.zzA(), zzfy.zzaQ)) {
                                strZzaz = zzt().zzaz();
                                zzhv zzhvVarZzn = com.google.android.gms.internal.measurement.zzhw.zzn();
                                zzhvVarZzn.zzb("_tu");
                                zzhvVarZzn.zzd(strZzaz);
                                zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn.zzbd());
                            }
                            zzhv zzhvVarZzn2 = com.google.android.gms.internal.measurement.zzhw.zzn();
                            zzhvVarZzn2.zzb("_tr");
                            zzhvVarZzn2.zzf(1L);
                            zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn2.zzbd());
                            zzoh zzohVarZzf = zzp().zzf(zzpcVar.zza.zzA(), zzicVar, zzhrVar, strZzaz);
                            if (zzohVarZzf != null) {
                                zzaW().zzk().zzc("Generated trigger URI. appId, uri", zzpcVar.zza.zzA(), zzohVarZzf.zza);
                                zzj().zzZ(zzpcVar.zza.zzA(), zzohVarZzf);
                                Deque deque = this.zzr;
                                if (!deque.contains(zzpcVar.zza.zzA())) {
                                    deque.add(zzpcVar.zza.zzA());
                                }
                            }
                        } else if (zzj().zzw(zzC(), zzpcVar.zza.zzA(), false, false, false, false, false, false, true).zzg > iZzm) {
                            zzhv zzhvVarZzn3 = com.google.android.gms.internal.measurement.zzhw.zzn();
                            zzhvVarZzn3.zzb("_tnr");
                            zzhvVarZzn3.zzf(1L);
                            zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn3.zzbd());
                        } else {
                            if (zzd().zzp(zzpcVar.zza.zzA(), zzfy.zzaQ)) {
                                strZzaz = zzt().zzaz();
                                zzhv zzhvVarZzn4 = com.google.android.gms.internal.measurement.zzhw.zzn();
                                zzhvVarZzn4.zzb("_tu");
                                zzhvVarZzn4.zzd(strZzaz);
                                zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn4.zzbd());
                            }
                            zzhv zzhvVarZzn5 = com.google.android.gms.internal.measurement.zzhw.zzn();
                            zzhvVarZzn5.zzb("_tr");
                            zzhvVarZzn5.zzf(1L);
                            zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn5.zzbd());
                            zzoh zzohVarZzf2 = zzp().zzf(zzpcVar.zza.zzA(), zzicVar, zzhrVar, strZzaz);
                            if (zzohVarZzf2 != null) {
                                zzaW().zzk().zzc("Generated trigger URI. appId, uri", zzpcVar.zza.zzA(), zzohVarZzf2.zza);
                                zzj().zzZ(zzpcVar.zza.zzA(), zzohVarZzf2);
                                Deque deque2 = this.zzr;
                                if (!deque2.contains(zzpcVar.zza.zzA())) {
                                    deque2.add(zzpcVar.zza.zzA());
                                }
                            }
                        }
                    }
                    zzicVar.zze(i, (com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbd());
                }
            }
        }
    }

    public final void zzU(String str, zzhv zzhvVar, Bundle bundle, String str2) {
        List listListOf = zzd().zzp(str2, zzfy.zzba) ? CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si", "deep_link_url"}) : CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
        long jZzf = (zzpp.zzac(zzhvVar.zza()) || zzpp.zzac(str)) ? zzd().zzf(str2, true) : zzd().zze(str2, true);
        long jCodePointCount = zzhvVar.zzc().codePointCount(0, zzhvVar.zzc().length());
        zzpp zzppVarZzt = zzt();
        String strZza = zzhvVar.zza();
        zzd();
        String strZzE = zzppVarZzt.zzE(strZza, 40, true);
        if (jCodePointCount <= jZzf || listListOf.contains(zzhvVar.zza())) {
            return;
        }
        if ("_ev".equals(zzhvVar.zza())) {
            bundle.putString("_ev", zzt().zzE(zzhvVar.zzc(), zzd().zzf(str2, true), true));
            return;
        }
        zzaW().zzh().zzc("Param value is too long; discarded. Name, value length", strZzE, Long.valueOf(jCodePointCount));
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", 4L);
            if (bundle.getString("_ev") == null) {
                bundle.putString("_ev", strZzE);
                bundle.putLong("_el", jCodePointCount);
            }
        }
        bundle.remove(zzhvVar.zza());
    }

    public final boolean zzV(com.google.android.gms.internal.measurement.zzhr zzhrVar) {
        ArrayList arrayList = new ArrayList(zzhrVar.zza());
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            if (C3522b4.i.X.equals(((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i3)).zzb())) {
                i = i3;
            } else if (InAppPurchaseMetaData.KEY_CURRENCY.equals(((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i3)).zzb())) {
                i2 = i3;
            }
        }
        if (i == -1) {
            if (!zzd().zzp(null, zzfy.zzbf) || !"_iap".equals(zzhrVar.zzk())) {
                return true;
            }
            zzaC(zzhrVar, "_c");
            zzaB(zzhrVar, 18, C3522b4.i.X);
            return false;
        }
        if (!((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i)).zze() && !((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i)).zzj()) {
            zzaW().zzh().zza("Value must be specified with a numeric type.");
            zzhrVar.zzj(i);
            zzaC(zzhrVar, "_c");
            zzaB(zzhrVar, 18, C3522b4.i.X);
            return false;
        }
        if (i2 != -1) {
            String strZzd = ((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i2)).zzd();
            if (strZzd.length() == 3) {
                int iCharCount = 0;
                while (iCharCount < strZzd.length()) {
                    int iCodePointAt = strZzd.codePointAt(iCharCount);
                    if (Character.isLetter(iCodePointAt)) {
                        iCharCount += Character.charCount(iCodePointAt);
                    }
                }
                return true;
            }
        }
        zzaW().zzh().zza("Value parameter discarded. You must also supply a 3-letter ISO_4217 currency code in the currency parameter.");
        zzhrVar.zzj(i);
        zzaC(zzhrVar, "_c");
        zzaB(zzhrVar, 19, InAppPurchaseMetaData.KEY_CURRENCY);
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0086 A[Catch: all -> 0x0016, TryCatch #1 {all -> 0x0016, blocks: (B:4:0x0013, B:8:0x001b, B:10:0x0028, B:11:0x0031, B:19:0x0049, B:24:0x0095, B:23:0x0086, B:25:0x00a1, B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec, B:91:0x027c), top: B:97:0x0013, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a1 A[Catch: all -> 0x0016, PHI: r0
      0x00a1: PHI (r0v2 int) = (r0v0 int), (r0v37 int) binds: [B:12:0x003c, B:18:0x0047] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #1 {all -> 0x0016, blocks: (B:4:0x0013, B:8:0x001b, B:10:0x0028, B:11:0x0031, B:19:0x0049, B:24:0x0095, B:23:0x0086, B:25:0x00a1, B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec, B:91:0x027c), top: B:97:0x0013, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00d9 A[Catch: all -> 0x0016, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec), top: B:96:0x00b8, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ec A[Catch: all -> 0x0016, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec), top: B:96:0x00b8, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0111 A[Catch: all -> 0x016a, TryCatch #3 {all -> 0x016a, blocks: (B:35:0x0100, B:36:0x0109, B:38:0x0111, B:40:0x0128, B:44:0x0152, B:46:0x015c, B:50:0x016d, B:51:0x0172, B:53:0x0178, B:55:0x018f, B:57:0x01b4, B:59:0x01cf, B:61:0x01f2, B:62:0x0203, B:63:0x0207, B:65:0x020d, B:66:0x0214, B:69:0x0221, B:71:0x0225, B:74:0x022c, B:75:0x022d), top: B:100:0x0100, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0178 A[Catch: all -> 0x016a, TryCatch #3 {all -> 0x016a, blocks: (B:35:0x0100, B:36:0x0109, B:38:0x0111, B:40:0x0128, B:44:0x0152, B:46:0x015c, B:50:0x016d, B:51:0x0172, B:53:0x0178, B:55:0x018f, B:57:0x01b4, B:59:0x01cf, B:61:0x01f2, B:62:0x0203, B:63:0x0207, B:65:0x020d, B:66:0x0214, B:69:0x0221, B:71:0x0225, B:74:0x022c, B:75:0x022d), top: B:100:0x0100, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01cf A[Catch: all -> 0x016a, TryCatch #3 {all -> 0x016a, blocks: (B:35:0x0100, B:36:0x0109, B:38:0x0111, B:40:0x0128, B:44:0x0152, B:46:0x015c, B:50:0x016d, B:51:0x0172, B:53:0x0178, B:55:0x018f, B:57:0x01b4, B:59:0x01cf, B:61:0x01f2, B:62:0x0203, B:63:0x0207, B:65:0x020d, B:66:0x0214, B:69:0x0221, B:71:0x0225, B:74:0x022c, B:75:0x022d), top: B:100:0x0100, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x020d A[Catch: all -> 0x016a, TRY_LEAVE, TryCatch #3 {all -> 0x016a, blocks: (B:35:0x0100, B:36:0x0109, B:38:0x0111, B:40:0x0128, B:44:0x0152, B:46:0x015c, B:50:0x016d, B:51:0x0172, B:53:0x0178, B:55:0x018f, B:57:0x01b4, B:59:0x01cf, B:61:0x01f2, B:62:0x0203, B:63:0x0207, B:65:0x020d, B:66:0x0214, B:69:0x0221, B:71:0x0225, B:74:0x022c, B:75:0x022d), top: B:100:0x0100, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0257 A[Catch: all -> 0x0016, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec), top: B:96:0x00b8, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x026b A[Catch: all -> 0x0016, SQLiteException -> 0x00c8, TryCatch #0 {SQLiteException -> 0x00c8, blocks: (B:27:0x00b8, B:30:0x00cb, B:32:0x00d9, B:34:0x00f9, B:76:0x0234, B:78:0x0247, B:80:0x0251, B:88:0x0271, B:82:0x0257, B:84:0x0261, B:86:0x0267, B:87:0x026b, B:89:0x0274, B:90:0x027b, B:33:0x00ec), top: B:96:0x00b8, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzW(boolean r19, int r20, java.lang.Throwable r21, byte[] r22, java.lang.String r23, java.util.List r24, java.util.Map r25) {
        /*
            Method dump skipped, instruction units count: 690
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzW(boolean, int, java.lang.Throwable, byte[], java.lang.String, java.util.List, java.util.Map):void");
    }

    public final void zzX(zzh zzhVar) {
        zzaX().zzg();
        if (TextUtils.isEmpty(zzhVar.zzf())) {
            zzY((String) Preconditions.checkNotNull(zzhVar.zzc()), 204, null, null, null);
            return;
        }
        String str = (String) Preconditions.checkNotNull(zzhVar.zzc());
        zzaW().zzk().zzb("Fetching remote configuration", str);
        com.google.android.gms.internal.measurement.zzgl zzglVarZzb = zzh().zzb(str);
        String strZzd = zzh().zzd(str);
        ArrayMap arrayMap = null;
        if (zzglVarZzb != null) {
            if (!TextUtils.isEmpty(strZzd)) {
                arrayMap = new ArrayMap();
                arrayMap.put("If-Modified-Since", strZzd);
            }
            String strZze = zzh().zze(str);
            if (!TextUtils.isEmpty(strZze)) {
                if (arrayMap == null) {
                    arrayMap = new ArrayMap();
                }
                arrayMap.put("If-None-Match", strZze);
            }
        }
        this.zzu = true;
        zzi().zzd(zzhVar, arrayMap, new zzgw() { // from class: com.google.android.gms.measurement.internal.zzpf
            @Override // com.google.android.gms.measurement.internal.zzgw
            public final /* synthetic */ void zza(String str2, int i, Throwable th, byte[] bArr, Map map) {
                this.zza.zzY(str2, i, th, bArr, map);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzY(java.lang.String r8, int r9, java.lang.Throwable r10, byte[] r11, java.util.Map r12) {
        /*
            Method dump skipped, instruction units count: 398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzY(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    public final void zzZ(Runnable runnable) {
        zzaX().zzg();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }

    public final /* synthetic */ void zzaA(long j) {
        this.zzJ = j;
    }

    public final int zzaD(String str, zzan zzanVar) {
        zzjk zzjkVar;
        zzji zzjiVarZzB;
        zzht zzhtVar = this.zzc;
        if (zzhtVar.zzy(str) == null) {
            zzanVar.zzc(zzjk.AD_PERSONALIZATION, zzam.FAILSAFE);
            return 1;
        }
        zzh zzhVarZzu = zzj().zzu(str);
        if (zzhVarZzu != null && zze.zzc(zzhVarZzu.zzaH()).zza() == zzji.POLICY && (zzjiVarZzB = zzhtVar.zzB(str, (zzjkVar = zzjk.AD_PERSONALIZATION))) != zzji.UNINITIALIZED) {
            zzanVar.zzc(zzjkVar, zzam.REMOTE_ENFORCED_DEFAULT);
            return zzjiVarZzB == zzji.GRANTED ? 0 : 1;
        }
        zzjk zzjkVar2 = zzjk.AD_PERSONALIZATION;
        zzanVar.zzc(zzjkVar2, zzam.REMOTE_DEFAULT);
        return zzhtVar.zzw(str, zzjkVar2) ? 0 : 1;
    }

    public final Map zzaE(com.google.android.gms.internal.measurement.zzhs zzhsVar) {
        HashMap map = new HashMap();
        zzp();
        for (Map.Entry entry : zzpk.zzL(zzhsVar, "gad_").entrySet()) {
            map.put((String) entry.getKey(), String.valueOf(entry.getValue()));
        }
        return map;
    }

    public final zzaz zzaF() {
        if (this.zzI == null) {
            this.zzI = new zzoy(this, this.zzn);
        }
        return this.zzI;
    }

    /* JADX INFO: renamed from: zzaG, reason: merged with bridge method [inline-methods] */
    public final void zzaw() {
        zzaX().zzg();
        if (this.zzr.isEmpty() || zzaF().zzc()) {
            return;
        }
        long jMax = Math.max(0L, ((long) ((Integer) zzfy.zzaA.zzb(null)).intValue()) - (zzba().elapsedRealtime() - this.zzJ));
        zzaW().zzk().zzb("Scheduling notify next app runnable, delay in ms", Long.valueOf(jMax));
        zzaF().zzb(jMax);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:139:0x046c A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0484 A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:190:0x05cc A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x05e8 A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x05f6 A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0724  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x077d A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x0ac3 A[Catch: all -> 0x0af4, TryCatch #1 {all -> 0x0af4, blocks: (B:308:0x09bc, B:309:0x09cf, B:311:0x09d5, B:409:0x0c9c, B:339:0x0a72, B:346:0x0aa3, B:348:0x0ac3, B:349:0x0acb, B:351:0x0ad1, B:353:0x0ae3, B:361:0x0afe, B:363:0x0b12, B:365:0x0b3b, B:367:0x0b47, B:369:0x0b5b, B:371:0x0b9c, B:377:0x0bb6, B:379:0x0bc1, B:381:0x0bc5, B:383:0x0bc9, B:385:0x0bcd, B:386:0x0bd9, B:387:0x0bde, B:389:0x0be4, B:391:0x0bfc, B:392:0x0c01, B:408:0x0c97, B:393:0x0c1b, B:395:0x0c21, B:399:0x0c42, B:401:0x0c66, B:402:0x0c6d, B:405:0x0c86, B:396:0x0c2b, B:410:0x0ca8, B:412:0x0cb5, B:413:0x0cbb, B:414:0x0cc3, B:416:0x0cc9, B:418:0x0ce0, B:420:0x0cf0, B:440:0x0d71, B:421:0x0d08, B:423:0x0d0e, B:425:0x0d18, B:427:0x0d1f, B:433:0x0d2f, B:435:0x0d36, B:437:0x0d62, B:439:0x0d69, B:438:0x0d66, B:434:0x0d33, B:426:0x0d1c), top: B:487:0x09bc }] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x0afc A[PHI: r8
      0x0afc: PHI (r8v6 ??) = (r8v5 ??), (r8v18 ??) binds: [B:347:0x0ac1, B:540:0x0afc] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x0b12 A[Catch: all -> 0x0af4, TryCatch #1 {all -> 0x0af4, blocks: (B:308:0x09bc, B:309:0x09cf, B:311:0x09d5, B:409:0x0c9c, B:339:0x0a72, B:346:0x0aa3, B:348:0x0ac3, B:349:0x0acb, B:351:0x0ad1, B:353:0x0ae3, B:361:0x0afe, B:363:0x0b12, B:365:0x0b3b, B:367:0x0b47, B:369:0x0b5b, B:371:0x0b9c, B:377:0x0bb6, B:379:0x0bc1, B:381:0x0bc5, B:383:0x0bc9, B:385:0x0bcd, B:386:0x0bd9, B:387:0x0bde, B:389:0x0be4, B:391:0x0bfc, B:392:0x0c01, B:408:0x0c97, B:393:0x0c1b, B:395:0x0c21, B:399:0x0c42, B:401:0x0c66, B:402:0x0c6d, B:405:0x0c86, B:396:0x0c2b, B:410:0x0ca8, B:412:0x0cb5, B:413:0x0cbb, B:414:0x0cc3, B:416:0x0cc9, B:418:0x0ce0, B:420:0x0cf0, B:440:0x0d71, B:421:0x0d08, B:423:0x0d0e, B:425:0x0d18, B:427:0x0d1f, B:433:0x0d2f, B:435:0x0d36, B:437:0x0d62, B:439:0x0d69, B:438:0x0d66, B:434:0x0d33, B:426:0x0d1c), top: B:487:0x09bc }] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x0b3b A[Catch: all -> 0x0af4, TryCatch #1 {all -> 0x0af4, blocks: (B:308:0x09bc, B:309:0x09cf, B:311:0x09d5, B:409:0x0c9c, B:339:0x0a72, B:346:0x0aa3, B:348:0x0ac3, B:349:0x0acb, B:351:0x0ad1, B:353:0x0ae3, B:361:0x0afe, B:363:0x0b12, B:365:0x0b3b, B:367:0x0b47, B:369:0x0b5b, B:371:0x0b9c, B:377:0x0bb6, B:379:0x0bc1, B:381:0x0bc5, B:383:0x0bc9, B:385:0x0bcd, B:386:0x0bd9, B:387:0x0bde, B:389:0x0be4, B:391:0x0bfc, B:392:0x0c01, B:408:0x0c97, B:393:0x0c1b, B:395:0x0c21, B:399:0x0c42, B:401:0x0c66, B:402:0x0c6d, B:405:0x0c86, B:396:0x0c2b, B:410:0x0ca8, B:412:0x0cb5, B:413:0x0cbb, B:414:0x0cc3, B:416:0x0cc9, B:418:0x0ce0, B:420:0x0cf0, B:440:0x0d71, B:421:0x0d08, B:423:0x0d0e, B:425:0x0d18, B:427:0x0d1f, B:433:0x0d2f, B:435:0x0d36, B:437:0x0d62, B:439:0x0d69, B:438:0x0d66, B:434:0x0d33, B:426:0x0d1c), top: B:487:0x09bc }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x017f  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x019d A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0263 A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0278 A[Catch: all -> 0x0105, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x02b5 A[Catch: all -> 0x0105, TRY_LEAVE, TryCatch #3 {all -> 0x0105, blocks: (B:3:0x0017, B:5:0x0035, B:8:0x003f, B:9:0x0059, B:12:0x0073, B:15:0x0099, B:17:0x00ce, B:20:0x00df, B:22:0x00e9, B:232:0x0746, B:27:0x0117, B:30:0x012d, B:32:0x0133, B:34:0x0139, B:36:0x014c, B:40:0x0159, B:42:0x0164, B:44:0x0170, B:46:0x0176, B:50:0x0181, B:51:0x018f, B:53:0x019d, B:56:0x01bd, B:58:0x01c3, B:60:0x01d3, B:62:0x01e1, B:64:0x01f1, B:65:0x01fe, B:66:0x0201, B:68:0x020e, B:70:0x0218, B:71:0x0228, B:73:0x0245, B:75:0x024f, B:77:0x0263, B:78:0x026d, B:81:0x0278, B:82:0x0282, B:85:0x028a, B:88:0x029b, B:89:0x029e, B:91:0x02b5, B:142:0x049d, B:143:0x04a0, B:145:0x04ac, B:148:0x04bd, B:150:0x04ce, B:152:0x04da, B:188:0x05bf, B:190:0x05cc, B:192:0x05d2, B:194:0x05d8, B:196:0x05e8, B:197:0x05eb, B:198:0x05f0, B:200:0x05f6, B:201:0x0602, B:203:0x0608, B:205:0x061c, B:207:0x0626, B:208:0x063d, B:210:0x0643, B:211:0x065e, B:213:0x0664, B:214:0x0682, B:215:0x068b, B:219:0x06b6, B:216:0x0691, B:218:0x06a3, B:220:0x06c8, B:221:0x06ea, B:223:0x06f0, B:225:0x0703, B:226:0x0710, B:227:0x0714, B:229:0x071a, B:231:0x0732, B:158:0x0508, B:160:0x0518, B:163:0x052b, B:165:0x053c, B:167:0x0548, B:170:0x0563, B:172:0x0571, B:176:0x0580, B:178:0x058a, B:181:0x0595, B:183:0x059b, B:185:0x05ab, B:186:0x05b6, B:99:0x02da, B:102:0x02e4, B:104:0x02f2, B:108:0x0335, B:105:0x030d, B:107:0x031b, B:111:0x033c, B:114:0x036f, B:115:0x0399, B:117:0x03d1, B:119:0x03d7, B:122:0x03e3, B:124:0x041a, B:125:0x0436, B:127:0x043c, B:129:0x044a, B:133:0x045e, B:130:0x0452, B:136:0x0465, B:139:0x046c, B:140:0x0484, B:235:0x075e, B:237:0x076c, B:239:0x0775, B:250:0x07a7, B:240:0x077d, B:242:0x0786, B:244:0x078c, B:247:0x0798, B:249:0x07a2, B:251:0x07aa, B:252:0x07b6, B:254:0x07bc, B:256:0x07ce, B:257:0x07d9, B:259:0x07e1, B:263:0x0807, B:265:0x0821, B:267:0x0836, B:269:0x0850, B:271:0x0865, B:272:0x0873, B:274:0x0879, B:276:0x0889, B:277:0x0890, B:279:0x089c, B:280:0x08a3, B:281:0x08a8, B:283:0x08ea, B:285:0x08f0, B:291:0x0917, B:293:0x091f, B:294:0x0928, B:296:0x092e, B:297:0x0934, B:299:0x0949, B:301:0x0959, B:303:0x0969, B:305:0x0971, B:306:0x0974, B:314:0x09ee, B:316:0x0a07, B:318:0x0a1d, B:320:0x0a22, B:322:0x0a26, B:324:0x0a2a, B:326:0x0a34, B:327:0x0a3a, B:329:0x0a3e, B:331:0x0a44, B:333:0x0a55, B:335:0x0a61, B:341:0x0a88, B:344:0x0a8e, B:286:0x08fe, B:288:0x0904, B:290:0x090a, B:270:0x0862, B:266:0x0833, B:260:0x07e7, B:262:0x07ed), top: B:490:0x0017, inners: #4 }] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02d1  */
    /* JADX WARN: Type inference failed for: r21v0 */
    /* JADX WARN: Type inference failed for: r21v1 */
    /* JADX WARN: Type inference failed for: r21v10 */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r21v4 */
    /* JADX WARN: Type inference failed for: r21v5 */
    /* JADX WARN: Type inference failed for: r21v6 */
    /* JADX WARN: Type inference failed for: r21v7 */
    /* JADX WARN: Type inference failed for: r21v8 */
    /* JADX WARN: Type inference failed for: r21v9 */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v115 */
    /* JADX WARN: Type inference failed for: r2v125 */
    /* JADX WARN: Type inference failed for: r2v126 */
    /* JADX WARN: Type inference failed for: r2v127 */
    /* JADX WARN: Type inference failed for: r2v128 */
    /* JADX WARN: Type inference failed for: r2v129 */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.measurement.internal.zzpg] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v36 */
    /* JADX WARN: Type inference failed for: r2v5, types: [com.google.android.gms.measurement.internal.zzpg] */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52, types: [com.google.android.gms.measurement.internal.zzpg] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v15 */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v18 */
    /* JADX WARN: Type inference failed for: r5v66 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v30, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v45 */
    /* JADX WARN: Type inference failed for: r8v46 */
    /* JADX WARN: Type inference failed for: r8v47 */
    /* JADX WARN: Type inference failed for: r8v5 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean zzaH(java.lang.String r47, long r48) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 3743
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzaH(java.lang.String, long):boolean");
    }

    public final void zzaI(com.google.android.gms.internal.measurement.zzic zzicVar, long j, boolean z) {
        Object obj;
        String str = true != z ? "_lte" : "_se";
        zzpn zzpnVarZzm = zzj().zzm(zzicVar.zzK(), str);
        zzpn zzpnVar = (zzpnVarZzm == null || (obj = zzpnVarZzm.zze) == null) ? new zzpn(zzicVar.zzK(), "auto", str, zzba().currentTimeMillis(), Long.valueOf(j)) : new zzpn(zzicVar.zzK(), "auto", str, zzba().currentTimeMillis(), Long.valueOf(((Long) obj).longValue() + j));
        com.google.android.gms.internal.measurement.zzit zzitVarZzm = com.google.android.gms.internal.measurement.zziu.zzm();
        zzitVarZzm.zzb(str);
        zzitVarZzm.zza(zzba().currentTimeMillis());
        Object obj2 = zzpnVar.zze;
        zzitVarZzm.zze(((Long) obj2).longValue());
        com.google.android.gms.internal.measurement.zziu zziuVar = (com.google.android.gms.internal.measurement.zziu) zzitVarZzm.zzbd();
        int iZzx = zzpk.zzx(zzicVar, str);
        if (iZzx >= 0) {
            zzicVar.zzn(iZzx, zziuVar);
        } else {
            zzicVar.zzo(zziuVar);
        }
        if (j > 0) {
            zzj().zzl(zzpnVar);
            zzaW().zzk().zzc("Updated engagement user property. scope, value", true != z ? "lifetime" : "session-scoped", obj2);
        }
    }

    public final boolean zzaJ(com.google.android.gms.internal.measurement.zzhr zzhrVar, com.google.android.gms.internal.measurement.zzhr zzhrVar2) {
        Preconditions.checkArgument("_e".equals(zzhrVar.zzk()));
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzhwVarZzI = zzpk.zzI((com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbd(), "_sc");
        String strZzd = zzhwVarZzI == null ? null : zzhwVarZzI.zzd();
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzhwVarZzI2 = zzpk.zzI((com.google.android.gms.internal.measurement.zzhs) zzhrVar2.zzbd(), "_pc");
        String strZzd2 = zzhwVarZzI2 != null ? zzhwVarZzI2.zzd() : null;
        if (strZzd2 == null || !strZzd2.equals(strZzd)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(zzhrVar.zzk()));
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzhwVarZzI3 = zzpk.zzI((com.google.android.gms.internal.measurement.zzhs) zzhrVar.zzbd(), "_et");
        if (zzhwVarZzI3 == null || !zzhwVarZzI3.zze() || zzhwVarZzI3.zzf() <= 0) {
            return true;
        }
        long jZzf = zzhwVarZzI3.zzf();
        zzp();
        com.google.android.gms.internal.measurement.zzhw zzhwVarZzI4 = zzpk.zzI((com.google.android.gms.internal.measurement.zzhs) zzhrVar2.zzbd(), "_et");
        if (zzhwVarZzI4 != null && zzhwVarZzI4.zzf() > 0) {
            jZzf += zzhwVarZzI4.zzf();
        }
        zzp();
        zzpk.zzF(zzhrVar2, "_et", Long.valueOf(jZzf));
        zzp();
        zzpk.zzF(zzhrVar, "_fr", 1L);
        return true;
    }

    public final void zzaK(com.google.android.gms.internal.measurement.zzhr zzhrVar, String str, String str2) {
        ArrayList arrayList = new ArrayList(zzhrVar.zza());
        int i = 0;
        while (true) {
            if (i >= arrayList.size()) {
                i = -1;
                break;
            } else if (str.equals(((com.google.android.gms.internal.measurement.zzhw) arrayList.get(i)).zzb())) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        double dZzk = zzhrVar.zzc(i).zzk() * 1000000.0d;
        if (dZzk == 0.0d) {
            dZzk = zzhrVar.zzc(i).zzf() * 1000000.0d;
        }
        if (dZzk <= 9.223372036854776E18d && dZzk >= -9.223372036854776E18d) {
            zzhrVar.zzj(i);
            zzhv zzhvVarZzn = com.google.android.gms.internal.measurement.zzhw.zzn();
            zzhvVarZzn.zzb(str);
            zzhvVarZzn.zzf(Math.round(dZzk));
            zzhrVar.zzf((com.google.android.gms.internal.measurement.zzhw) zzhvVarZzn.zzbd());
            return;
        }
        zzaW().zze().zzc("Data lost. Purchase " + str + " is too big. appId", zzgu.zzl(str2), Double.valueOf(dZzk));
    }

    public final boolean zzaL() {
        zzaX().zzg();
        zzu();
        return zzj().zzP() || !TextUtils.isEmpty(zzj().zzF());
    }

    public final void zzaM() {
        long jMax;
        long jMax2;
        zzaX().zzg();
        zzu();
        if (this.zza > 0) {
            long jAbs = 3600000 - Math.abs(zzba().elapsedRealtime() - this.zza);
            if (jAbs > 0) {
                zzaW().zzk().zzb("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzk().zzb();
                zzl().zzf();
                return;
            }
            this.zza = 0L;
        }
        if (!this.zzn.zzH() || !zzaL()) {
            zzaW().zzk().zza("Nothing to upload or uploading impossible");
            zzk().zzb();
            zzl().zzf();
            return;
        }
        long jCurrentTimeMillis = zzba().currentTimeMillis();
        zzd();
        long jMax3 = Math.max(0L, ((Long) zzfy.zzO.zzb(null)).longValue());
        boolean z = true;
        if (!zzj().zzR() && !zzj().zzG()) {
            z = false;
        }
        if (z) {
            String strZzA = zzd().zzA();
            if (TextUtils.isEmpty(strZzA) || ".none.".equals(strZzA)) {
                zzd();
                jMax = Math.max(0L, ((Long) zzfy.zzI.zzb(null)).longValue());
            } else {
                zzd();
                jMax = Math.max(0L, ((Long) zzfy.zzJ.zzb(null)).longValue());
            }
        } else {
            zzd();
            jMax = Math.max(0L, ((Long) zzfy.zzH.zzb(null)).longValue());
        }
        long jZza = this.zzk.zzd.zza();
        long jZza2 = this.zzk.zze.zza();
        long j = 0;
        boolean z2 = z;
        long jMax4 = Math.max(zzj().zzM(), zzj().zzO());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = jCurrentTimeMillis - Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            jMax2 = jMax3 + jAbs2;
            long jMax5 = Math.max(jAbs3, jAbs4);
            if (z2 && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + jMax;
            }
            if (!zzp().zzs(jMax5, jMax)) {
                jMax2 = jMax5 + jMax;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i = 0;
                while (true) {
                    zzd();
                    if (i >= Math.min(20, Math.max(0, ((Integer) zzfy.zzQ.zzb(null)).intValue()))) {
                        jMax2 = 0;
                        break;
                    }
                    zzd();
                    jMax2 += Math.max(j, ((Long) zzfy.zzP.zzb(null)).longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    }
                    i++;
                    j = 0;
                }
            }
            j = 0;
        }
        if (jMax2 == j) {
            zzaW().zzk().zza("Next upload time is 0");
            zzk().zzb();
            zzl().zzf();
            return;
        }
        if (!zzi().zzb()) {
            zzaW().zzk().zza("No network");
            zzk().zza();
            zzl().zzf();
            return;
        }
        long jZza3 = this.zzk.zzc.zza();
        zzd();
        long jMax6 = Math.max(0L, ((Long) zzfy.zzF.zzb(null)).longValue());
        if (!zzp().zzs(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzk().zzb();
        long jCurrentTimeMillis2 = jMax2 - zzba().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zzd();
            jCurrentTimeMillis2 = Math.max(0L, ((Long) zzfy.zzK.zzb(null)).longValue());
            this.zzk.zzd.zzb(zzba().currentTimeMillis());
        }
        zzaW().zzk().zzb("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzl().zzd(jCurrentTimeMillis2);
    }

    public final void zzaN() {
        zzaX().zzg();
        if (this.zzu || this.zzv || this.zzw) {
            zzaW().zzk().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv), Boolean.valueOf(this.zzw));
            return;
        }
        zzaW().zzk().zza("Stopping uploading service(s)");
        List list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Runnable) it.next()).run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    public final Boolean zzaO(zzh zzhVar) {
        try {
            if (zzhVar.zzt() != -2147483648L) {
                if (zzhVar.zzt() == Wrappers.packageManager(this.zzn.zzaZ()).getPackageInfo(zzhVar.zzc(), 0).versionCode) {
                    return Boolean.TRUE;
                }
            } else {
                String str = Wrappers.packageManager(this.zzn.zzaZ()).getPackageInfo(zzhVar.zzc(), 0).versionName;
                String strZzr = zzhVar.zzr();
                if (strZzr != null && strZzr.equals(str)) {
                    return Boolean.TRUE;
                }
            }
            return Boolean.FALSE;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final zzr zzaP(String str) {
        zzh zzhVarZzu = zzj().zzu(str);
        if (zzhVarZzu == null || TextUtils.isEmpty(zzhVarZzu.zzr())) {
            zzaW().zzj().zzb("No app data available; dropping", str);
            return null;
        }
        Boolean boolZzaO = zzaO(zzhVarZzu);
        if (boolZzaO == null || boolZzaO.booleanValue()) {
            return new zzr(str, zzhVarZzu.zzf(), zzhVarZzu.zzr(), zzhVarZzu.zzt(), zzhVarZzu.zzv(), zzhVarZzu.zzx(), zzhVarZzu.zzz(), (String) null, zzhVarZzu.zzD(), false, zzhVarZzu.zzl(), 0L, 0, zzhVarZzu.zzac(), false, zzhVarZzu.zzae(), zzhVarZzu.zzB(), zzhVarZzu.zzag(), zzB(str).zzl(), "", (String) null, zzhVarZzu.zzai(), zzhVarZzu.zzak(), zzB(str).zzb(), zzx(str).zze(), zzhVarZzu.zzao(), zzhVarZzu.zzaw(), zzhVarZzu.zzay(), zzhVarZzu.zzaH(), 0L, zzhVarZzu.zzaL(), 0L);
        }
        zzaW().zzb().zzb("App version does not match; dropping. appId", zzgu.zzl(str));
        return null;
    }

    public final boolean zzaQ(String str, String str2) {
        zzbd zzbdVarZzf = zzj().zzf(str, str2);
        return zzbdVarZzf == null || zzbdVarZzf.zzc < 1;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzae zzaV() {
        return this.zzn.zzaV();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzgu zzaW() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzaW();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final zzhz zzaX() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzaX();
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Context zzaZ() {
        return this.zzn.zzaZ();
    }

    public final void zzaa() {
        zzaX().zzg();
        zzu();
        if (this.zzp) {
            return;
        }
        this.zzp = true;
        if (zzab()) {
            FileChannel fileChannel = this.zzy;
            zzaX().zzg();
            int i = 0;
            if (fileChannel == null || !fileChannel.isOpen()) {
                zzaW().zzb().zza("Bad channel to read from");
            } else {
                ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
                try {
                    fileChannel.position(0L);
                    int i2 = fileChannel.read(byteBufferAllocate);
                    if (i2 == 4) {
                        byteBufferAllocate.flip();
                        i = byteBufferAllocate.getInt();
                    } else if (i2 != -1) {
                        zzaW().zze().zzb("Unexpected data length. Bytes read", Integer.valueOf(i2));
                    }
                } catch (IOException e) {
                    zzaW().zzb().zzb("Failed to read from channel", e);
                }
            }
            int iZzm = this.zzn.zzv().zzm();
            zzaX().zzg();
            if (i > iZzm) {
                zzaW().zzb().zzc("Panic: can't downgrade version. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzm));
                return;
            }
            if (i < iZzm) {
                FileChannel fileChannel2 = this.zzy;
                zzaX().zzg();
                if (fileChannel2 == null || !fileChannel2.isOpen()) {
                    zzaW().zzb().zza("Bad channel to read from");
                } else {
                    ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(4);
                    byteBufferAllocate2.putInt(iZzm);
                    byteBufferAllocate2.flip();
                    try {
                        fileChannel2.truncate(0L);
                        fileChannel2.write(byteBufferAllocate2);
                        fileChannel2.force(true);
                        if (fileChannel2.size() != 4) {
                            zzaW().zzb().zzb("Error writing to channel. Bytes written", Long.valueOf(fileChannel2.size()));
                        }
                        zzaW().zzk().zzc("Storage version upgraded. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzm));
                        return;
                    } catch (IOException e2) {
                        zzaW().zzb().zzb("Failed to write to channel", e2);
                    }
                }
                zzaW().zzb().zzc("Storage version upgrade failed. Previous, current version", Integer.valueOf(i), Integer.valueOf(iZzm));
            }
        }
    }

    public final boolean zzab() {
        zzaX().zzg();
        FileLock fileLock = this.zzx;
        if (fileLock != null && fileLock.isValid()) {
            zzaW().zzk().zza("Storage concurrent access okay");
            return true;
        }
        this.zze.zzu.zzc();
        File filesDir = this.zzn.zzaZ().getFilesDir();
        com.google.android.gms.internal.measurement.zzby.zza();
        int i = com.google.android.gms.internal.measurement.zzcd.zza;
        try {
            FileChannel channel = new RandomAccessFile(new File(new File(filesDir, "google_app_measurement.db").getPath()), "rw").getChannel();
            this.zzy = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzx = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzaW().zzk().zza("Storage concurrent access okay");
                return true;
            }
            zzaW().zzb().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzaW().zzb().zzb("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzaW().zzb().zzb("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzaW().zze().zzb("Storage lock already acquired", e3);
            return false;
        }
    }

    public final void zzac(zzr zzrVar) {
        if (this.zzz != null) {
            ArrayList arrayList = new ArrayList();
            this.zzA = arrayList;
            arrayList.addAll(this.zzz);
        }
        zzaw zzawVarZzj = zzj();
        String str = (String) Preconditions.checkNotNull(zzrVar.zza);
        Preconditions.checkNotEmpty(str);
        zzawVarZzj.zzg();
        zzawVarZzj.zzay();
        try {
            SQLiteDatabase sQLiteDatabaseZze = zzawVarZzj.zze();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseZze.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZze.delete("events", "app_id=?", strArr) + sQLiteDatabaseZze.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseZze.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZze.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZze.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZze.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZze.delete("queue", "app_id=?", strArr) + sQLiteDatabaseZze.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZze.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseZze.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseZze.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseZze.delete("upload_queue", "app_id=?", strArr);
            zzahh.zza();
            zzic zzicVar = zzawVarZzj.zzu;
            if (zzicVar.zzc().zzp(null, zzfy.zzbc)) {
                iDelete += sQLiteDatabaseZze.delete("no_data_mode_events", "app_id=?", strArr);
            }
            int iDelete2 = iDelete + sQLiteDatabaseZze.delete("diagnostic_signals", "app_id=?", strArr);
            if (iDelete2 > 0) {
                zzicVar.zzaW().zzk().zzc("Reset analytics data. app, records", str, Integer.valueOf(iDelete2));
            }
        } catch (SQLiteException e) {
            zzawVarZzj.zzu.zzaW().zzb().zzc("Error resetting analytics data. appId, error", zzgu.zzl(str), e);
        }
        if (zzrVar.zzh) {
            zzai(zzrVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00d1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzad(com.google.android.gms.measurement.internal.zzpl r22, com.google.android.gms.measurement.internal.zzr r23) {
        /*
            Method dump skipped, instruction units count: 496
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzad(com.google.android.gms.measurement.internal.zzpl, com.google.android.gms.measurement.internal.zzr):void");
    }

    public final void zzae(String str, zzr zzrVar) {
        zzaX().zzg();
        zzu();
        if (zzaS(zzrVar)) {
            if (!zzrVar.zzh) {
                zzap(zzrVar);
                return;
            }
            Boolean boolZzaU = zzaU(zzrVar);
            if ("_npa".equals(str) && boolZzaU != null) {
                zzaW().zzj().zza("Falling back to manifest metadata value for ad personalization");
                zzad(new zzpl("_npa", zzba().currentTimeMillis(), Long.valueOf(true != boolZzaU.booleanValue() ? 0L : 1L), "auto"), zzrVar);
                return;
            }
            zzgs zzgsVarZzj = zzaW().zzj();
            zzic zzicVar = this.zzn;
            zzgsVarZzj.zzb("Removing user property", zzicVar.zzl().zzc(str));
            zzj().zzb();
            try {
                zzap(zzrVar);
                if ("_id".equals(str)) {
                    zzj().zzk((String) Preconditions.checkNotNull(zzrVar.zza), "_lair");
                }
                zzj().zzk((String) Preconditions.checkNotNull(zzrVar.zza), str);
                zzj().zzc();
                zzaW().zzj().zzb("User property removed", zzicVar.zzl().zzc(str));
                zzj().zzd();
            } catch (Throwable th) {
                zzj().zzd();
                throw th;
            }
        }
    }

    public final void zzaf() {
        this.zzs++;
    }

    public final void zzag() {
        this.zzt++;
    }

    public final zzic zzah() {
        return this.zzn;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x035b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void zzai(com.google.android.gms.measurement.internal.zzr r35) {
        /*
            Method dump skipped, instruction units count: 1121
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzai(com.google.android.gms.measurement.internal.zzr):void");
    }

    public final void zzaj(zzr zzrVar) throws Throwable {
        zzaX().zzg();
        zzu();
        Preconditions.checkNotNull(zzrVar);
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        int i = 0;
        if (zzd().zzp(null, zzfy.zzay)) {
            long jCurrentTimeMillis = zzba().currentTimeMillis();
            int iZzm = zzd().zzm(null, zzfy.zzah);
            zzd();
            long jZzF = jCurrentTimeMillis - zzal.zzF();
            while (i < iZzm && zzaH(null, jZzF)) {
                i++;
            }
        } else {
            zzd();
            long jZzH = zzal.zzH();
            while (i < jZzH && zzaH(str, 0L)) {
                i++;
            }
        }
        if (zzd().zzp(null, zzfy.zzaz)) {
            zzaX().zzg();
            zzaw();
        }
        if (this.zzl.zzc(str, com.google.android.gms.internal.measurement.zzin.zzb(zzrVar.zzE))) {
            zzaW().zzk().zzb("[sgtm] Going background, trigger client side upload. appId", str);
            zzN(str, zzba().currentTimeMillis());
        }
    }

    public final void zzak(zzah zzahVar) {
        zzr zzrVarZzaP = zzaP((String) Preconditions.checkNotNull(zzahVar.zza));
        if (zzrVarZzaP != null) {
            zzal(zzahVar, zzrVarZzaP);
        }
    }

    public final void zzal(zzah zzahVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotEmpty(zzahVar.zza);
        Preconditions.checkNotNull(zzahVar.zzb);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zzc.zzb);
        zzaX().zzg();
        zzu();
        if (zzaS(zzrVar)) {
            if (!zzrVar.zzh) {
                zzap(zzrVar);
                return;
            }
            zzah zzahVar2 = new zzah(zzahVar);
            boolean z = false;
            zzahVar2.zze = false;
            zzj().zzb();
            try {
                zzah zzahVarZzq = zzj().zzq((String) Preconditions.checkNotNull(zzahVar2.zza), zzahVar2.zzc.zzb);
                if (zzahVarZzq != null && !zzahVarZzq.zzb.equals(zzahVar2.zzb)) {
                    zzaW().zze().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzb, zzahVarZzq.zzb);
                }
                if (zzahVarZzq != null && zzahVarZzq.zze) {
                    zzahVar2.zzb = zzahVarZzq.zzb;
                    zzahVar2.zzd = zzahVarZzq.zzd;
                    zzahVar2.zzh = zzahVarZzq.zzh;
                    zzahVar2.zzf = zzahVarZzq.zzf;
                    zzahVar2.zzi = zzahVarZzq.zzi;
                    zzahVar2.zze = true;
                    zzpl zzplVar = zzahVar2.zzc;
                    zzahVar2.zzc = new zzpl(zzplVar.zzb, zzahVarZzq.zzc.zzc, zzplVar.zza(), zzahVarZzq.zzc.zzf);
                } else if (TextUtils.isEmpty(zzahVar2.zzf)) {
                    zzpl zzplVar2 = zzahVar2.zzc;
                    zzahVar2.zzc = new zzpl(zzplVar2.zzb, zzahVar2.zzd, zzplVar2.zza(), zzahVar2.zzc.zzf);
                    zzahVar2.zze = true;
                    z = true;
                }
                if (zzahVar2.zze) {
                    zzpl zzplVar3 = zzahVar2.zzc;
                    zzpn zzpnVar = new zzpn((String) Preconditions.checkNotNull(zzahVar2.zza), zzahVar2.zzb, zzplVar3.zzb, zzplVar3.zzc, Preconditions.checkNotNull(zzplVar3.zza()));
                    if (zzj().zzl(zzpnVar)) {
                        zzaW().zzj().zzd("User property updated immediately", zzahVar2.zza, this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                    } else {
                        zzaW().zzb().zzd("(2)Too many active user properties, ignoring", zzgu.zzl(zzahVar2.zza), this.zzn.zzl().zzc(zzpnVar.zzc), zzpnVar.zze);
                    }
                    if (z && zzahVar2.zzi != null) {
                        zzH(new zzbh(zzahVar2.zzi, zzahVar2.zzd, 0L), zzrVar);
                    }
                }
                if (zzj().zzp(zzahVar2)) {
                    zzaW().zzj().zzd("Conditional property added", zzahVar2.zza, this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
                } else {
                    zzaW().zzb().zzd("Too many conditional properties, ignoring", zzgu.zzl(zzahVar2.zza), this.zzn.zzl().zzc(zzahVar2.zzc.zzb), zzahVar2.zzc.zza());
                }
                zzj().zzc();
                zzj().zzd();
            } catch (Throwable th) {
                zzj().zzd();
                throw th;
            }
        }
    }

    public final void zzam(zzah zzahVar) {
        zzr zzrVarZzaP = zzaP((String) Preconditions.checkNotNull(zzahVar.zza));
        if (zzrVarZzaP != null) {
            zzan(zzahVar, zzrVarZzaP);
        }
    }

    public final void zzan(zzah zzahVar, zzr zzrVar) {
        Preconditions.checkNotNull(zzahVar);
        Preconditions.checkNotEmpty(zzahVar.zza);
        Preconditions.checkNotNull(zzahVar.zzc);
        Preconditions.checkNotEmpty(zzahVar.zzc.zzb);
        zzaX().zzg();
        zzu();
        if (zzaS(zzrVar)) {
            if (!zzrVar.zzh) {
                zzap(zzrVar);
                return;
            }
            zzj().zzb();
            try {
                zzap(zzrVar);
                String str = (String) Preconditions.checkNotNull(zzahVar.zza);
                zzah zzahVarZzq = zzj().zzq(str, zzahVar.zzc.zzb);
                if (zzahVarZzq != null) {
                    zzaW().zzj().zzc("Removing conditional user property", zzahVar.zza, this.zzn.zzl().zzc(zzahVar.zzc.zzb));
                    zzj().zzr(str, zzahVar.zzc.zzb);
                    if (zzahVarZzq.zze) {
                        zzj().zzk(str, zzahVar.zzc.zzb);
                    }
                    zzbh zzbhVar = zzahVar.zzk;
                    if (zzbhVar != null) {
                        zzbf zzbfVar = zzbhVar.zzb;
                        zzH((zzbh) Preconditions.checkNotNull(zzt().zzaf(str, ((zzbh) Preconditions.checkNotNull(zzbhVar)).zza, zzbfVar != null ? zzbfVar.zzf() : null, zzahVarZzq.zzb, zzbhVar.zzd, zzbhVar.zze, true, true)), zzrVar);
                    }
                } else {
                    zzaW().zze().zzc("Conditional user property doesn't exist", zzgu.zzl(zzahVar.zza), this.zzn.zzl().zzc(zzahVar.zzc.zzb));
                }
                zzj().zzc();
                zzj().zzd();
            } catch (Throwable th) {
                zzj().zzd();
                throw th;
            }
        }
    }

    public final void zzao(zzr zzrVar, long j) {
        zzh zzhVarZzu = zzj().zzu((String) Preconditions.checkNotNull(zzrVar.zza));
        if (zzhVarZzu != null && zzt().zzD(zzrVar.zzb, zzhVarZzu.zzf())) {
            zzaW().zze().zzb("New GMP App Id passed in. Removing cached database data. appId", zzgu.zzl(zzhVarZzu.zzc()));
            zzaw zzawVarZzj = zzj();
            String strZzc = zzhVarZzu.zzc();
            zzawVarZzj.zzay();
            zzawVarZzj.zzg();
            Preconditions.checkNotEmpty(strZzc);
            try {
                SQLiteDatabase sQLiteDatabaseZze = zzawVarZzj.zze();
                String[] strArr = {strZzc};
                int iDelete = sQLiteDatabaseZze.delete("events", "app_id=?", strArr) + sQLiteDatabaseZze.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseZze.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseZze.delete("apps", "app_id=?", strArr) + sQLiteDatabaseZze.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseZze.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseZze.delete("event_filters", "app_id=?", strArr) + sQLiteDatabaseZze.delete("property_filters", "app_id=?", strArr) + sQLiteDatabaseZze.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseZze.delete("consent_settings", "app_id=?", strArr) + sQLiteDatabaseZze.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseZze.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseZze.delete("diagnostic_signals", "app_id=?", strArr);
                zzahh.zza();
                zzic zzicVar = zzawVarZzj.zzu;
                if (zzicVar.zzc().zzp(null, zzfy.zzbc)) {
                    iDelete += sQLiteDatabaseZze.delete("no_data_mode_events", "app_id=?", strArr);
                }
                if (iDelete > 0) {
                    zzicVar.zzaW().zzk().zzc("Deleted application data. app, records", strZzc, Integer.valueOf(iDelete));
                }
            } catch (SQLiteException e) {
                zzawVarZzj.zzu.zzaW().zzb().zzc("Error deleting application data. appId, error", zzgu.zzl(strZzc), e);
            }
            zzhVarZzu = null;
        }
        if (zzhVarZzu != null) {
            boolean z = (zzhVarZzu.zzt() == -2147483648L || zzhVarZzu.zzt() == zzrVar.zzj) ? false : true;
            String strZzr = zzhVarZzu.zzr();
            if (z || ((zzhVarZzu.zzt() != -2147483648L || strZzr == null || strZzr.equals(zzrVar.zzc)) ? false : true)) {
                Bundle bundle = new Bundle();
                bundle.putString("_pv", strZzr);
                zzbh zzbhVar = new zzbh("_au", new zzbf(bundle), "auto", j, 0L);
                if (zzd().zzp(null, zzfy.zzaX)) {
                    zzE(zzbhVar, zzrVar);
                } else {
                    zzF(zzbhVar, zzrVar);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x01d5  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzh zzap(com.google.android.gms.measurement.internal.zzr r13) {
        /*
            Method dump skipped, instruction units count: 482
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzap(com.google.android.gms.measurement.internal.zzr):com.google.android.gms.measurement.internal.zzh");
    }

    public final String zzaq(zzr zzrVar) {
        try {
            return (String) zzaX().zzh(new zzoz(this, zzrVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzaW().zzb().zzc("Failed to get app instance id. appId", zzgu.zzl(zzrVar.zza), e);
            return null;
        }
    }

    public final List zzar(zzr zzrVar, Bundle bundle) {
        zzaX().zzg();
        zzaif.zza();
        zzal zzalVarZzd = zzd();
        String str = zzrVar.zza;
        if (!zzalVarZzd.zzp(str, zzfy.zzaO) || str == null) {
            return new ArrayList();
        }
        if (bundle != null) {
            int[] intArray = bundle.getIntArray("uriSources");
            long[] longArray = bundle.getLongArray("uriTimestamps");
            if (intArray != null) {
                if (longArray == null || longArray.length != intArray.length) {
                    zzaW().zzb().zza("Uri sources and timestamps do not match");
                } else {
                    for (int i = 0; i < intArray.length; i++) {
                        zzaw zzawVarZzj = zzj();
                        int i2 = intArray[i];
                        long j = longArray[i];
                        Preconditions.checkNotEmpty(str);
                        zzawVarZzj.zzg();
                        zzawVarZzj.zzay();
                        try {
                            int iDelete = zzawVarZzj.zze().delete("trigger_uris", "app_id=? and source=? and timestamp_millis<=?", new String[]{str, String.valueOf(i2), String.valueOf(j)});
                            zzgs zzgsVarZzk = zzawVarZzj.zzu.zzaW().zzk();
                            StringBuilder sb = new StringBuilder(String.valueOf(iDelete).length() + 46);
                            sb.append("Pruned ");
                            sb.append(iDelete);
                            sb.append(" trigger URIs. appId, source, timestamp");
                            zzgsVarZzk.zzd(sb.toString(), str, Integer.valueOf(i2), Long.valueOf(j));
                        } catch (SQLiteException e) {
                            zzawVarZzj.zzu.zzaW().zzb().zzc("Error pruning trigger URIs. appId", zzgu.zzl(str), e);
                        }
                    }
                }
            }
        }
        zzaw zzawVarZzj2 = zzj();
        String str2 = zzrVar.zza;
        Preconditions.checkNotEmpty(str2);
        zzawVarZzj2.zzg();
        zzawVarZzj2.zzay();
        List arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                cursorQuery = zzawVarZzj2.zze().query("trigger_uris", new String[]{"trigger_uri", "timestamp_millis", "source"}, "app_id=?", new String[]{str2}, null, null, "rowid", null);
                if (cursorQuery.moveToFirst()) {
                    do {
                        String string = cursorQuery.getString(0);
                        if (string == null) {
                            string = "";
                        }
                        arrayList.add(new zzoh(string, cursorQuery.getLong(1), cursorQuery.getInt(2)));
                    } while (cursorQuery.moveToNext());
                }
            } catch (SQLiteException e2) {
                zzawVarZzj2.zzu.zzaW().zzb().zzc("Error querying trigger uris. appId", zzgu.zzl(str2), e2);
                arrayList = Collections.EMPTY_LIST;
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return arrayList;
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    public final void zzas(String str, zzaf zzafVar) {
        zzaX().zzg();
        zzu();
        zzaw zzawVarZzj = zzj();
        long j = zzafVar.zza;
        zzpj zzpjVarZzB = zzawVarZzj.zzB(j);
        if (zzpjVarZzB == null) {
            zzaW().zze().zzc("[sgtm] Queued batch doesn't exist. appId, rowId", str, Long.valueOf(j));
            return;
        }
        String strZze = zzpjVarZzB.zze();
        if (zzafVar.zzb != zzlr.SUCCESS.zza()) {
            if (zzafVar.zzb == zzlr.BACKOFF.zza()) {
                Map map = this.zzF;
                zzpe zzpeVar = (zzpe) map.get(strZze);
                if (zzpeVar == null) {
                    zzpeVar = new zzpe(this);
                    map.put(strZze, zzpeVar);
                } else {
                    zzpeVar.zza();
                }
                zzaW().zzk().zzd("[sgtm] Putting sGTM server in backoff mode. appId, destination, nextRetryInSeconds", str, strZze, Long.valueOf((zzpeVar.zzc() - zzba().currentTimeMillis()) / 1000));
            }
            zzaw zzawVarZzj2 = zzj();
            Long lValueOf = Long.valueOf(zzafVar.zza);
            zzawVarZzj2.zzK(lValueOf);
            zzaW().zzk().zzc("[sgtm] increased batch retry count after failed client upload. appId, rowId", str, lValueOf);
            return;
        }
        Map map2 = this.zzF;
        if (map2.containsKey(strZze)) {
            map2.remove(strZze);
        }
        zzaw zzawVarZzj3 = zzj();
        Long lValueOf2 = Long.valueOf(j);
        zzawVarZzj3.zzE(lValueOf2);
        zzaW().zzk().zzc("[sgtm] queued batch deleted after successful client upload. appId, rowId", str, lValueOf2);
        long j2 = zzafVar.zzc;
        if (j2 > 0) {
            zzaw zzawVarZzj4 = zzj();
            zzawVarZzj4.zzg();
            zzawVarZzj4.zzay();
            Long lValueOf3 = Long.valueOf(j2);
            Preconditions.checkNotNull(lValueOf3);
            ContentValues contentValues = new ContentValues();
            contentValues.put("upload_type", Integer.valueOf(zzls.GOOGLE_SIGNAL.zza()));
            zzic zzicVar = zzawVarZzj4.zzu;
            contentValues.put("creation_timestamp", Long.valueOf(zzicVar.zzba().currentTimeMillis()));
            try {
                if (zzawVarZzj4.zze().update("upload_queue", contentValues, "rowid=? AND app_id=? AND upload_type=?", new String[]{String.valueOf(j2), str, String.valueOf(zzls.GOOGLE_SIGNAL_PENDING.zza())}) != 1) {
                    zzicVar.zzaW().zze().zzc("Google Signal pending batch not updated. appId, rowId", str, lValueOf3);
                }
                zzaW().zzk().zzc("[sgtm] queued Google Signal batch updated. appId, signalRowId", str, Long.valueOf(zzafVar.zzc));
                zzP(str);
            } catch (SQLiteException e) {
                zzawVarZzj4.zzu.zzaW().zzb().zzd("Failed to update google Signal pending batch. appid, rowId", str, Long.valueOf(j2), e);
                throw e;
            }
        }
    }

    public final void zzat(boolean z) {
        zzaM();
    }

    public final void zzau(String str, zzlu zzluVar) {
        zzaX().zzg();
        String str2 = this.zzH;
        if (str2 == null || str2.equals(str) || zzluVar != null) {
            this.zzH = str;
            this.zzG = zzluVar;
        }
    }

    public final /* synthetic */ void zzav(zzph zzphVar) {
        zzaX().zzg();
        this.zzm = new zzhk(this);
        zzaw zzawVar = new zzaw(this);
        zzawVar.zzaz();
        this.zze = zzawVar;
        zzd().zza((zzak) Preconditions.checkNotNull(this.zzc));
        zznn zznnVar = new zznn(this);
        zznnVar.zzaz();
        this.zzk = zznnVar;
        zzad zzadVar = new zzad(this);
        zzadVar.zzaz();
        this.zzh = zzadVar;
        zzlp zzlpVar = new zzlp(this);
        zzlpVar.zzaz();
        this.zzj = zzlpVar;
        zzok zzokVar = new zzok(this);
        zzokVar.zzaz();
        this.zzg = zzokVar;
        this.zzf = new zzhb(this);
        if (this.zzs != this.zzt) {
            zzaW().zzb().zzc("Not all upload components initialized", Integer.valueOf(this.zzs), Integer.valueOf(this.zzt));
        }
        this.zzo.set(true);
        zzaW().zzk().zza("UploadController is now fully initialized");
    }

    public final /* synthetic */ zzic zzay() {
        return this.zzn;
    }

    public final /* synthetic */ Deque zzaz() {
        return this.zzr;
    }

    @Override // com.google.android.gms.measurement.internal.zzjg
    public final Clock zzba() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzba();
    }

    public final void zzc() {
        zzaX().zzg();
        zzj().zzI();
        zzaw zzawVarZzj = zzj();
        zzawVarZzj.zzg();
        zzawVarZzj.zzay();
        if (zzawVarZzj.zzai()) {
            zzfx zzfxVar = zzfy.zzau;
            if (((Long) zzfxVar.zzb(null)).longValue() != 0) {
                SQLiteDatabase sQLiteDatabaseZze = zzawVarZzj.zze();
                zzic zzicVar = zzawVarZzj.zzu;
                int iDelete = sQLiteDatabaseZze.delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(zzicVar.zzba().currentTimeMillis()), String.valueOf(zzfxVar.zzb(null))});
                if (iDelete > 0) {
                    zzicVar.zzaW().zzk().zzb("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(iDelete));
                }
            }
        }
        if (this.zzk.zzd.zza() == 0) {
            this.zzk.zzd.zzb(zzba().currentTimeMillis());
        }
        zzaM();
    }

    public final zzal zzd() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzc();
    }

    public final zzou zzf() {
        return this.zzl;
    }

    public final zzht zzh() {
        zzht zzhtVar = this.zzc;
        zzaT(zzhtVar);
        return zzhtVar;
    }

    public final zzgz zzi() {
        zzgz zzgzVar = this.zzd;
        zzaT(zzgzVar);
        return zzgzVar;
    }

    public final zzaw zzj() {
        zzaw zzawVar = this.zze;
        zzaT(zzawVar);
        return zzawVar;
    }

    public final zzhb zzk() {
        zzhb zzhbVar = this.zzf;
        if (zzhbVar != null) {
            return zzhbVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzok zzl() {
        zzok zzokVar = this.zzg;
        zzaT(zzokVar);
        return zzokVar;
    }

    public final zzad zzm() {
        zzad zzadVar = this.zzh;
        zzaT(zzadVar);
        return zzadVar;
    }

    public final zzlp zzn() {
        zzlp zzlpVar = this.zzj;
        zzaT(zzlpVar);
        return zzlpVar;
    }

    public final zzpk zzp() {
        zzpk zzpkVar = this.zzi;
        zzaT(zzpkVar);
        return zzpkVar;
    }

    public final zznn zzq() {
        return this.zzk;
    }

    public final zzgn zzs() {
        return this.zzn.zzl();
    }

    public final zzpp zzt() {
        return ((zzic) Preconditions.checkNotNull(this.zzn)).zzk();
    }

    public final void zzu() {
        if (!this.zzo.get()) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    public final void zzv(zzr zzrVar) {
        zzaX().zzg();
        zzu();
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzjl zzjlVarZzf = zzjl.zzf(zzrVar.zzs, zzrVar.zzx);
        zzB(str);
        zzaW().zzk().zzc("Setting storage consent for package", str, zzjlVarZzf);
        zzA(str, zzjlVarZzf);
    }

    public final void zzw(zzr zzrVar) {
        zzaX().zzg();
        zzu();
        String str = zzrVar.zza;
        Preconditions.checkNotEmpty(str);
        zzba zzbaVarZzg = zzba.zzg(zzrVar.zzy);
        zzaW().zzk().zzc("Setting DMA consent for package", str, zzbaVarZzg);
        zzaX().zzg();
        zzu();
        zzji zzjiVarZzc = zzba.zzh(zzy(str), 100).zzc();
        this.zzD.put(str, zzbaVarZzg);
        zzj().zzad(str, zzbaVarZzg);
        zzji zzjiVarZzc2 = zzba.zzh(zzy(str), 100).zzc();
        zzaX().zzg();
        zzu();
        zzji zzjiVar = zzji.DENIED;
        boolean z = zzjiVarZzc == zzjiVar && zzjiVarZzc2 == zzji.GRANTED;
        boolean z2 = zzjiVarZzc == zzji.GRANTED && zzjiVarZzc2 == zzjiVar;
        if (z || z2) {
            zzaW().zzk().zzb("Generated _dcu event for", str);
            Bundle bundle = new Bundle();
            if (zzj().zzw(zzC(), str, false, false, false, false, false, false, false).zzf < zzd().zzm(str, zzfy.zzal)) {
                bundle.putLong("_r", 1L);
                zzaW().zzk().zzc("_dcu realtime event count", str, Long.valueOf(zzj().zzw(zzC(), str, false, false, false, false, false, true, false).zzf));
            }
            this.zzK.zza(str, "_dcu", bundle);
        }
    }

    public final zzba zzx(String str) {
        zzaX().zzg();
        zzu();
        Map map = this.zzD;
        zzba zzbaVar = (zzba) map.get(str);
        if (zzbaVar != null) {
            return zzbaVar;
        }
        zzba zzbaVarZzab = zzj().zzab(str);
        map.put(str, zzbaVarZzab);
        return zzbaVarZzab;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public final Bundle zzy(String str) {
        zzaX().zzg();
        zzu();
        if (zzh().zzy(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        zzjl zzjlVarZzB = zzB(str);
        bundle.putAll(zzjlVarZzB.zzn());
        bundle.putAll(zzz(str, zzx(str), zzjlVarZzB, new zzan()).zzf());
        zzpn zzpnVarZzm = zzj().zzm(str, "_npa");
        bundle.putString("ad_personalization", 1 != (zzpnVarZzm != null ? zzpnVarZzm.zze.equals(1L) : zzaD(str, new zzan())) ? "granted" : "denied");
        return bundle;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0055  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzba zzz(java.lang.String r10, com.google.android.gms.measurement.internal.zzba r11, com.google.android.gms.measurement.internal.zzjl r12, com.google.android.gms.measurement.internal.zzan r13) {
        /*
            r9 = this;
            com.google.android.gms.measurement.internal.zzht r0 = r9.zzh()
            com.google.android.gms.internal.measurement.zzgf r0 = r0.zzy(r10)
            java.lang.String r1 = "-"
            r2 = 90
            if (r0 != 0) goto L31
            com.google.android.gms.measurement.internal.zzji r10 = r11.zzc()
            com.google.android.gms.measurement.internal.zzji r12 = com.google.android.gms.measurement.internal.zzji.DENIED
            if (r10 != r12) goto L20
            int r2 = r11.zzb()
            com.google.android.gms.measurement.internal.zzjk r10 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            r13.zzb(r10, r2)
            goto L27
        L20:
            com.google.android.gms.measurement.internal.zzjk r10 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            com.google.android.gms.measurement.internal.zzam r11 = com.google.android.gms.measurement.internal.zzam.FAILSAFE
            r13.zzc(r10, r11)
        L27:
            com.google.android.gms.measurement.internal.zzba r10 = new com.google.android.gms.measurement.internal.zzba
            java.lang.Boolean r11 = java.lang.Boolean.FALSE
            java.lang.Boolean r12 = java.lang.Boolean.TRUE
            r10.<init>(r11, r2, r12, r1)
            return r10
        L31:
            com.google.android.gms.measurement.internal.zzji r0 = r11.zzc()
            com.google.android.gms.measurement.internal.zzji r3 = com.google.android.gms.measurement.internal.zzji.GRANTED
            if (r0 == r3) goto L85
            com.google.android.gms.measurement.internal.zzji r4 = com.google.android.gms.measurement.internal.zzji.DENIED
            if (r0 != r4) goto L3e
            goto L85
        L3e:
            com.google.android.gms.measurement.internal.zzji r11 = com.google.android.gms.measurement.internal.zzji.POLICY
            if (r0 != r11) goto L55
            com.google.android.gms.measurement.internal.zzht r11 = r9.zzc
            com.google.android.gms.measurement.internal.zzjk r0 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            com.google.android.gms.measurement.internal.zzji r11 = r11.zzB(r10, r0)
            com.google.android.gms.measurement.internal.zzji r5 = com.google.android.gms.measurement.internal.zzji.UNINITIALIZED
            if (r11 == r5) goto L55
            com.google.android.gms.measurement.internal.zzam r12 = com.google.android.gms.measurement.internal.zzam.REMOTE_ENFORCED_DEFAULT
            r13.zzc(r0, r12)
            r0 = r11
            goto L8e
        L55:
            com.google.android.gms.measurement.internal.zzht r11 = r9.zzc
            com.google.android.gms.measurement.internal.zzjk r0 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            com.google.android.gms.measurement.internal.zzjk r5 = r11.zzx(r10, r0)
            com.google.android.gms.measurement.internal.zzji r12 = r12.zzp()
            r6 = 1
            if (r12 == r3) goto L66
            if (r12 != r4) goto L68
        L66:
            r7 = r6
            goto L69
        L68:
            r7 = 0
        L69:
            com.google.android.gms.measurement.internal.zzjk r8 = com.google.android.gms.measurement.internal.zzjk.AD_STORAGE
            if (r5 != r8) goto L76
            if (r7 == 0) goto L76
            com.google.android.gms.measurement.internal.zzam r11 = com.google.android.gms.measurement.internal.zzam.REMOTE_DELEGATION
            r13.zzc(r0, r11)
            r0 = r12
            goto L8e
        L76:
            com.google.android.gms.measurement.internal.zzam r12 = com.google.android.gms.measurement.internal.zzam.REMOTE_DEFAULT
            r13.zzc(r0, r12)
            boolean r11 = r11.zzw(r10, r0)
            if (r6 == r11) goto L83
            r0 = r4
            goto L8e
        L83:
            r0 = r3
            goto L8e
        L85:
            int r2 = r11.zzb()
            com.google.android.gms.measurement.internal.zzjk r11 = com.google.android.gms.measurement.internal.zzjk.AD_USER_DATA
            r13.zzb(r11, r2)
        L8e:
            com.google.android.gms.measurement.internal.zzht r11 = r9.zzc
            boolean r11 = r11.zzz(r10)
            com.google.android.gms.measurement.internal.zzht r12 = r9.zzh()
            java.util.SortedSet r10 = r12.zzA(r10)
            com.google.android.gms.measurement.internal.zzji r12 = com.google.android.gms.measurement.internal.zzji.DENIED
            if (r0 == r12) goto Lbb
            boolean r12 = r10.isEmpty()
            if (r12 == 0) goto La7
            goto Lbb
        La7:
            com.google.android.gms.measurement.internal.zzba r12 = new com.google.android.gms.measurement.internal.zzba
            java.lang.Boolean r13 = java.lang.Boolean.TRUE
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r11)
            java.lang.String r1 = ""
            if (r11 == 0) goto Lb7
            java.lang.String r1 = android.text.TextUtils.join(r1, r10)
        Lb7:
            r12.<init>(r13, r2, r0, r1)
            return r12
        Lbb:
            com.google.android.gms.measurement.internal.zzba r10 = new com.google.android.gms.measurement.internal.zzba
            java.lang.Boolean r12 = java.lang.Boolean.FALSE
            java.lang.Boolean r11 = java.lang.Boolean.valueOf(r11)
            r10.<init>(r12, r2, r11, r1)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzpg.zzz(java.lang.String, com.google.android.gms.measurement.internal.zzba, com.google.android.gms.measurement.internal.zzjl, com.google.android.gms.measurement.internal.zzan):com.google.android.gms.measurement.internal.zzba");
    }
}
