package info.flowersoft.theotown.components.soundsource;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.components.DefaultSoundManager;
import info.flowersoft.theotown.resources.Resources;

/* JADX INFO: loaded from: classes4.dex */
public abstract class AreaSoundSource extends DefaultSoundManager.SoundSource {
    public abstract int getHeight();

    public float getVolume() {
        return 1.0f;
    }

    public abstract int getWidth();

    public abstract int getX();

    public abstract int getY();

    public int getScreenWidth() {
        return Resources.skin.engine.getVirtualWidth();
    }

    public int getScreenHeight() {
        return Resources.skin.engine.getVirtualHeight();
    }

    public AreaSoundSource() {
        super(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
    }

    @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
    public void update() {
        if (this.stream != null) {
            float screenWidth = getScreenWidth();
            float screenHeight = getScreenHeight();
            int x = getX();
            int y = getY();
            int width = getWidth();
            int height = getHeight();
            int i = x + width;
            float fMax = Math.max(Math.max(x, -i), 0) / screenWidth;
            float f = x;
            float f2 = i;
            float fMax2 = Math.max(Math.max(f - screenWidth, screenWidth - f2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) / screenWidth;
            float f3 = screenWidth / 2.0f;
            float fMax3 = (Math.max(Math.max(f - f3, f3 - f2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * 2.0f) / screenWidth;
            float f4 = screenHeight / 2.0f;
            float fMax4 = (Math.max(Math.max(y - f4, f4 - (y + height)), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) * 2.0f) / screenHeight;
            float volume = getVolume() * (1.0f / (((fMax3 * fMax3) * fMax3) + 1.0f)) * (1.0f / (((fMax4 * fMax4) * fMax4) + 1.0f)) * Math.min((float) Math.pow((((((double) width) * 100.0d) * ((double) height)) / ((double) screenWidth)) / ((double) screenHeight), 0.5d), 1.0f);
            this.stream.setVolume(volume / ((fMax * fMax) + 1.0f), volume / ((fMax2 * fMax2) + 1.0f));
        }
    }

    @Override // info.flowersoft.theotown.components.DefaultSoundManager.SoundSource
    public float getStartRate() {
        return (Resources.RND.nextFloat() * 0.1f) + 1.0f;
    }
}
