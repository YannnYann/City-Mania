package info.flowersoft.theotown.stages;

import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.backend.User;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.ScreenshotStore;
import info.flowersoft.theotown.stages.AbstractCommentsStage;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.TouchPane;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Font;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Button;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.util.List;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class GalleryStage extends BaseStage {
    public final int headerHeight;
    public int itemsPerLine;
    public int lastTouchPointCount;
    public float moveY;
    public float moveYSpeed;
    public final ScreenshotStore store;
    public int tileHeight;
    public int tileWidth;
    public TouchPane touchPane;
    public final int[] xywh;

    public static /* synthetic */ float access$524(GalleryStage galleryStage, float f) {
        float f2 = galleryStage.moveY - f;
        galleryStage.moveY = f2;
        return f2;
    }

    public GalleryStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.xywh = new int[4];
        this.headerHeight = 30;
        this.store = new ScreenshotStore(stapel2DGameContext);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        this.itemsPerLine = 1;
        while (this.itemsPerLine < 3) {
            int clientWidth = this.gui.getClientWidth() / this.itemsPerLine;
            this.tileWidth = clientWidth;
            int iRound = Math.round(clientWidth / 1.5f);
            this.tileHeight = iRound;
            if (iRound < this.gui.getHeight() - 30) {
                break;
            } else {
                this.itemsPerLine++;
            }
        }
        buildContentCanvas();
        this.touchPane = new TouchPane(1, -this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.GalleryStage.1
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i, int i2, TouchPoint touchPoint) {
                synchronized (GalleryStage.this.store.getScreenshots()) {
                    try {
                        int x = i + getX();
                        int y = i2 + getY();
                        int indexAt = GalleryStage.this.getIndexAt(x, y);
                        if (indexAt != -1) {
                            GalleryStage galleryStage = GalleryStage.this;
                            galleryStage.calculateRect(galleryStage.xywh, indexAt, getX(), getY());
                            GalleryStage galleryStage2 = GalleryStage.this;
                            galleryStage2.clickTile(galleryStage2.store.getScreenshots().get(indexAt), indexAt, x - GalleryStage.this.xywh[0], y - GalleryStage.this.xywh[1], GalleryStage.this.xywh[2], GalleryStage.this.xywh[3]);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                super.updateTouchInput(touchUpdate);
                float scrollChange = touchUpdate.getScrollChange();
                TouchPoint mousePos = touchUpdate.getMousePos();
                if (scrollChange == UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT || !this.rect.contains((int) mousePos.getX(), (int) mousePos.getY())) {
                    return null;
                }
                touchUpdate.clearScrollChange();
                GalleryStage.access$524(GalleryStage.this, scrollChange * 50.0f);
                return null;
            }
        };
        new Gadget(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.GalleryStage.2
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(0, 0, 0);
                engine.drawImage(this.skin.img, getX() + i, getY() + i2 + GalleryStage.this.gui.getPaddingTop() + 30, getWidth(), (-GalleryStage.this.gui.getPaddingTop()) - 30, Resources.FRAME_GRADIENT_Y);
                if (GalleryStage.this.gui.getPaddingBottom() > 0) {
                    engine.drawImage(this.skin.img, i + getX(), ((i2 + getY()) + getHeight()) - GalleryStage.this.gui.getPaddingBottom(), getWidth(), GalleryStage.this.gui.getPaddingBottom(), Resources.FRAME_GRADIENT_Y);
                }
            }
        };
        int i = 0;
        Panel panel = new Panel(0, i, this.gui.getClientWidth(), 30, this.gui) { // from class: info.flowersoft.theotown.stages.GalleryStage.3
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                engine.setTransparency(200);
                drawNinePatch(i2, i3 - 80, this.width, this.height + 80, this.skin.npPanel);
                engine.setTransparency(255);
                drawChildren(i2, i3);
            }
        };
        panel.setPadding(2, 2, 2, 2);
        ElementLine elementLine = new ElementLine(0, 1, 0, 0, panel.getClientWidth(), panel.getClientHeight(), panel);
        new Button(0, i, 30, 30, elementLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.GalleryStage.4
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                Color color = Colors.WHITE;
                engine.setColor(color);
                if (isMouseHovered()) {
                    engine.setColor(Colors.LIGHT_RED);
                }
                if (isPressed()) {
                    engine.setColor(Colors.RED);
                }
                engine.drawImage(Resources.IMAGE_WORLD, i2 + this.x, i3 + this.y, this.width, this.height, 0.5f, 0.5f, Resources.skin.fCloseButton);
                engine.setColor(color);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                GalleryStage.this.getGameStack().pop();
            }
        };
        addTabButton(Resources.ICON_RANK, this.translator.translate(701), elementLine.getFirstPart(), 2);
        AnimationDraft animationDraft = (AnimationDraft) Drafts.get("$anim_ui_new00", AnimationDraft.class);
        Objects.requireNonNull(animationDraft);
        addTabButton(animationDraft.frames[0], this.translator.translate(2008), elementLine.getFirstPart(), 0);
        addTabButton(Resources.ICON_ACCOUNT, this.translator.translate(Sdk.SDKError.Reason.AD_HTML_FAILED_TO_LOAD_VALUE), elementLine.getFirstPart(), 1);
        this.store.fetch();
    }

    public final Gadget buildContentCanvas() {
        return new Gadget(this.gui) { // from class: info.flowersoft.theotown.stages.GalleryStage.5
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                String strTranslate;
                List<ScreenshotStore.Screenshot> screenshots = GalleryStage.this.store.getScreenshots();
                synchronized (screenshots) {
                    try {
                        if (!screenshots.isEmpty()) {
                            for (int i3 = 0; i3 < screenshots.size(); i3++) {
                                ScreenshotStore.Screenshot screenshot = screenshots.get(i3);
                                GalleryStage galleryStage = GalleryStage.this;
                                galleryStage.calculateRect(galleryStage.xywh, i3, i, i2);
                                int i4 = GalleryStage.this.xywh[0];
                                int i5 = GalleryStage.this.xywh[1];
                                int i6 = GalleryStage.this.xywh[2];
                                if (GalleryStage.this.xywh[3] + i5 >= -100 && i5 < getHeight() + 100) {
                                    screenshot.prefetchThumbnail();
                                }
                            }
                            for (int i7 = 0; i7 < screenshots.size(); i7++) {
                                ScreenshotStore.Screenshot screenshot2 = screenshots.get(i7);
                                GalleryStage galleryStage2 = GalleryStage.this;
                                galleryStage2.calculateRect(galleryStage2.xywh, i7, i, i2);
                                int i8 = GalleryStage.this.xywh[0];
                                int i9 = GalleryStage.this.xywh[1];
                                int i10 = GalleryStage.this.xywh[2];
                                int i11 = GalleryStage.this.xywh[3];
                                if (i9 + i11 >= 0 && i9 < getHeight()) {
                                    GalleryStage.this.drawTile(screenshot2, i7, i8, i9, i10, i11);
                                }
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (GalleryStage.this.moveY > 1.0f) {
                    GalleryStage.this.engine.setTransparency(((Math.min(((int) GalleryStage.this.moveY) - 50, 0) * 255) / 50) + 255);
                    GalleryStage galleryStage3 = GalleryStage.this;
                    galleryStage3.engine.drawText(Resources.skin.fontBig, galleryStage3.translator.translate(978), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r0 + 30, GalleryStage.this.gui.getWidth(), 50.0f, 0.5f, 0.5f);
                    GalleryStage.this.engine.setTransparency(255);
                }
                if (screenshots.isEmpty()) {
                    if (GalleryStage.this.store.isFetching()) {
                        strTranslate = GalleryStage.this.translator.translate(1848);
                    } else {
                        strTranslate = GalleryStage.this.translator.translate(2405);
                    }
                    String str = strTranslate;
                    int iMin = Math.min(((int) GalleryStage.this.moveY) + 100, 0);
                    GalleryStage.this.engine.setTransparency(100);
                    GalleryStage.this.engine.drawText(Resources.skin.fontDefault, str, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, iMin + 30, r3.gui.getWidth(), 50.0f, 0.5f, 0.5f);
                    GalleryStage.this.engine.setTransparency(255);
                }
            }
        };
    }

    public final IconButton addTabButton(int i, String str, Gadget gadget, final int i2) {
        return new IconButton(i, str, 0, 0, 100, gadget.getClientHeight(), gadget) { // from class: info.flowersoft.theotown.stages.GalleryStage.6
            @Override // info.flowersoft.theotown.ui.IconButton, io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i3, int i4) {
                this.skin.engine.setTransparency(180);
                GalleryStage.this.engine.setColor(Colors.WHITE);
                if (isMouseHovered()) {
                    GalleryStage.this.engine.setColor(Colors.LIGHT_LIGHT_GRAY);
                }
                if (isPressed()) {
                    GalleryStage.this.engine.setColor(Colors.GRAY);
                }
                drawNinePatch(i3, i4, (isPressed() || this.down) ? this.skin.npButtonDown : this.skin.npButton);
                this.skin.engine.setTransparency(255);
                drawChildren(i3, i4);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                if (!isPressed()) {
                    User user = Backend.getInstance().getUser();
                    if (user.isValid() || i2 != 1) {
                        GalleryStage.this.store.switchMode(i2, user.getId());
                        GalleryStage.this.moveY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                        GalleryStage.this.moveYSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                    } else {
                        GalleryStage.this.getGameStack().push(new AccountStage(GalleryStage.this.context));
                    }
                }
                super.onClick();
            }

            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return GalleryStage.this.store.getMode() == i2;
            }
        };
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        updateTouchInput();
        this.engine.setColor(40, 40, 40);
        this.engine.drawImage(Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, r2.getVirtualWidth(), this.engine.getVirtualHeight(), Resources.FRAME_RECT);
        this.engine.setColor(Colors.WHITE);
        this.store.tidyTexturesUp();
    }

    public final void updateTouchInput() {
        List<TouchPoint> touchPoints = this.touchPane.getTouchPoints();
        if (touchPoints.size() == 1) {
            float ySpeed = touchPoints.get(0).getYSpeed() * this.touchPane.getHeightRatio();
            this.moveYSpeed = ySpeed;
            this.moveY += ySpeed;
        } else if (touchPoints.size() > 1) {
            this.moveYSpeed = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        } else {
            if (this.lastTouchPointCount == 1 && this.moveY > 50.0f) {
                this.store.fetch();
            }
            float f = this.moveYSpeed * 0.95f;
            this.moveYSpeed = f;
            this.moveY += f;
            int size = this.store.getScreenshots().size();
            int i = this.itemsPerLine;
            float fMin = Math.min(((((((-((size + i) - 1)) / i) * this.tileHeight) + this.gui.getHeight()) - 30) - this.gui.getPaddingTop()) - this.gui.getPaddingBottom(), 0);
            float f2 = this.moveY;
            if (f2 > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                this.moveY = f2 * 0.6f;
            }
            float f3 = this.moveY;
            if (f3 < fMin) {
                this.moveY = (0.6f * f3) + (fMin * 0.4f);
            }
        }
        this.lastTouchPointCount = touchPoints.size();
    }

    public final void calculateRect(int[] iArr, int i, int i2, int i3) {
        int i4 = this.itemsPerLine;
        iArr[0] = ((i % i4) * this.tileWidth) + i2;
        iArr[1] = ((i / i4) * this.tileHeight) + Math.round(this.moveY) + 30 + i3;
        iArr[2] = this.tileWidth;
        iArr[3] = this.tileHeight;
    }

    public final int getIndexAt(int i, int i2) {
        int i3;
        int iRound = ((i2 - Math.round(this.moveY)) - 30) / this.tileHeight;
        int i4 = i / this.tileWidth;
        if (iRound < 0 || i4 < 0 || i4 >= (i3 = this.itemsPerLine)) {
            return -1;
        }
        int i5 = (i3 * iRound) + i4;
        synchronized (this.store.getScreenshots()) {
            if (i5 >= 0) {
                try {
                    if (i5 < this.store.getScreenshots().size()) {
                        return i5;
                    }
                } finally {
                }
            }
            return -1;
        }
    }

    public final void drawTile(ScreenshotStore.Screenshot screenshot, int i, int i2, int i3, int i4, int i5) {
        Image image = screenshot.getImage();
        float f = i4;
        float f2 = i5;
        this.engine.drawNinePatch(Resources.IMAGE_WORLD, i2, i3, f, f2, Resources.skin.npRectShadow);
        this.engine.setColor(screenshot.isMyOwn() ? Colors.MARINE_BLUE : Colors.BLACK);
        this.engine.drawImage(Resources.IMAGE_WORLD, i2 + 3, i3 + 3, i4 - 6, i5 - 6, Resources.FRAME_RECT);
        Engine engine = this.engine;
        Color color = Colors.WHITE;
        engine.setColor(color);
        if (image != null) {
            drawImage(image, i2 + 4, i3 + 4, i4 - 8, i5 - 8);
        } else {
            this.engine.setColor(Colors.GRAY);
            this.engine.drawImage(Resources.IMAGE_WORLD, i2 + 4, i3 + 4, i4 - 8, i5 - 8, Resources.FRAME_RECT);
        }
        this.engine.setColor(Colors.BLACK);
        this.engine.setTransparency(120);
        int i6 = i3 + i5;
        this.engine.drawImage(Resources.IMAGE_WORLD, i2 + 4, i6 - 32, i4 - 8, 28.0f, Resources.FRAME_RECT);
        this.engine.setTransparency(255);
        this.engine.setColor(color);
        Skin skin = Resources.skin;
        Font font = skin.fontSmall;
        Font font2 = skin.fontDefault;
        float f3 = i2 + 6;
        float f4 = i6 - 32;
        this.engine.drawText(font2, screenshot.getName(), f3, f4);
        this.engine.setTransparency(120);
        this.engine.drawText(font, StringFormatter.format(this.translator.translate(2383), screenshot.getUserName()), i2 + 8 + font2.getWidth(screenshot.getName()), (f4 + font2.getHeight()) - font.getHeight());
        this.engine.setTransparency(255);
        this.engine.drawText(font, "" + screenshot.getComments(), i2 + 20, i6 - 16);
        this.engine.setScale(0.5f, 0.5f);
        this.engine.drawImage(Resources.IMAGE_WORLD, f3, (float) (i6 + (-18)), Resources.ICON_NOTIFICATION);
        this.engine.setScale(1.0f, 1.0f);
        String str = StringFormatter.format("%,d", Integer.valueOf(screenshot.getOverallRating()));
        int i7 = i4 + i2;
        int width = (i7 - 4) - ((int) font.getWidth(str));
        int i8 = i6 - 15;
        this.engine.drawText(font, str, width - 20, i6 - 23);
        int ownRating = screenshot.getOwnRating();
        this.engine.setTransparency(ownRating > 0 ? 80 : 255);
        this.engine.setColor(ownRating < 0 ? Colors.MARINE_BLUE : color);
        drawDownArrow(width - 30, i6 - 20, 5);
        this.engine.setTransparency(ownRating >= 0 ? 255 : 80);
        this.engine.setColor(ownRating > 0 ? Colors.MARINE_BLUE : color);
        drawUpArrow(i7 - 14, i8, 5);
        this.engine.setTransparency(255);
        this.engine.setColor(color);
        if (screenshot.isMyOwn() || Backend.getInstance().getUser().getAdmin() > 0) {
            this.engine.setScale(0.5f, 0.5f);
            this.engine.drawImage(Resources.IMAGE_WORLD, i2 - 4, i3 + 4, f, f2, 1.0f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, Resources.ICON_TRASH);
            this.engine.setScale(1.0f, 1.0f);
        }
        screenshot.indicateUsage();
    }

    public final void clickTile(final ScreenshotStore.Screenshot screenshot, int i, int i2, int i3, int i4, int i5) {
        final ScreenshotStore.Screenshot screenshot2;
        if (i3 >= i5 - 30) {
            int width = (int) Resources.skin.fontSmall.getWidth(StringFormatter.format("%,d", Integer.valueOf(screenshot.getOverallRating())));
            if (i2 > (i4 - width) - 50) {
                if (Backend.getInstance().getUser().isValid()) {
                    if (screenshot.getOwnRating() == 0) {
                        if (i2 < (i4 - (width / 2)) - 24) {
                            screenshot.rate(-1);
                        } else {
                            screenshot.rate(1);
                        }
                    } else {
                        screenshot.rate(0);
                    }
                } else {
                    TheoTown.socialManager.showConnectionDialog(this.context);
                }
            } else if (i2 < 200) {
                screenshot2 = screenshot;
                getGameStack().push(new GalleryCommentStage(this.context, screenshot.getName(), this.store, screenshot2, new AbstractCommentsStage.ImageProvider() { // from class: info.flowersoft.theotown.stages.GalleryStage.7
                    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
                    public int getFrame() {
                        return 0;
                    }

                    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
                    public void prepare() {
                        screenshot.indicateUsage();
                    }

                    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
                    public Image get() {
                        return screenshot.getImage();
                    }

                    @Override // info.flowersoft.theotown.stages.AbstractCommentsStage.ImageProvider
                    public void release() {
                        GalleryStage.this.store.releaseAllTextures();
                    }
                }));
            }
            screenshot2 = screenshot;
        } else {
            screenshot2 = screenshot;
        }
        if (i3 < 4 || i3 >= 20 || i2 < i4 - 20) {
            return;
        }
        if (screenshot2.isMyOwn() || Backend.getInstance().getUser().getAdmin() > 0) {
            Dialog dialog = new Dialog(Resources.ICON_TRASH, this.translator.translate(1540), this.translator.translate(256), this.gui);
            dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477));
            dialog.addButton(Resources.ICON_TRASH, this.translator.translate(1957), false, new Runnable() { // from class: info.flowersoft.theotown.stages.GalleryStage.8
                @Override // java.lang.Runnable
                public void run() {
                    screenshot2.delete();
                }
            });
            dialog.setVisible(true);
        }
    }

    public final void drawDownArrow(int i, int i2, int i3) {
        float f = i2;
        Drawing.getInstance().drawTriangle(i - i3, f, i, i2 + i3, i + i3, f, this.engine);
    }

    public final void drawUpArrow(int i, int i2, int i3) {
        float f = i2;
        Drawing.getInstance().drawTriangle(i - i3, f, i + i3, f, i, i2 - i3, this.engine);
    }

    public final void drawImage(Image image, int i, int i2, int i3, int i4) {
        float f = i;
        float f2 = i2;
        float f3 = i3;
        float f4 = i4;
        this.engine.setClipRect(f, f2, f3, f4);
        float fMax = Math.max(f3 / image.getWidth(), f4 / image.getHeight());
        this.engine.setScale(fMax, fMax);
        this.engine.drawImage(image, f, f2, f3, f4, 0.5f, 0.5f, 0);
        this.engine.setScale(1.0f, 1.0f);
        this.engine.resetClipping();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.store.releaseAllTextures();
        super.leave();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
    }

    public String toString() {
        return "GalleryStage";
    }
}
