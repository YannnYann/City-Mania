package info.flowersoft.theotown.stages.gameuibuilder;

import com.badlogic.gdx.math.Interpolation;
import com.unity3d.services.UnityAdsConstants;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.ui.Minimap;
import info.flowersoft.theotown.ui.ShadowedLabel;
import info.flowersoft.theotown.util.LineLayoutFiller;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Builder;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.VisibilityAnimationTimer;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class MinimapBuilder extends Builder<CityStage.GameStageContext> {
    public final City city;
    public final Master gui;

    public MinimapBuilder(CityStage.GameStageContext gameStageContext) {
        super(gameStageContext);
        this.city = getBuilderContext().getCity();
        this.gui = getBuilderContext().getGUI();
    }

    @Override // io.blueflower.stapel2d.util.Builder
    public void build() {
        int i = Settings.biggerMinimap ? 256 : Sdk.SDKError.Reason.INVALID_TPAT_KEY_VALUE;
        Panel panel = getBuilderContext().areaPanel;
        new AnonymousClass1(panel.getX() + (Settings.leftMinimap ? 0 : (panel.getWidth() - i) - 4), (r11 - i) - 29, i + 4, i + 29, this.gui, this.city, i, 24, panel.getY() + panel.getHeight());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1, reason: invalid class name */
    public class AnonymousClass1 extends Panel {
        public final VisibilityAnimationTimer animationTimer;
        public final Panel buttonLine;
        public final Minimap minimap;
        public final /* synthetic */ int val$bottomY;
        public final /* synthetic */ int val$buttonHeight;
        public final /* synthetic */ City val$city;
        public final /* synthetic */ int val$minimapWidth;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(int i, int i2, int i3, int i4, Gadget gadget, final City city, int i5, int i6, int i7) {
            super(i, i2, i3, i4, gadget);
            this.val$city = city;
            this.val$minimapWidth = i5;
            this.val$buttonHeight = i6;
            this.val$bottomY = i7;
            this.animationTimer = new VisibilityAnimationTimer(shouldBeVisible(), 200L);
            setPadding(2);
            ((CityStage.GameStageContext) MinimapBuilder.this.getBuilderContext()).minimapPanel = this;
            Minimap minimap = new Minimap(city, 0, 0, i5, i5, this);
            this.minimap = minimap;
            minimap.setPadding(1);
            ((CityStage.GameStageContext) MinimapBuilder.this.getBuilderContext()).setMinimap(minimap);
            ShadowedLabel shadowedLabel = new ShadowedLabel("N", 0, 0, 0, 0, minimap) { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder.1.1
                @Override // io.blueflower.stapel2d.gui.Label
                public float getAlignmentX() {
                    if (AnonymousClass1.this.val$city.getRotation() == 1 || AnonymousClass1.this.val$city.getRotation() == 2) {
                        return 1.0f;
                    }
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }

                @Override // io.blueflower.stapel2d.gui.Label
                public float getAlignmentY() {
                    if (AnonymousClass1.this.val$city.getRotation() == 2 || AnonymousClass1.this.val$city.getRotation() == 3) {
                        return 1.0f;
                    }
                    return UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
                }
            };
            shadowedLabel.fillParent();
            shadowedLabel.setColor(Colors.WHITE);
            Panel panel = new Panel(0, i5 + 1, getClientWidth(), i6, this) { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder.1.2
                @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
                public void draw(int i8, int i9) {
                    drawChildren(i8, i9);
                }
            };
            this.buttonLine = panel;
            LineLayoutFiller lineLayoutFiller = new LineLayoutFiller(i6, 1, panel);
            lineLayoutFiller.setLineWidth(panel.getClientWidth());
            lineLayoutFiller.setStart(0, 0);
            lineLayoutFiller.addButton(Resources.ICON_TURN_RIGHT, "", new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ((CityStage.GameStageContext) MinimapBuilder.this.getBuilderContext()).turnMap(1);
                }
            });
            int i8 = Resources.ICON_MINUS;
            Runnable runnable = new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    city.zoomOut(2.0f);
                }
            };
            Objects.requireNonNull(city);
            lineLayoutFiller.addButton(i8, "", runnable, new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda2
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return Boolean.valueOf(city.canZoomOut());
                }
            });
            lineLayoutFiller.addButton(Resources.ICON_CENTER, "", new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda3
                @Override // java.lang.Runnable
                public final void run() {
                    City city2 = city;
                    city2.focus(city2.getWidth() / 2.0f, city2.getHeight() / 2.0f, city2.getScale(), true);
                }
            });
            int i9 = Resources.ICON_PLUS;
            Runnable runnable2 = new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    city.zoomIn(2.0f);
                }
            };
            Objects.requireNonNull(city);
            lineLayoutFiller.addButton(i9, "", runnable2, new Getter() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda5
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return Boolean.valueOf(city.canZoomIn());
                }
            });
            lineLayoutFiller.addButton(Resources.ICON_TURN_LEFT, "", new Runnable() { // from class: info.flowersoft.theotown.stages.gameuibuilder.MinimapBuilder$1$$ExternalSyntheticLambda6
                @Override // java.lang.Runnable
                public final void run() {
                    ((CityStage.GameStageContext) MinimapBuilder.this.getBuilderContext()).turnMap(-1);
                }
            });
            lineLayoutFiller.finalizeLine();
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public void setVisible(boolean z) {
            this.animationTimer.setState(z);
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            if (shouldBeVisible() != this.animationTimer.getTargetState()) {
                this.animationTimer.setState(shouldBeVisible());
            }
            return this.animationTimer.getState() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
        }

        private void updateSize() {
            if (this.val$city.getWidth() == this.val$city.getHeight()) {
                return;
            }
            float rotatedHeight = this.val$city.getRotatedHeight() / this.val$city.getRotatedWidth();
            int i = ((int) (this.val$minimapWidth * rotatedHeight)) + this.val$buttonHeight + 5;
            this.height = i;
            this.y = this.val$bottomY - i;
            layout();
            Minimap minimap = this.minimap;
            int i2 = this.val$minimapWidth;
            minimap.setSize(i2, (int) (i2 * rotatedHeight));
            this.buttonLine.setY(this.minimap.getHeight() + 1);
        }

        @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
        public void onUpdate() {
            updateSize();
            super.onUpdate();
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            float f;
            float width;
            float f2;
            float fApply = Interpolation.smooth.apply(this.animationTimer.getState());
            if (Settings.leftMinimap) {
                f = i;
                width = getWidth();
                f2 = fApply - 1.0f;
            } else {
                f = i;
                width = getWidth();
                f2 = 1.0f - fApply;
            }
            int i3 = (int) (f + (width * f2));
            int height = (int) (i2 + (getHeight() * (1.0f - fApply)));
            drawNinePatch(i3 - 8, height - 8, getWidth() + 16, getHeight() + 16, Resources.skin.npRectShadow);
            drawNinePatch(i3, height, Resources.skin.npPanel);
            drawChildren(i3, height);
        }

        public final boolean shouldBeVisible() {
            return Settings.showMinimap && !Settings.hideUI;
        }
    }
}
