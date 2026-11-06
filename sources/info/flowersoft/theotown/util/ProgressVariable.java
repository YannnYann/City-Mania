package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public class ProgressVariable implements ProgressProvider {
    public float progress;

    public ProgressVariable(float f) {
        this.progress = f;
    }

    @Override // info.flowersoft.theotown.util.ProgressProvider
    public float getProgress() {
        return this.progress;
    }

    public void setProgress(float f) {
        this.progress = f;
    }
}
