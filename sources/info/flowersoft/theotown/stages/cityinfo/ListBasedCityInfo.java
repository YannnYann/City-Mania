package info.flowersoft.theotown.stages.cityinfo;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;

/* JADX INFO: loaded from: classes4.dex */
public abstract class ListBasedCityInfo extends CityInfo {
    public ListBox listBox;

    @Override // info.flowersoft.theotown.stages.cityinfo.CityInfo
    public void build(City city, Gadget gadget, Stapel2DGameContext stapel2DGameContext, GameStack gameStack) {
        this.listBox = new ListBox(0, 0, gadget.getClientWidth(), gadget.getClientHeight(), gadget);
    }

    public void addCategory(String str) {
        addClickableCategory(str, 0, (Runnable) null);
    }

    public void addClickableCategory(String str, int i, Runnable runnable) {
        this.listBox.addItem(new CategoryListItem(str, i, runnable));
    }

    public void addClickableCategory(final String[] strArr, final int i, final Runnable runnable) {
        if (strArr.length < 3) {
            throw new IllegalArgumentException("You have to provide 3 text parts");
        }
        this.listBox.addItem(new ListItem("") { // from class: info.flowersoft.theotown.stages.cityinfo.ListBasedCityInfo.1
            @Override // io.blueflower.stapel2d.gui.ListItem
            public int getHeight(boolean z) {
                return 30;
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void draw(boolean z, int i2, int i3, int i4, int i5, int i6, Skin skin) {
                drawBackground(false, i2, i3, i4, i5, i6, skin);
                skin.engine.setColor(skin.cText);
                Font font = skin.fontDefault;
                int i7 = i3 + (i5 / 2);
                int iRound = Math.round(font.getWidth(strArr[1])) / 2;
                int i8 = i7 - iRound;
                drawText(skin, font, strArr[0], i8, i4, 0, i6, 1.0f, 0.5f, false);
                drawText(skin, font, strArr[1], i8, i4, 0, i6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, false);
                drawText(skin, font, strArr[2], i7 + iRound, i4, 0, i6, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, false);
                int i9 = i;
                if (i9 != 0) {
                    Image image = Resources.IMAGE_WORLD;
                    float width = image.getWidth(i9);
                    float height = image.getHeight(i);
                    skin.engine.setColor(Colors.WHITE);
                    skin.engine.drawImage(image, ((i3 + i5) - 4) - width, i4 + ((i6 - height) / 2.0f), i);
                }
                skin.engine.setColor(Colors.WHITE);
            }

            @Override // io.blueflower.stapel2d.gui.ListItem
            public void onClick(int i2, int i3) {
                super.onClick(i2, i3);
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    public void addItem(String str) {
        addItem(str, "");
    }

    public void addItem(String str, String str2) {
        addItem(str, str2, this.listBox.getSkin().cText);
    }

    public void addSpace() {
        addItem("", "");
    }

    public void addItem(String str, String str2, Color color) {
        this.listBox.addItem(new ValueListItem(str, str2, color));
    }

    public void addClickableItem(Getter<String> getter, Getter<String> getter2, Color color, int i, Runnable runnable, boolean z) {
        if (z) {
            addClickableItem(getter, getter2, color, i, runnable);
        } else {
            addClickableItem(getter, getter2, color, 0, null);
        }
    }

    public void addClickableItem(Getter<String> getter, Getter<String> getter2, Color color, int i, Runnable runnable) {
        addClickableItem(getter, getter2, color, i, Resources.skin.fontDefault, runnable);
    }

    public void addClickableItem(Getter<String> getter, Getter<String> getter2, Color color, int i, Font font, Runnable runnable) {
        this.listBox.addItem(new ClickableItem(getter, getter2, color, i, font, runnable));
    }

    public void addSeparator() {
        this.listBox.addItem(new SeparatorListItem());
        this.listBox.addItem(new EmptyListItem());
    }

    public Color colorForRatioInPercentBad(float f) {
        Skin skin = Resources.skin;
        return Colors.interpolateLight(new Color(0, 0, 0), f / 100.0f, skin.cTextGreen, skin.cTextRed);
    }

    public static class EmptyListItem extends ListItem {
        @Override // io.blueflower.stapel2d.gui.ListItem
        public boolean isVisible() {
            return false;
        }

        public EmptyListItem() {
            super(null);
        }
    }

    public static class SeparatorListItem extends ListItem {
        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 3;
        }

        public SeparatorListItem() {
            super(null);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            skin.engine.setColor(skin.cText);
            skin.engine.drawImage(Resources.IMAGE_WORLD, i2, i3 + 1, i4, 1.0f, Resources.FRAME_RECT);
            skin.engine.setColor(Colors.WHITE);
        }
    }

    public static class ValueListItem extends ListItem {
        public Color color;
        public String dedicatedValue;

        public ValueListItem(String str, String str2, Color color) {
            super(str);
            this.dedicatedValue = str2;
            this.color = color;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            skin.engine.setColor(this.color);
            int i6 = i2 + 4;
            int i7 = i4 - 8;
            drawText(skin, skin.fontDefault, this.text, i6, i3, i7, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, false);
            drawText(skin, skin.fontDefault, this.dedicatedValue, i6, i3, i7, i5, 1.0f, 0.5f, false);
            skin.engine.setColor(Colors.WHITE);
        }
    }

    public static class CategoryListItem extends ListItem {
        public final int icon;
        public final Runnable onClick;

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 30;
        }

        public CategoryListItem(String str, int i, Runnable runnable) {
            super(str);
            this.icon = i;
            this.onClick = runnable;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Engine engine = skin.engine;
            engine.setColor(skin.cTextSecondary);
            drawText(skin, skin.fontDefault, this.text, i2 + 2, i3, i4 - 4, i5, 0.5f, 0.5f, true);
            int i6 = this.icon;
            if (i6 != 0) {
                Image image = Resources.IMAGE_WORLD;
                float width = image.getWidth(i6);
                float height = image.getHeight(this.icon);
                engine.setColor(Colors.WHITE);
                engine.drawImage(image, ((i2 + i4) - 4) - width, i3 + ((i5 - height) / 2.0f), this.icon);
            }
            engine.setColor(Colors.WHITE);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            Runnable runnable = this.onClick;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static class ClickableItem extends ListItem {
        public Color color;
        public String desc;
        public Getter<String> descSrc;
        public Font font;
        public int icon;
        public Runnable onClick;
        public Getter<String> textSrc;

        public ClickableItem(Getter<String> getter, Getter<String> getter2, Color color, int i, Font font, Runnable runnable) {
            super(null);
            this.textSrc = getter;
            this.descSrc = getter2;
            this.color = color;
            this.icon = i;
            this.font = font;
            this.onClick = runnable;
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            drawBackground(false, i, i2, i3, i4, i5, skin);
            Color color = this.color;
            if (color != null) {
                skin.engine.setColor(color);
            } else {
                skin.engine.setColor(skin.cText);
            }
            int i6 = i2 + 4;
            drawText(skin, this.font, this.textSrc.get(), i6, i3 + 4, 0, 0, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false);
            Getter<String> getter = this.descSrc;
            if (getter != null) {
                this.desc = getter.get();
            }
            Image image = Resources.IMAGE_WORLD;
            float width = image.getWidth(this.icon);
            float height = image.getHeight(this.icon);
            float handleX = image.getHandleX(this.icon);
            float handleY = image.getHandleY(this.icon);
            String str = this.desc;
            if (str != null) {
                Font font = skin.fontSmall;
                drawText(skin, font, str, i6, (((i3 + i5) - 4) - ((int) font.getHeight())) + 2, 0, 0, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, false);
            }
            Engine engine = skin.engine;
            Color color2 = Colors.WHITE;
            engine.setColor(color2);
            skin.engine.drawImage(image, (((i2 + i4) - 4) - width) + handleX, i3 + ((i5 - height) / 2.0f) + handleY, this.icon);
            skin.engine.setColor(color2);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void onClick(int i, int i2) {
            super.onClick(i, i2);
            Runnable runnable = this.onClick;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            int height = ((int) this.font.getHeight()) + 8;
            Getter<String> getter = this.descSrc;
            return height + ((getter == null || getter.get() == null) ? 0 : ((int) Resources.skin.fontSmall.getHeight()) + 2);
        }
    }
}
