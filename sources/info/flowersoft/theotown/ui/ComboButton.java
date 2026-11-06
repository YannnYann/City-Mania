package info.flowersoft.theotown.ui;

import info.flowersoft.theotown.drawing.Drawing;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ComboButton<T> extends IconButton {
    public final Setter<T> callback;
    public boolean isOpen;
    public final List<T> items;
    public final ButtonRepr<T> repr;
    public T selectedItem;

    public interface ButtonRepr<T> {
        int getIcon(T t);

        String getText(T t);
    }

    public ComboButton(int i, int i2, int i3, int i4, Gadget gadget, ButtonRepr<T> buttonRepr, Setter<T> setter) {
        super(0, "", i, i2, i3, i4, gadget);
        this.items = new ArrayList();
        this.isOpen = false;
        this.repr = buttonRepr;
        this.callback = setter;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void addItem(T t) {
        this.items.add(t);
    }

    public void addItems(T... tArr) {
        Collections.addAll(this.items, tArr);
    }

    public void showMenu() {
        this.isOpen = true;
        PopupBuilder popupBuilder = new PopupBuilder(this);
        for (int i = 0; i < this.items.size(); i++) {
            final T t = this.items.get(i);
            popupBuilder.addItem(this.repr.getIcon(t), this.repr.getText(t), new Runnable() { // from class: info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.selectInternal(t);
                }
            }, t != this.selectedItem);
        }
        popupBuilder.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.ui.ComboButton$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.isOpen = false;
            }
        });
        popupBuilder.build();
    }

    public void select(T t) {
        setIcon(this.repr.getIcon(t));
        setText(this.repr.getText(t));
        this.selectedItem = t;
    }

    public final void selectInternal(T t) {
        select(t);
        this.callback.set(t);
    }

    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        showMenu();
    }

    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Gadget
    public void layout() {
        super.layout();
        ShadowedLabel shadowedLabel = this.text;
        if (shadowedLabel != null) {
            shadowedLabel.setWidth(shadowedLabel.getWidth() - 26);
        }
    }

    @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        super.draw(i, i2);
        int i3 = i + this.x + this.paddingLeft;
        int i4 = i2 + this.y + this.paddingTop;
        if (isPressed()) {
            i4 += 2;
        }
        int clientWidth = getClientWidth();
        int clientHeight = (getClientHeight() / 2) + i4;
        Skin skin = this.skin;
        Engine engine = skin.engine;
        engine.setColor(skin.cText);
        engine.setTransparency(80);
        float f = (i3 + clientWidth) - 26;
        Drawing.getInstance().drawLine(f, i4 + 2, f, (i4 + r1) - 5, 2.0f, engine);
        engine.setTransparency(255);
        float f2 = clientHeight - 3;
        Drawing.getInstance().drawTriangle(r13 - 19, f2, r13 - 13, clientHeight + 3, r13 - 7, f2, engine);
    }
}
