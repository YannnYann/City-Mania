package info.flowersoft.theotown.stages.tiledialog;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.DragButton;
import info.flowersoft.theotown.ui.IconButton;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Icon;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.LineLayout;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Property;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class PerformanceInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.AbstractBuildingInformation, info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.draft != null && this.building.isWorking() && this.draft.performance;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        if (this.city.isReadonly()) {
            return;
        }
        String str = "";
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        new IconButton(Resources.ICON_PERFORMANCE, str, i, i2, i3, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart(), new Getter<Float>() { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Float get() {
                return Float.valueOf((PerformanceInformation.this.building.getPerformance() - PerformanceInformation.this.building.getDraft().performanceMin) / (PerformanceInformation.this.building.getDraft().performanceMax - PerformanceInformation.this.building.getDraft().performanceMin));
            }
        }, dialog) { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.2
            public final /* synthetic */ Dialog val$dialog;
            public final /* synthetic */ Getter val$performance;

            {
                this.val$performance = getter;
                this.val$dialog = dialog;
                this.icon = new PerformanceIcon(this.icon.getX(), this.icon.getY(), this.icon.getWidth(), this.icon.getHeight(), this.icon.getParent(), getter);
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                final CityModifier cityModifier = new CityModifier(PerformanceInformation.this.city, true);
                Dialog dialog2 = new Dialog(Resources.ICON_PERFORMANCE, PerformanceInformation.this.translator.translate(3132), "", 200, 70, (Master) this.val$dialog.getContentPane().getAbsoluteParent()) { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.2.1
                    {
                        this.icon = new PerformanceIcon(this.icon.getX(), this.icon.getY(), this.icon.getWidth(), this.icon.getHeight(), this.icon.getParent(), AnonymousClass2.this.val$performance);
                    }
                };
                dialog2.setDrawBackground(true);
                dialog2.getContentPane().getParent().removeChild(dialog2.getContentPane());
                dialog2.addHiddenCancelButton();
                dialog2.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.2.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AnonymousClass2.this.val$dialog.redrawBackground();
                    }
                });
                Property<Float> property = new Property<Float>() { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.2.3
                    @Override // io.blueflower.stapel2d.util.Getter
                    public Float get() {
                        return Float.valueOf(PerformanceInformation.this.building.getPerformance());
                    }

                    @Override // io.blueflower.stapel2d.util.Setter
                    public void set(Float f) {
                        cityModifier.setBuildingPerformance(PerformanceInformation.this.building, f.floatValue());
                    }
                };
                int clientHeight = dialog2.getControlLine().getClientHeight();
                LineLayout firstPart = dialog2.getControlLine().getFirstPart();
                BuildingDraft buildingDraft = PerformanceInformation.this.draft;
                new DragButton(0, 0, AdSize.WIDE_SKYSCRAPER_WIDTH, clientHeight, firstPart, property, buildingDraft.performanceMin, buildingDraft.performanceMax, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                new Label("", 0, 0, 40, dialog2.getControlLine().getClientHeight(), dialog2.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.PerformanceInformation.2.4
                    @Override // io.blueflower.stapel2d.gui.Label, io.blueflower.stapel2d.gui.Gadget
                    public void draw(int i4, int i5) {
                        setText(Math.round(PerformanceInformation.this.building.getPerformance() * 100.0f) + "%");
                        super.draw(i4, i5);
                    }
                }.setAlignment(1.0f, 0.5f);
                dialog2.setVisible(true);
            }
        }.setChildIndex(0);
    }

    public static class PerformanceIcon extends Icon {
        public Getter<Float> process;

        public PerformanceIcon(int i, int i2, int i3, int i4, Gadget gadget, Getter<Float> getter) {
            super(Resources.ICON_PERFORMANCE, i, i2, i3, i4, gadget);
            this.process = getter;
        }

        @Override // io.blueflower.stapel2d.gui.Icon, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            int i3 = this.frame;
            if (i3 != -1) {
                Image image = this.skin.img;
                float width = image.getWidth(i3);
                float height = image.getHeight(this.frame);
                float fRound = this.x + i + Math.round(this.alignmentX * (this.width - width));
                float fRound2 = this.y + i2 + Math.round(this.alignmentY * (this.height - height));
                drawIcon(this.skin.img, image.getHandleX(this.frame) + fRound, image.getHandleY(this.frame) + fRound2, this.frame);
                float f = fRound + (width / 2.0f);
                float f2 = fRound2 + ((height / 2.0f) - 1.0f);
                double dFloatValue = (float) (((double) (((this.process.get().floatValue() * 0.74f) + 0.38f) * 2.0f)) * 3.141592653589793d);
                float fCos = (((float) Math.cos(dFloatValue)) * 8.0f) + f;
                float fSin = (((float) Math.sin(dFloatValue)) * 8.0f) + f2;
                this.skin.engine.setColor(Colors.BLACK);
                Drawing.getInstance().drawLine(f, f2, fCos, fSin, 1.0f, this.skin.engine);
                this.skin.engine.setColor(Colors.WHITE);
            }
        }
    }
}
