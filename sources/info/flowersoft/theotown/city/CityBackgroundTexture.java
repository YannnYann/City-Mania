package info.flowersoft.theotown.city;

import com.badlogic.gdx.graphics.Color;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.Disposable;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CityBackgroundTexture.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CityBackgroundTexture implements Disposable {
    public static final CityBackgroundTexture INSTANCE = new CityBackgroundTexture();
    public static AnimationDraft builtDraft;
    public static Pixmap pixmap;
    public static Texture texture;

    public final Texture getTexture(Engine engine, AnimationDraft animationDraft) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (animationDraft == builtDraft) {
            Texture texture2 = texture;
            Intrinsics.checkNotNull(texture2);
            return texture2;
        }
        dispose();
        if (animationDraft == null) {
            return null;
        }
        int[] iArr = animationDraft.frames;
        Pixmap pixmapDownloadFrame = downloadFrame(engine, iArr.length > 3 ? iArr[3] : iArr[0]);
        int width = (pixmapDownloadFrame.getWidth() / 16) * 16;
        builtDraft = animationDraft;
        int i = width / 2;
        Pixmap pixmap2 = new Pixmap(width, i, Pixmap.Format.RGBA8888);
        pixmap2.setColor(Color.CYAN);
        pixmap2.fill();
        int i2 = -width;
        int i3 = i2 / 2;
        int i4 = i2 / 4;
        pixmap2.drawPixmap(pixmapDownloadFrame, i3, i4);
        pixmap2.drawPixmap(pixmapDownloadFrame, i, i4);
        pixmap2.drawPixmap(pixmapDownloadFrame, 0, 0);
        int i5 = width / 4;
        pixmap2.drawPixmap(pixmapDownloadFrame, i3, i5);
        pixmap2.drawPixmap(pixmapDownloadFrame, i, i5);
        pixmap = pixmap2;
        pixmapDownloadFrame.dispose();
        Texture texture3 = new Texture(new StaticBitmapTextureSource(pixmap, false));
        texture = texture3;
        Intrinsics.checkNotNull(texture3);
        texture3.setFiltering(9729, 9728);
        Texture texture4 = texture;
        Intrinsics.checkNotNull(texture4);
        return texture4;
    }

    public final Pixmap downloadFrame(Engine engine, int i) {
        Image image = Resources.IMAGE_WORLD;
        int textureId = image.getTextureId(i);
        int x = (int) image.getX(i);
        int y = (int) image.getY(i);
        int width = (int) image.getWidth(i);
        int height = (int) image.getHeight(i);
        Texture textureOfId = image.getTextureOfId(textureId);
        Pixmap pixmap2 = new Pixmap(width, height, Pixmap.Format.RGBA8888);
        textureOfId.getSource().download(engine, pixmap2, x, y, 0);
        return pixmap2;
    }

    @Override // com.badlogic.gdx.utils.Disposable
    public void dispose() {
        Texture texture2 = texture;
        if (texture2 != null) {
            texture2.release();
        }
        Pixmap pixmap2 = pixmap;
        if (pixmap2 != null) {
            pixmap2.dispose();
        }
        texture = null;
        pixmap = null;
        builtDraft = null;
    }
}
