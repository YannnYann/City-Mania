package info.flowersoft.theotown.ui.listitem;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.util.ThemeManager;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.StaticGetter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ActionListItem extends ListItem {
    public static int sourceH;
    public static int sourceW;
    public static int sourceX;
    public static int sourceY;
    public Icon abstractIcon;
    public final List<Action> actions;
    public Color background;
    public Runnable backgroundAction;
    public int baseX;
    public int baseY;
    public final GoldButton cmd;
    public int icon;
    public Getter<String> subTitle;
    public Getter<Color> subTitleColor;
    public Getter<String> title;
    public Getter<Color> titleColor;
    public Getter<Boolean> visibility;
    public int width;

    public interface Icon {
        void draw(Engine engine, int i, int i2, int i3, int i4);

        int getHeight();

        int getWidth();
    }

    public ActionListItem(ListBox listBox) {
        super("");
        this.icon = -1;
        this.actions = new ArrayList();
        this.title = new StaticGetter("");
        this.subTitle = new StaticGetter("");
        this.titleColor = new StaticGetter(Resources.skin.cText);
        this.subTitleColor = new StaticGetter(Resources.skin.cTextSecondary);
        GoldButton goldButton = new GoldButton(-1, "", -10000, 1, 50, 40, listBox);
        this.cmd = goldButton;
        goldButton.removeAllChildren();
        goldButton.setSize(50, 38);
    }

    public void setBackgroundAction(Runnable runnable) {
        this.backgroundAction = runnable;
    }

    public void setTitle(String str) {
        this.title = new StaticGetter(str);
    }

    public void setSubTitle(String str) {
        this.subTitle = new StaticGetter(str);
    }

    public void setTitle(Getter<String> getter) {
        this.title = getter;
    }

    public void setSubTitle(Getter<String> getter) {
        this.subTitle = getter;
    }

    public void setTitleColor(Getter<Color> getter) {
        this.titleColor = getter;
    }

    public void setSubTitleColor(Getter<Color> getter) {
        this.subTitleColor = getter;
    }

    public void setVisibility(Getter<Boolean> getter) {
        this.visibility = getter;
    }

    public void addAction(int i, String str, Runnable runnable) {
        addAction(i, str, runnable, null, null);
    }

    public void addAction(int i, String str, Runnable runnable, Getter<Boolean> getter, Getter<Boolean> getter2) {
        addAction(i, str, runnable, getter, getter2, false);
    }

    public void addAction(int i, String str, Runnable runnable, Getter<Boolean> getter, Getter<Boolean> getter2, boolean z) {
        this.actions.add(new Action(i, str, runnable, getter, getter2, new StaticGetter(Boolean.valueOf(z))));
    }

    public void addAction(int i, String str, Runnable runnable, Getter<Boolean> getter, Getter<Boolean> getter2, Getter<Boolean> getter3) {
        this.actions.add(new Action(i, str, runnable, getter, getter2, getter3));
    }

    public int drawIcon(int i, int i2, int i3, int i4, Skin skin) {
        int i5 = this.icon;
        if (i5 < 0 && this.abstractIcon == null) {
            return 0;
        }
        if (i5 >= 0) {
            int iMax = Math.max((int) Resources.IMAGE_WORLD.getWidth(i5), i4);
            skin.engine.drawImage(Resources.IMAGE_WORLD, i, i2, iMax, i4, 0.5f, 0.5f, this.icon);
            return iMax;
        }
        int width = this.abstractIcon.getWidth();
        int height = this.abstractIcon.getHeight();
        int iMax2 = Math.max(i4, width);
        this.abstractIcon.draw(skin.engine, i + ((iMax2 - width) / 2), i2 + ((i4 - height) / 2), width, height);
        return iMax2;
    }

    public void setIcon(int i) {
        this.icon = i;
        this.abstractIcon = null;
    }

    public void setIcon(Icon icon) {
        this.icon = -1;
        this.abstractIcon = icon;
    }

    public void setBackground(Color color) {
        this.background = color;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public final void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
        Skin skin2;
        int i6;
        Font font;
        Engine engine;
        Getter<Boolean> getter = this.visibility;
        if (getter == null || getter.get().booleanValue()) {
            this.baseX = i2;
            this.baseY = i3;
            Color color = this.background;
            if (color != null) {
                skin2 = skin;
                drawBackground(false, i, i2, i3, i4, i5, skin2, color, color);
                i6 = i4;
            } else {
                skin2 = skin;
                drawBackground(false, i, i2, i3, i4, i5, skin2);
                i6 = i4;
            }
            Font font2 = skin2.fontDefault;
            Font font3 = skin2.fontSmall;
            Engine engine2 = skin2.engine;
            this.width = i6;
            int iDrawIcon = drawIcon(i2, i3, i5, i5, skin2);
            int i7 = i6 - iDrawIcon;
            engine2.setColor(this.titleColor.get());
            float f = i2 + iDrawIcon;
            engine2.drawText(font2, this.title.get(), f, i3 + 5);
            engine2.setColor(this.subTitleColor.get());
            engine2.drawText(font3, this.subTitle.get(), f, i3 + 20);
            int size = this.actions.size() - 1;
            while (size >= 0) {
                Action action = this.actions.get(size);
                if (action.isVisible()) {
                    int i8 = i7 - 51;
                    font = font3;
                    Engine engine3 = engine2;
                    drawAction(engine3, action.icon, action.name, font, (i8 + r11) - 2, i3 + 2, 50, i5 - 6, action.isActive(), action.golden.get().booleanValue());
                    engine = engine3;
                    i7 = i8;
                } else {
                    font = font3;
                    engine = engine2;
                }
                size--;
                engine2 = engine;
                font3 = font;
            }
            engine2.setColor(Colors.WHITE);
        }
    }

    public final void drawAction(Engine engine, int i, String str, Font font, int i2, int i3, int i4, int i5, boolean z, boolean z2) {
        engine.setTransparency(z ? 255 : 100);
        engine.setColor(Colors.WHITE);
        this.cmd.setGolden(z2);
        this.cmd.setSize(i4, i5);
        GoldButton goldButton = this.cmd;
        goldButton.draw(i2 - goldButton.getX(), i3);
        float f = i2;
        float f2 = i4;
        float f3 = i5;
        engine.drawImage(Resources.IMAGE_WORLD, f, i3 - 2, f2, f3, 0.5f, 0.25f, i);
        engine.setColor(Resources.skin.cText);
        if (z2 && ThemeManager.INSTANCE.isDarkMode()) {
            engine.setColor(Colors.DARK_YELLOW);
        }
        float width = font.getWidth(str);
        float f4 = i4 - 4;
        if (width > f4) {
            float f5 = f4 / width;
            engine.setScale(f5, f5);
        }
        engine.drawText(font, str, f, i3 + 1, f2, f3, 0.5f, 0.9f);
        engine.setScale(1.0f, 1.0f);
        engine.setTransparency(255);
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public int getHeight(boolean z) {
        Getter<Boolean> getter = this.visibility;
        return (getter == null || getter.get().booleanValue()) ? 40 : 0;
    }

    @Override // io.blueflower.stapel2d.gui.ListItem
    public void onClick(int i, int i2) {
        int i3 = this.width;
        for (int size = this.actions.size() - 1; size >= 0; size--) {
            Action action = this.actions.get(size);
            if (action.isVisible()) {
                int i4 = i3 - 51;
                if (i >= i4 && i < i3 - 1) {
                    if (action.isActive()) {
                        sourceX = this.baseX + i4;
                        sourceY = this.baseY + 2;
                        sourceW = 50;
                        sourceH = 36;
                        this.cmd.click();
                        action.run.run();
                        return;
                    }
                    return;
                }
                i3 = i4;
            }
        }
        if (this.backgroundAction != null) {
            this.cmd.click();
            this.backgroundAction.run();
        }
    }

    public static class Action {
        public Getter<Boolean> active;
        public Getter<Boolean> golden;
        public int icon;
        public String name;
        public Runnable run;
        public Getter<Boolean> visible;

        public Action(int i, String str, Runnable runnable, Getter<Boolean> getter, Getter<Boolean> getter2, Getter<Boolean> getter3) {
            this.icon = i;
            this.name = str;
            this.run = runnable;
            this.active = getter;
            this.visible = getter2;
            this.golden = getter3;
        }

        public boolean isActive() {
            Getter<Boolean> getter = this.active;
            if (getter != null) {
                return getter.get().booleanValue();
            }
            return true;
        }

        public boolean isVisible() {
            Getter<Boolean> getter = this.visible;
            if (getter != null) {
                return getter.get().booleanValue();
            }
            return true;
        }
    }
}
