package com.google.android.gms.games;

import com.google.android.gms.internal.games_v2.zzad;
import com.google.android.gms.tasks.Task;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games-v2@@22.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@zzad
public interface GamesSignInClient {
    @zzad
    Task<AuthenticationResult> isAuthenticated();

    @zzad
    Task<AuthenticationResult> signIn();
}
