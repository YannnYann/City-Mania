package com.google.android.gms.games.gamessignin;

import com.google.android.gms.common.Scopes;
import com.google.android.gms.internal.games_v2.zzgn;
import com.google.android.gms.internal.games_v2.zzgq;
import com.google.android.gms.internal.games_v2.zzgs;
import com.google.android.gms.internal.games_v2.zzgt;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
public enum AuthScope {
    EMAIL(Scopes.EMAIL),
    PROFILE(Scopes.PROFILE),
    OPEN_ID(Scopes.OPEN_ID),
    GAMES_LITE(Scopes.GAMES_LITE),
    DRIVE_APP_FOLDER(Scopes.DRIVE_APPFOLDER);

    public static final zzgt zzd;
    public final String zzc;

    static {
        zzgs zzgsVar = new zzgs();
        for (AuthScope authScope : values()) {
            zzgsVar.zza(authScope.zzc, authScope);
        }
        zzd = zzgsVar.zzb();
    }

    AuthScope(String str) {
        this.zzc = str;
    }

    public static zzgq zza(List list) {
        Objects.requireNonNull(list, "Input values list cannot be null");
        zzgn zzgnVar = new zzgn();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            Objects.requireNonNull(str, "Input list of scope strings must not be null");
            AuthScope authScope = (AuthScope) zzd.get(str);
            if (authScope == null) {
                throw new IllegalArgumentException("Invalid scope: ".concat(str));
            }
            zzgnVar.zzb(authScope);
        }
        return zzgnVar.zzc();
    }

    public String getValue() {
        return this.zzc;
    }
}
