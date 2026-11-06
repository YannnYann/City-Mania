package ads_mobile_sdk;

import com.google.android.libraries.ads.mobile.sdk.internal.signals.Signals;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
public final class ho implements oe3 {
    public final int a;
    public final boolean b;
    public final boolean c;
    public final int d;
    public final Pair e;
    public final int f;
    public final int g;
    public final float h;
    public final boolean i;
    public final Double j;

    @Override // ads_mobile_sdk.oe3
    public final void a(Signals signals) {
        Intrinsics.checkNotNullParameter(signals, "signals");
        signals.audioMode = this.a;
        signals.isMusicActive = this.b;
        signals.isSpeakerPhoneOn = this.c;
        signals.musicVolume = this.d;
        Pair pair = this.e;
        if (pair != null) {
            signals.minMusicVolume = (Integer) pair.getFirst();
            signals.maxMusicVolume = (Integer) pair.getSecond();
        }
        signals.ringerMode = this.f;
        signals.ringerVolume = this.g;
        signals.appVolume = this.h;
        signals.isAppMuted = this.i;
        signals.musicVolumePercent = this.j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ho)) {
            return false;
        }
        ho hoVar = (ho) obj;
        return this.a == hoVar.a && this.b == hoVar.b && this.c == hoVar.c && this.d == hoVar.d && Intrinsics.areEqual(this.e, hoVar.e) && this.f == hoVar.f && this.g == hoVar.g && Float.compare(this.h, hoVar.h) == 0 && this.i == hoVar.i && Intrinsics.areEqual(this.j, hoVar.j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v18 */
    /* JADX WARN: Type inference failed for: r2v19 */
    /* JADX WARN: Type inference failed for: r2v20 */
    /* JADX WARN: Type inference failed for: r2v21 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v2 */
    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        boolean z = this.b;
        ?? r2 = z;
        if (z) {
            r2 = 1;
        }
        int i = (iHashCode + r2) * 31;
        boolean z2 = this.c;
        ?? r22 = z2;
        if (z2) {
            r22 = 1;
        }
        int iA = y1.a(this.d, (i + r22) * 31, 31);
        Pair pair = this.e;
        int iHashCode2 = (Float.hashCode(this.h) + y1.a(this.g, y1.a(this.f, (iA + (pair == null ? 0 : pair.hashCode())) * 31, 31), 31)) * 31;
        boolean z3 = this.i;
        int i2 = (iHashCode2 + (z3 ? 1 : z3)) * 31;
        Double d = this.j;
        return i2 + (d != null ? d.hashCode() : 0);
    }

    public final String toString() {
        return "AudioSignal(audioMode=" + this.a + ", isMusicActive=" + this.b + ", isSpeakerPhoneOn=" + this.c + ", musicVolume=" + this.d + ", minMaxMusicVolume=" + this.e + ", ringerMode=" + this.f + ", ringerVolume=" + this.g + ", appVolume=" + this.h + ", isAppMuted=" + this.i + ", musicVolumePercent=" + this.j + ")";
    }

    public ho(int i, boolean z, boolean z2, int i2, Pair pair, int i3, int i4, float f, boolean z3, Double d) {
        this.a = i;
        this.b = z;
        this.c = z2;
        this.d = i2;
        this.e = pair;
        this.f = i3;
        this.g = i4;
        this.h = f;
        this.i = z3;
        this.j = d;
    }
}
