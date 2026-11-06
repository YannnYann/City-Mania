package info.flowersoft.theotown.ui;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.MinimapRenderer;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.resources.WinterManager;
import info.flowersoft.theotown.tools.DefaultTool;
import info.flowersoft.theotown.util.ProgressVariable;
import info.flowersoft.theotown.util.RegionLayout;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.DynamicTextureSource;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.SensitiveGadget;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import io.blueflower.stapel2d.util.ValueProperty;

/* JADX INFO: loaded from: classes4.dex */
public class MapPreview extends SensitiveGadget {
    public static Thread renderThread;
    public final int border;
    public boolean doneMinimapRendering;
    public boolean doneUpload;
    public Image minimap;
    public Texture minimapTexture;
    public final boolean modifiable;
    public final ProgressVariable progress;
    public RegionLayout regionLayout;
    public final Setter<String> status;
    public final Translator translator;

    public MapPreview(int i, int i2, int i3, int i4, Gadget gadget, Translator translator, boolean z) {
        super(i, i2, i3, i4, gadget);
        this.border = 1;
        this.progress = new ProgressVariable(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.status = new ValueProperty("");
        Gadget gadget2 = new Gadget((Master) getAbsoluteParent()) { // from class: info.flowersoft.theotown.ui.MapPreview.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i5, int i6) {
                this.skin.engine.clear(Colors.BLACK);
            }
        };
        gadget2.fillParent();
        gadget2.setVisible(false);
        this.translator = translator;
        this.modifiable = z;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void onClick() {
        super.onClick();
        if (this.regionLayout == null || !this.modifiable) {
            return;
        }
        int x = (int) (this.tp.getX() * this.master.getVirtualWidthRatio() * this.skin.engine.getWidthRatio());
        int y = (int) (this.tp.getY() * this.master.getVirtualHeightRatio() * this.skin.engine.getHeightRatio());
        int absoluteX = getAbsoluteX() + 1;
        int absoluteY = getAbsoluteY() + 1;
        final int cellIndex = this.regionLayout.getCellIndex((x - absoluteX) / (getWidth() - 2), (y - absoluteY) / (getHeight() - 2));
        if (cellIndex >= 0) {
            PopupBuilder popupBuilder = new PopupBuilder(this);
            popupBuilder.setSource(x, y);
            if (this.regionLayout.canDivide(cellIndex, 2)) {
                popupBuilder.addItem(Resources.ICON_REGION_SPLIT, this.translator.translate(573), new Runnable() { // from class: info.flowersoft.theotown.ui.MapPreview.2
                    @Override // java.lang.Runnable
                    public void run() {
                        MapPreview.this.regionLayout.divide(cellIndex, 2);
                    }
                });
            }
            if (this.regionLayout.canMerge(cellIndex)) {
                popupBuilder.addItem(Resources.ICON_REGION_MERGE, this.translator.translate(1990), new Runnable() { // from class: info.flowersoft.theotown.ui.MapPreview.3
                    @Override // java.lang.Runnable
                    public void run() {
                        MapPreview.this.regionLayout.merge(cellIndex);
                    }
                });
            }
            if (this.regionLayout.getEnabled(cellIndex)) {
                popupBuilder.addItem(Resources.ICON_REGION_HIDE, this.translator.translate(3278), new Runnable() { // from class: info.flowersoft.theotown.ui.MapPreview.4
                    @Override // java.lang.Runnable
                    public void run() {
                        MapPreview.this.regionLayout.setEnabled(cellIndex, false);
                    }
                });
            } else {
                popupBuilder.addItem(Resources.ICON_REGION_SHOW, this.translator.translate(261), new Runnable() { // from class: info.flowersoft.theotown.ui.MapPreview.5
                    @Override // java.lang.Runnable
                    public void run() {
                        MapPreview.this.regionLayout.setEnabled(cellIndex, true);
                    }
                });
            }
            popupBuilder.build();
        }
    }

    public ProgressVariable getProgress() {
        return this.progress;
    }

    public Setter<String> getStatus() {
        return this.status;
    }

    @Override // io.blueflower.stapel2d.gui.Gadget
    public void draw(int i, int i2) {
        float f;
        float f2;
        Skin skin = this.skin;
        Engine engine = skin.engine;
        engine.setColor(skin.cTextAccent);
        engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, getWidth(), getHeight(), Resources.FRAME_RECT);
        if (this.doneMinimapRendering) {
            if (!this.doneUpload) {
                this.doneUpload = true;
                engine.loadTexture(this.minimapTexture);
            }
            int i3 = this.x + i + 1;
            int i4 = this.y + i2 + 1;
            int width = getWidth() - 2;
            int height = getHeight() - 2;
            engine.setColor(Colors.WHITE);
            float f3 = i3;
            float f4 = i4;
            float f5 = width;
            float f6 = height;
            engine.drawImage(this.minimap, f3, f4, f5, f6, 0);
            if (this.regionLayout != null) {
                for (int i5 = 0; i5 < this.regionLayout.countPlaces(); i5++) {
                    float relativeX = this.regionLayout.getRelativeX(i5);
                    float relativeY = this.regionLayout.getRelativeY(i5);
                    float relativeSize = this.regionLayout.getRelativeSize(i5);
                    float f7 = (relativeX * f5) + f3;
                    float f8 = (relativeY * f6) + f4;
                    float f9 = relativeSize * f5;
                    float f10 = relativeSize * f6;
                    if (this.regionLayout.getEnabled(i5)) {
                        f = f8;
                        f2 = f7;
                    } else {
                        engine.setColor(Colors.BLACK);
                        f = f8;
                        f2 = f7;
                        engine.drawImage(Resources.IMAGE_WORLD, f2, f, f9, f10, Resources.FRAME_RECT);
                        engine.setColor(Colors.WHITE);
                    }
                    engine.setColor(Colors.WHITE);
                    engine.drawNinePatch(Resources.IMAGE_WORLD, f2, f, f9, f10, Resources.NP_REGION_BORDER);
                    if (isMouseHovered() && this.modifiable) {
                        float widthRatio = this.mouseHoverX * engine.getWidthRatio();
                        float heightRatio = this.mouseHoverY * engine.getHeightRatio();
                        if (f2 <= widthRatio && f <= heightRatio && widthRatio <= f2 + f9 && heightRatio <= f + f10) {
                            engine.setTransparency(100);
                            engine.drawImage(Resources.IMAGE_WORLD, f2 + 2.0f, f + 2.0f, f9 - 4.0f, f10 - 4.0f, Resources.FRAME_RECT);
                            engine.setTransparency(255);
                        }
                    }
                }
            }
        } else {
            int width2 = this.x + i + (getWidth() / 2);
            int height2 = this.y + i2 + (getHeight() / 2);
            engine.setColor(this.skin.cBg);
            engine.drawImage(Resources.IMAGE_WORLD, this.x + i + 1, this.y + i2 + 1, getWidth() - 2, getHeight() - 2, Resources.FRAME_RECT);
            engine.setColor(this.skin.cTextAccent);
            Drawing.getInstance().drawCircle(width2, height2, (getWidth() / 3) - 5, getWidth() / 3, -1.5707964f, (this.progress.getProgress() * 6.2831855f) - 1.5707964f, 1.0f, 1.0f, engine);
            engine.setColor(Colors.WHITE);
            engine.setTransparency(Math.round((((float) Math.cos(((double) (((TimeUtils.millis() % 800) / 800.0f) * 2.0f)) * 3.141592653589793d)) * 127.5f) + 127.5f));
            engine.drawImage(Resources.IMAGE_WORLD, width2 - 13, height2 - 13, Resources.ICON_WIZARD);
            engine.setTransparency(255);
        }
        this.skin.engine.setColor(Colors.WHITE);
    }

    @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
    public void flush() {
        super.flush();
        Texture texture = this.minimapTexture;
        if (texture != null) {
            this.skin.engine.releaseTexture(texture);
            this.minimapTexture = null;
        }
    }

    public void issueMinimapRendering(final Getter<City> getter, final int i, int i2, RegionLayout regionLayout) {
        stopRendering();
        this.progress.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
        this.regionLayout = regionLayout;
        Engine engine = this.skin.engine;
        this.doneMinimapRendering = false;
        int iFindSize = Texture.findSize(i);
        Texture texture = this.minimapTexture;
        if (texture != null && (texture.getWidth() != iFindSize || this.minimapTexture.getHeight() != iFindSize)) {
            engine.releaseTexture(this.minimapTexture);
            this.minimapTexture = null;
        }
        final DynamicTextureSource dynamicTextureSource = new DynamicTextureSource(i, i);
        Texture texture2 = this.minimapTexture;
        if (texture2 == null) {
            Texture texture3 = new Texture(dynamicTextureSource);
            this.minimapTexture = texture3;
            if (Settings.useLowColorDepth) {
                texture3.setColorDepth(16);
            }
        } else {
            texture2.setSource(dynamicTextureSource);
        }
        final boolean zIsWinter = WinterManager.getInstance().isWinter();
        Thread thread = new Thread() { // from class: info.flowersoft.theotown.ui.MapPreview.6
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                City city = (City) getter.get();
                if (isInterrupted() || city == null) {
                    return;
                }
                city.applyComponent(new DefaultTool());
                int i3 = i;
                MinimapRenderer minimapRenderer = new MinimapRenderer(city, i3, i3);
                minimapRenderer.render(zIsWinter);
                if (MapPreview.renderThread == this) {
                    dynamicTextureSource.setData(minimapRenderer.getData());
                    MapPreview.this.doneUpload = false;
                    MapPreview.this.doneMinimapRendering = true;
                }
            }
        };
        renderThread = thread;
        thread.start();
        Image image = new Image(this.minimapTexture);
        this.minimap = image;
        float f = i;
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, f, f, -i);
    }

    public void stopRendering() {
        Thread thread = renderThread;
        if (thread != null) {
            thread.interrupt();
            try {
                renderThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            renderThread = null;
        }
    }
}
