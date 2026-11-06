package info.flowersoft.theotown.util;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ScreenshotProcessor implements Runnable {
    public boolean takePhoto = false;

    public abstract void onTakePhoto();

    @Override // java.lang.Runnable
    public void run() {
        if (this.takePhoto) {
            this.takePhoto = false;
            onTakePhoto();
        }
    }

    public void take() {
        this.takePhoto = true;
    }
}
