package info.flowersoft.theotown.stages;

/* JADX INFO: compiled from: RecoveryStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RecoveryMode {
    public static final RecoveryMode INSTANCE = new RecoveryMode();
    public static boolean active;

    public final boolean getActive() {
        return active;
    }

    public final void setActive(boolean z) {
        active = z;
    }
}
