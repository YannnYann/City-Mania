package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draftloader.PluginHelper;
import info.flowersoft.theotown.resources.Constants;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.CursorType;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.TouchPane;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.touch.TouchPoint;
import io.blueflower.stapel2d.touch.TouchUpdate;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class PluginTextureStage extends BaseStage {
    public int areaIndex;
    public Image image;
    public int lastTPCount;
    public float moveMomentumX;
    public float moveMomentumY;
    public float offsetX;
    public float offsetY;
    public float scale;
    public TouchPane touchPane;
    public float touchStartCityScale;
    public float touchStartDistance;

    public PluginTextureStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.offsetX = 20.0f;
        this.offsetY = 20.0f;
        this.scale = 1.0f;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        final int textureId = PluginHelper.getTextureId(this.areaIndex);
        final int targetX = PluginHelper.getTargetX(this.areaIndex);
        final int targetY = PluginHelper.getTargetY(this.areaIndex);
        final int targetWidth = PluginHelper.getTargetWidth(this.areaIndex);
        final int targetHeight = PluginHelper.getTargetHeight(this.areaIndex);
        final float fillRatio = PluginHelper.getFillRatio(this.areaIndex);
        Image image = new Image(Resources.IMAGE_WORLD.getTextureOfId(textureId), 1);
        this.image = image;
        image.addFrame(targetX, targetY, targetWidth, targetHeight);
        int i = 0;
        new Panel(0, i, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.PluginTextureStage.1
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i2, int i3) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(60);
                engine.drawImage(Resources.IMAGE_WORLD, PluginTextureStage.this.offsetX, PluginTextureStage.this.offsetY, targetWidth * PluginTextureStage.this.scale, targetHeight * PluginTextureStage.this.scale, Resources.FRAME_RECT);
                engine.setTransparency(180);
                Iterator<Map.Entry<String, PluginHelper.Parcel>> it = PluginHelper.getAddedBitmaps().entrySet().iterator();
                while (it.hasNext()) {
                    PluginHelper.Parcel value = it.next().getValue();
                    int iRound = Math.round(PluginTextureStage.this.scale * (value.x - targetX)) + Math.round(PluginTextureStage.this.offsetX);
                    int iRound2 = Math.round(PluginTextureStage.this.scale * (value.y - targetY)) + Math.round(PluginTextureStage.this.offsetY);
                    int iRound3 = Math.round(PluginTextureStage.this.scale * value.w);
                    int iRound4 = Math.round(PluginTextureStage.this.scale * value.h);
                    if (value.areaId == PluginTextureStage.this.areaIndex) {
                        drawNinePatch(iRound, iRound2, iRound3, iRound4, this.skin.npRect);
                    }
                }
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
                engine.drawImage(PluginTextureStage.this.image, PluginTextureStage.this.offsetX, PluginTextureStage.this.offsetY, PluginTextureStage.this.scale * targetWidth, PluginTextureStage.this.scale * targetHeight, 0);
                engine.setScale(0.5f, 0.5f);
                for (Map.Entry<String, PluginHelper.Parcel> entry : PluginHelper.getAddedBitmaps().entrySet()) {
                    PluginHelper.Parcel value2 = entry.getValue();
                    int iRound5 = Math.round(PluginTextureStage.this.scale * (value2.x - targetX)) + Math.round(PluginTextureStage.this.offsetX) + 1;
                    int iRound6 = Math.round(PluginTextureStage.this.scale * (value2.y - targetY)) + Math.round(PluginTextureStage.this.offsetY) + 1;
                    if (value2.areaId == PluginTextureStage.this.areaIndex) {
                        engine.drawText(this.skin.fontSmall, new File(entry.getKey()).getName(), iRound5, iRound6);
                    }
                }
                engine.setScale(1.0f, 1.0f);
                engine.drawText(Resources.skin.fontSmall, "" + ((int) PluginTextureStage.this.image.getWidth()) + " x " + ((int) PluginTextureStage.this.image.getHeight()) + " [" + textureId + "], mts: " + Constants.MAX_TEXTURE_SIZE + ", fill ratio: " + Math.round(fillRatio) + "%, pt " + (PluginTextureStage.this.areaIndex + 1) + "/" + PluginHelper.countTextureAreas() + ", target: " + PluginHelper.getTextureId(PluginTextureStage.this.areaIndex), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            }

            @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                super.onUpdate();
            }
        };
        this.touchPane = new TouchPane(1, i, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.PluginTextureStage.2
            @Override // info.flowersoft.theotown.ui.TouchPane
            public void clickAt(int i2, int i3, TouchPoint touchPoint) {
            }

            @Override // info.flowersoft.theotown.ui.TouchPane
            public void twoFingerClick() {
            }

            public final float getZoomStep() {
                if (Settings.smoothZoom > 0) {
                    return Constants.SMOOTH_ZOOM_STEP;
                }
                return 2.0f;
            }

            @Override // io.blueflower.stapel2d.gui.MultiSensitiveGadget, io.blueflower.stapel2d.gui.Gadget
            public CursorType updateTouchInput(TouchUpdate touchUpdate) {
                CursorType cursorTypeUpdateTouchInput = super.updateTouchInput(touchUpdate);
                float scrollChange = touchUpdate.getScrollChange();
                if (scrollChange != UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                    touchUpdate.clearScrollChange();
                    if (Settings.smoothZoom == 0) {
                        scrollChange /= Math.abs(scrollChange);
                    }
                    float fPow = (float) Math.pow(getZoomStep(), Math.abs(scrollChange));
                    if (touchUpdate.getMousePos() != null) {
                        int x = (int) (touchUpdate.getMousePos().getX() * PluginTextureStage.this.engine.getWidthRatio());
                        int y = (int) (touchUpdate.getMousePos().getY() * PluginTextureStage.this.engine.getHeightRatio());
                        if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                            PluginTextureStage.this.zoom(fPow, x, y);
                            return cursorTypeUpdateTouchInput;
                        }
                        PluginTextureStage.this.zoom(1.0f / fPow, x, y);
                        return cursorTypeUpdateTouchInput;
                    }
                    if (scrollChange < UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                        PluginTextureStage.this.zoom(fPow);
                        return cursorTypeUpdateTouchInput;
                    }
                    PluginTextureStage.this.zoom(1.0f / fPow);
                }
                return cursorTypeUpdateTouchInput;
            }
        };
        new IconButton(Resources.ICON_CANCEL, "", this.gui.getClientWidth() - 30, 0, 30, 30, this.gui) { // from class: info.flowersoft.theotown.stages.PluginTextureStage.3
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PluginTextureStage.this.getGameStack().pop();
            }
        };
        if (PluginHelper.countTextureAreas() > 1) {
            int i2 = 30;
            int i3 = 0;
            int i4 = 30;
            new IconButton(Resources.ICON_NEXT, "", this.gui.getClientWidth() - 60, i3, i4, i2, this.gui) { // from class: info.flowersoft.theotown.stages.PluginTextureStage.4
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    PluginTextureStage pluginTextureStage = PluginTextureStage.this;
                    pluginTextureStage.areaIndex = (pluginTextureStage.areaIndex + 1) % PluginHelper.countTextureAreas();
                    PluginTextureStage.this.leave();
                    PluginTextureStage.this.enter();
                }
            };
            new IconButton(Resources.ICON_PREVIOUS, "", this.gui.getClientWidth() - 90, i3, i4, i2, this.gui) { // from class: info.flowersoft.theotown.stages.PluginTextureStage.5
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    PluginTextureStage.this.areaIndex = ((r0.areaIndex + PluginHelper.countTextureAreas()) - 1) % PluginHelper.countTextureAreas();
                    PluginTextureStage.this.leave();
                    PluginTextureStage.this.enter();
                }
            };
        }
    }

    private void handleTouchInput() {
        float widthRatio = this.engine.getWidthRatio();
        float heightRatio = this.engine.getHeightRatio();
        List<TouchPoint> touchPoints = this.touchPane.getTouchPoints();
        if (touchPoints.size() == 1) {
            TouchPoint touchPoint = touchPoints.get(0);
            float firstX = touchPoint.getFirstX() * widthRatio;
            float firstY = touchPoint.getFirstY() * heightRatio;
            float xSpeed = touchPoint.getXSpeed() * widthRatio;
            float ySpeed = touchPoint.getYSpeed() * heightRatio;
            float x = (touchPoint.getX() * widthRatio) - firstX;
            float y = (touchPoint.getY() * heightRatio) - firstY;
            if (touchPoint.getButton() == 1) {
                xSpeed = x * (-0.4f);
                ySpeed = y * (-0.4f);
                setPreferredCursor(CursorType.Move);
            }
            this.moveMomentumX = xSpeed;
            this.moveMomentumY = ySpeed;
        } else if (touchPoints.size() == 2) {
            TouchPoint touchPoint2 = touchPoints.get(0);
            TouchPoint touchPoint3 = touchPoints.get(1);
            float xSpeed2 = (touchPoint2.getXSpeed() + touchPoint3.getXSpeed()) * 0.5f * widthRatio;
            float ySpeed2 = (touchPoint2.getYSpeed() + touchPoint3.getYSpeed()) * 0.5f * heightRatio;
            float x2 = (touchPoint3.getX() - touchPoint2.getX()) * widthRatio;
            float y2 = (touchPoint3.getY() - touchPoint2.getY()) * heightRatio;
            float fSqrt = (float) Math.sqrt((x2 * x2) + (y2 * y2));
            if (this.lastTPCount < 2) {
                this.touchStartDistance = fSqrt;
                this.touchStartCityScale = this.scale;
            } else {
                if (fSqrt != this.touchStartDistance) {
                    zoom(Math.min(Math.max((this.touchStartCityScale * fSqrt) / this.touchStartDistance, City.getMinScale()), City.getMaxScale()) / this.scale, (int) (((touchPoint2.getFirstX() + touchPoint3.getFirstX()) / 2.0f) * widthRatio), (int) (((touchPoint2.getFirstY() + touchPoint3.getFirstY()) / 2.0f) * heightRatio));
                }
                this.moveMomentumX = xSpeed2;
                this.moveMomentumY = ySpeed2;
            }
        } else if (touchPoints.size() > 2) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        this.lastTPCount = touchPoints.size();
        if (TheoTown.runtimeFeatures.isFullscreen() && Settings.scrollEdges && this.context.getTouch().getActivePoints().isEmpty()) {
            int x3 = Gdx.input.getX();
            int y3 = Gdx.input.getY();
            if (x3 < 2) {
                this.moveMomentumX = 10.0f;
            } else if (x3 >= Gdx.graphics.getWidth() - 2) {
                this.moveMomentumX = -10.0f;
            }
            if (y3 < 2) {
                this.moveMomentumY = 10.0f;
            } else if (y3 >= Gdx.graphics.getHeight() - 2) {
                this.moveMomentumY = -10.0f;
            }
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) >= 0.01f) {
            this.offsetX += this.moveMomentumX;
            this.offsetY += this.moveMomentumY;
            limitOffset();
            float fPow = (float) Math.pow(0.0010000000474974513d, this.context.getDeltaTime());
            this.moveMomentumX *= fPow;
            this.moveMomentumY *= fPow;
        }
        if (Math.max(Math.abs(this.moveMomentumX), Math.abs(this.moveMomentumY)) < 0.1f) {
            this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }
        if (Settings.smoothScrolling) {
            return;
        }
        this.moveMomentumY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        this.moveMomentumX = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public final void limitOffset() {
        int targetWidth = PluginHelper.getTargetWidth(this.areaIndex);
        int targetHeight = PluginHelper.getTargetHeight(this.areaIndex);
        float width = this.gui.getWidth() / 2.0f;
        float height = this.gui.getHeight() / 2.0f;
        this.offsetX = Math.min(Math.max(this.offsetX, ((-targetWidth) * this.scale) + width), width);
        this.offsetY = Math.min(Math.max(this.offsetY, ((-targetHeight) * this.scale) + height), height);
    }

    public final void zoom(float f) {
        zoom(f, this.gui.getWidth() / 2.0f, this.gui.getHeight() / 2.0f);
    }

    public final void zoom(float f, float f2, float f3) {
        float fMin = Math.min(Math.max(this.scale * f, 0.125f), 4.0f);
        float f4 = this.offsetX - f2;
        float f5 = this.scale;
        float f6 = (this.offsetY - f3) / f5;
        this.scale = fMin;
        this.offsetX = ((f4 / f5) * fMin) + f2;
        this.offsetY = (f6 * fMin) + f3;
        limitOffset();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
        handleTouchInput();
    }

    public String toString() {
        return "PluginTextureStage";
    }
}
