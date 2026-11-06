package io.blueflower.stapel2d.gui;

import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class Master extends Gadget {
    public final List<ClickListener> clickListenerList;
    public int vheight;
    public int vwidth;

    public interface ClickListener {
        void onClick(Gadget gadget);
    }

    public Master(Skin skin, int i, int i2) {
        super(0, 0, i, i2, skin);
        this.clickListenerList = new ArrayList();
        this.master = this;
    }

    public float getWidthRatio() {
        return this.width / this.skin.engine.getWidth();
    }

    public float getHeightRatio() {
        return this.height / this.skin.engine.getHeight();
    }

    public float getVirtualWidthRatio() {
        if (this.vwidth == 0) {
            this.vwidth = this.skin.engine.getVirtualWidth();
        }
        return this.width / this.vwidth;
    }

    public float getVirtualHeightRatio() {
        if (this.vheight == 0) {
            this.vheight = this.skin.engine.getVirtualHeight();
        }
        return this.height / this.vheight;
    }

    public void draw() {
        Engine engine = this.skin.engine;
        engine.setColor(Colors.WHITE);
        engine.setScale(1.0f, 1.0f);
        engine.setTransparency(255);
        this.vwidth = engine.getVirtualWidth();
        int virtualHeight = engine.getVirtualHeight();
        this.vheight = virtualHeight;
        boolean z = (this.vwidth == this.width && virtualHeight == this.height) ? false : true;
        if (z) {
            engine.flush();
            engine.setVirtualSize(this.width, this.height);
        }
        draw(0, 0);
        if (z) {
            engine.flush();
            engine.setVirtualSize(this.vwidth, this.vheight);
        }
    }

    public void informAboutClickOn(Gadget gadget) {
        Iterator<ClickListener> it = this.clickListenerList.iterator();
        while (it.hasNext()) {
            it.next().onClick(gadget);
        }
    }

    public void addClickListener(ClickListener clickListener) {
        this.clickListenerList.add(clickListener);
    }

    public boolean removeClickListener(ClickListener clickListener) {
        return this.clickListenerList.remove(clickListener);
    }
}
