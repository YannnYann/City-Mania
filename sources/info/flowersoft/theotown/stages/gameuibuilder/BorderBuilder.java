package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.utils.TimeUtils;
import com.google.android.gms.ads.AdSize;
import com.unity3d.ads.core.domain.WebViewScreenCapture;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityStage;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Builder;

/* JADX INFO: loaded from: classes4.dex */
public class BorderBuilder extends Builder<CityStage.GameStageContext> {
    public final Master gui;

    public BorderBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.gui = gameStageContext.getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        new Gadget(-this.gui.getPaddingLeft(), ((this.gui.getHeight() - 20) - this.gui.getPaddingTop()) - this.gui.getPaddingBottom(), this.gui.getWidth(), this.gui.getPaddingBottom() + 20, this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.1
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, Resources.FRAME_GRADIENT_Y);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI && Settings.edgeGradients;
            }
        };
        new Gadget(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getPaddingTop(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.2
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                Image image = Resources.IMAGE_WORLD;
                float f = this.x + i;
                int i3 = this.y + i2;
                int i4 = this.height;
                engine.drawImage(image, f, i3 + i4, this.width, -i4, Resources.FRAME_GRADIENT_Y);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI && Settings.edgeGradients;
            }
        };
        new Gadget(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getPaddingLeft(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, Resources.FRAME_GRADIENT_X);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI && Settings.edgeGradients;
            }
        };
        new Gadget(this.gui.getClientWidth(), -this.gui.getPaddingTop(), this.gui.getPaddingRight(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.4
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.BLACK);
                engine.setTransparency(AdSize.WIDE_SKYSCRAPER_WIDTH);
                Image image = Resources.IMAGE_WORLD;
                int i3 = this.x + i;
                int i4 = this.width;
                engine.drawImage(image, i3 + i4, this.y + i2, -i4, this.height, Resources.FRAME_GRADIENT_X);
                engine.setColor(Colors.WHITE);
                engine.setTransparency(255);
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public boolean isVisible() {
                return !Settings.hideUI && Settings.edgeGradients;
            }
        };
        new Gadget(-this.gui.getPaddingLeft(), -this.gui.getPaddingTop(), this.gui.getWidth(), this.gui.getHeight(), this.gui) { // from class: info.flowersoft.theotown.stages.gameuibuilder.BorderBuilder.5
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                boolean z = ((CityStage.GameStageContext) BorderBuilder.this.getBuilderContext()).getDate().getSpeed() == 2;
                boolean zIsActive = ((DefaultCatastrophe) ((CityStage.GameStageContext) BorderBuilder.this.getBuilderContext()).getCity().getComponent(6)).isActive();
                if (z || zIsActive) {
                    Engine engine = this.skin.engine;
                    if (z) {
                        engine.setColor(Colors.YELLOW);
                        drawBorder(i, i2);
                    }
                    if (zIsActive) {
                        float fCos = ((((float) Math.cos((((TimeUtils.millis() % WebViewScreenCapture.CACHE_TTL_MS) * 3.141592653589793d) * 2.0d) / 2000.0d)) * (-0.5f)) + 0.5f) - 1.0f;
                        engine.setTransparency((int) (((fCos * fCos * fCos) + 1.0f) * 255.0f));
                        engine.setColor(Colors.RED);
                        drawBorder(i, i2);
                        engine.setTransparency(255);
                    }
                    engine.setColor(Colors.WHITE);
                }
                super.draw(i, i2);
            }

            public final void drawBorder(int i, int i2) {
                drawNinePatch(i, i2, Resources.NP_UI_PAUSE);
                Engine engine = this.skin.engine;
                float cornerRadius = TheoTown.runtimeFeatures.getCornerRadius() * this.master.getWidthRatio();
                if (cornerRadius >= 1.0f) {
                    float f = cornerRadius - 2.0f;
                    float f2 = cornerRadius + 100.0f;
                    Drawing.getInstance().drawCircle(cornerRadius, cornerRadius, f, f2, -3.1415927f, -1.5707964f, 1.0f, 1.0f, engine);
                    Drawing.getInstance().drawCircle(this.width - cornerRadius, cornerRadius, f, f2, -1.5707964f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.0f, 1.0f, engine);
                    Drawing.getInstance().drawCircle(cornerRadius, this.height - cornerRadius, f, f2, 1.5707964f, 3.1415927f, 1.0f, 1.0f, engine);
                    Drawing.getInstance().drawCircle(this.width - cornerRadius, this.height - cornerRadius, f, f2, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 1.5707964f, 1.0f, 1.0f, engine);
                }
            }
        };
    }
}
