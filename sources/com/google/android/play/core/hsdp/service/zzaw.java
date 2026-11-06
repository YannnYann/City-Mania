package com.google.android.play.core.hsdp.service;

import android.view.View;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.play:hsdp@@2.0.1 */
/* JADX INFO: loaded from: classes3.dex */
public final class zzaw implements View.OnClickListener {
    public final /* synthetic */ zzax zza;

    public zzaw(zzax zzaxVar) {
        Objects.requireNonNull(zzaxVar);
        this.zza = zzaxVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.zza.zzb();
    }
}
