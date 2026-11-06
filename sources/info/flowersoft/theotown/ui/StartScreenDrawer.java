package info.flowersoft.theotown.ui;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.graphics.Pixmap;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.Hashing;
import info.flowersoft.theotown.util.PixmapUtil;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gui.Skin;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class StartScreenDrawer {
    public static final String[] bgAuthors;
    public static final int bgCount;
    public static long sessionId;
    public String author;
    public Image bar;
    public Image bg;
    public final Engine engine;
    public Image logo;
    public final String versionText = "v" + TheoTown.VERSION_NAME + " (" + TheoTown.VERSION_CODE + ")";
    public final List<Image> images = new ArrayList();
    public final List<Pixmap> pixmaps = new ArrayList();

    public static void startNewSession() {
        sessionId = TimeUtils.millis();
    }

    static {
        String[] strArr = {"Heariyu3 by lhhsy223", "Tearburg by drinKis", "Amorlen by gloxinia_luvsu", "", "Rosenburg by ajakartanguy", "City by DualHD", "Batavia by The Blüe Mask", "City by Rinclan", "Washington D.C by DualHD", "1980's Village by Roellyan", "Qoxil by danielcarollo0", "Việt Nam by Chucmai", "长安城 by chao nimalebi", "CivCity by M2M4", "Enton by ento21", "KANG-BIN by qwertyuio", "City by Atach Awha", "East Greenhills by HarryMadera", "City by Mazein", "Eater by bany adam", "Westerdam by JustHamster", "England by erge"};
        bgAuthors = strArr;
        bgCount = strArr.length;
    }

    public StartScreenDrawer(Engine engine) {
        this.engine = engine;
        try {
            selectBackground((int) (sessionId % ((long) bgCount)));
        } catch (Exception e) {
            e.printStackTrace();
            selectBackground(0);
        }
        this.logo = loadImage("startlogo.png", 9729);
        this.bar = loadImage("loadingbar.png", 9729);
    }

    public final void selectBackground(int i) {
        this.bg = loadImage("startbg" + i + ".jpg", 9729);
        this.author = bgAuthors[i];
    }

    public void drawBackground() {
        if (this.bg == null) {
            return;
        }
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
        drawCentered(this.bg, 1.0f, 0);
    }

    public void drawLogo() {
        if (this.logo == null) {
            return;
        }
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
        drawCentered(this.logo, Math.min(Math.min(this.engine.getVirtualWidth(), this.engine.getVirtualHeight() * 1.5f), 2048.0f) / Math.max(r0, r1), 0);
    }

    public void drawBar(float f) {
        float fMax = Math.max((int) Math.ceil(this.engine.getHeight() / 600.0f), 1) * 8.0f;
        if (this.bar == null) {
            return;
        }
        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
        int virtualHeight = this.engine.getVirtualHeight() - (insetsTRBL != null ? (int) insetsTRBL[2] : 0);
        this.engine.setColor(Colors.BLACK);
        this.engine.setTransparency(100);
        float f2 = virtualHeight - fMax;
        this.engine.drawImage(this.bar, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, r2.getWidth(), fMax, 0);
        this.engine.setColor(Colors.WHITE);
        this.engine.setTransparency(255);
        this.engine.drawImage(this.bar, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, f * r2.getWidth(), fMax, 0);
    }

    public void drawText(String str) {
        Font font;
        Skin skin = Resources.skin;
        if (skin == null || (font = skin.fontDefault) == null || font.image == null) {
            return;
        }
        float fMax = Math.max((int) Math.ceil(this.engine.getHeight() / 600.0f), 1);
        float f = 8.0f * fMax;
        float[] insetsTRBL = TheoTown.runtimeFeatures.getInsetsTRBL();
        int i = (insetsTRBL != null ? (int) insetsTRBL[3] : 0) + 2;
        int virtualHeight = this.engine.getVirtualHeight() - (insetsTRBL != null ? (int) insetsTRBL[2] : 0);
        int virtualWidth = (this.engine.getVirtualWidth() - (insetsTRBL != null ? (int) insetsTRBL[1] : 0)) - 2;
        this.engine.reset();
        this.engine.setColor(Colors.WHITE);
        this.engine.setScale(fMax, fMax);
        float height = fMax * font.getHeight();
        float f2 = i;
        float f3 = virtualHeight;
        float f4 = (f3 - height) - f;
        this.engine.drawText(font, str, f2, f4);
        this.engine.drawText(font, this.versionText, f2, (f3 - (height * 2.0f)) - f);
        if (this.author != null) {
            this.engine.setTransparency(60);
            this.engine.drawText(skin.fontSmall, this.author, virtualWidth, f4, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        }
        this.engine.reset();
        this.engine.flip();
    }

    public void dispose() {
        Iterator<Image> it = this.images.iterator();
        while (it.hasNext()) {
            this.engine.releaseTexture(it.next().getTextureOfId(0));
        }
        this.images.clear();
        Iterator<Pixmap> it2 = this.pixmaps.iterator();
        while (it2.hasNext()) {
            it2.next().dispose();
        }
        this.pixmaps.clear();
        this.bg = null;
        this.logo = null;
        this.bar = null;
    }

    public final Image loadImage(String str, int i) {
        Pixmap pixmapLoadPAPixmap = PixmapUtil.loadPAPixmap(Gdx.files.internal(Hashing.internalName(str, "ae6bb9dcccb3ee65a2a5e1964c8ca37b")), 4);
        Texture texture = new Texture(new StaticBitmapTextureSource(pixmapLoadPAPixmap, false));
        texture.setFiltering(i, i);
        Image imageCreateSingleFrame = Image.createSingleFrame(texture);
        this.pixmaps.add(pixmapLoadPAPixmap);
        this.images.add(imageCreateSingleFrame);
        return imageCreateSingleFrame;
    }

    public final void drawCentered(Image image, float f, int i) {
        int iRound;
        int iRound2;
        float width = image.getWidth(i) / image.getHeight(i);
        if (width > this.engine.getWidth() / this.engine.getHeight()) {
            iRound = this.engine.getHeight();
            iRound2 = Math.round(width * iRound);
        } else {
            int width2 = this.engine.getWidth();
            iRound = Math.round(width2 / width);
            iRound2 = width2;
        }
        float f2 = iRound2;
        float f3 = (1.0f - f) * f2 * 0.5f;
        float width3 = ((r4.getWidth() - iRound2) / 2) + f3;
        float height = ((this.engine.getHeight() - iRound) / 2) + f3;
        float f4 = f3 * 2.0f;
        this.engine.drawImage(image, width3, height, f2 - f4, iRound - f4, i);
    }
}
