package info.flowersoft.theotown.ui;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class IconItem extends ListItem {
    public final Color bgColor;
    public final int icon;
    public final Runnable onClick;
    public final boolean rtl;
    public final Color textColor;
    public final boolean vertical;

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        return 36;
    }

    public IconItem(int i, String str, Runnable runnable, boolean z, boolean z2) {
        super(str);
        this.icon = i;
        this.onClick = runnable;
        this.vertical = z;
        this.rtl = z2;
        Skin skin = Resources.skin;
        this.textColor = skin.cMenuText;
        this.bgColor = skin.cMenuItem;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        Engine engine = skin.engine;
        engine.setColor(this.bgColor);
        int i6 = i5 - 1;
        engine.drawNinePatch(Resources.IMAGE_WORLD, i2, i3, i4, i6, skin.npWhiteRectBordered);
        engine.reset();
        if (this.vertical) {
            engine.setTransparency(200);
            engine.setColor(skin.cTextAccent);
            engine.drawImage(Resources.IMAGE_WORLD, i2, i3, i4, i6, Resources.FRAME_SHOPITEM_BACKGROUND);
            engine.reset();
        }
        Font font = skin.fontDefault;
        if (this.vertical) {
            int i7 = i4 / 2;
            Color color = Colors.BLACK;
            engine.setColor(color);
            engine.setTransparency(100);
            engine.drawImage(Resources.IMAGE_WORLD, r9 + 1, r10 + 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
            engine.drawImage(Resources.IMAGE_WORLD, i2 + i7, (i5 / 3) + i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
            float fMin = Math.min((i4 - 4) / font.getWidth(this.text), 1.0f);
            int iRound = i2 + Math.round(i7 - ((font.getWidth(this.text) * fMin) / 2.0f));
            int i8 = ((i5 * 2) / 3) + i3;
            engine.setScale(fMin, 1.0f);
            engine.setColor(color);
            engine.setTransparency(100);
            engine.drawText(font, this.text, iRound + 1, i8 + 6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            engine.setColor(this.textColor);
            engine.setTransparency(255);
            engine.drawText(font, this.text, iRound, i8 + 5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
            engine.setScale(1.0f, 1.0f);
            return;
        }
        float width = font.getWidth(this.text);
        if (this.rtl) {
            Color color2 = Colors.BLACK;
            engine.setColor(color2);
            engine.setTransparency(100);
            int i9 = i2 + i4;
            int i10 = i5 / 2;
            engine.drawImage(Resources.IMAGE_WORLD, r9 + 1, r8 + 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(255);
            engine.drawImage(Resources.IMAGE_WORLD, i9 - i10, i10 + i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
            engine.setScale(Math.min(((i4 - i5) - 5) / width, 1.0f), 1.0f);
            engine.setColor(color2);
            engine.setTransparency(100);
            float f = i5;
            engine.drawText(font, this.text, r1 - 1, i3 + 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, 1.0f, 0.5f);
            engine.setColor(this.textColor);
            engine.setTransparency(255);
            engine.drawText(font, this.text, i9 - i5, i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, 1.0f, 0.5f);
            engine.setScale(1.0f, 1.0f);
            return;
        }
        Color color3 = Colors.BLACK;
        engine.setColor(color3);
        engine.setTransparency(100);
        int i11 = i5 / 2;
        engine.drawImage(Resources.IMAGE_WORLD, r9 + 1, r8 + 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
        engine.setColor(Colors.WHITE);
        engine.setTransparency(255);
        engine.drawImage(Resources.IMAGE_WORLD, i2 + i11, i11 + i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.5f, this.icon);
        engine.setScale(Math.min(((i4 - i5) - 5) / width, 1.0f), 1.0f);
        engine.setColor(color3);
        engine.setTransparency(100);
        float f2 = i5;
        engine.drawText(font, this.text, r1 + 1, i3 + 1, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        engine.setColor(this.textColor);
        engine.setTransparency(255);
        engine.drawText(font, this.text, i2 + i5, i3, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f);
        engine.setScale(1.0f, 1.0f);
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        super.onClick(i, i2);
        this.onClick.run();
    }
}
