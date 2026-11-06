package info.flowersoft.theotown.resources;

import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.Skin;

/* JADX INFO: loaded from: classes4.dex */
public class SignStyleProvider {
    public static final Color[] COLORS;
    public static final Font[] FONTS;

    static {
        Skin skin = Resources.skin;
        FONTS = new Font[]{skin.fontBig, skin.fontDefault, skin.fontSmall};
        COLORS = new Color[]{Colors.WHITE, Colors.RED.enlighted(100), Colors.PURPLE.enlighted(100), Colors.GREEN.enlighted(100), Colors.TURQUOISE.enlighted(100), Colors.BLUE.enlighted(100), Colors.BLACK};
    }
}
