package info.flowersoft.theotown.stages.tiledialog;

import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.buildingcontroller.WasteController;
import info.flowersoft.theotown.components.management.DefaultManagement;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.SuccessOverlay;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class BodyDisposalBuildingInformation extends AbstractBuildingInformation {
    public static final float SWIPE_FACTOR = (float) Resources.getSpecificConfig("body disposal").optDouble("swipe factor", 1.0d);
    public final AnimationDraft SKELETONS_ANIMATION = (AnimationDraft) Drafts.get("$anim_skeletons00", AnimationDraft.class);
    public boolean clearableByTouch = true;
    public boolean hasCapacity;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.AbstractBuildingInformation, info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
        if (canHandle()) {
            this.hasCapacity = this.building.getAspectCapacity(4) > 0;
        }
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        Building building = this.building;
        return building != null && building.isWorking() && this.building.getProvidedAmount(4) > 0;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public String getText() {
        if (this.building.getAspectCapacity(4) > 0 && this.clearableByTouch) {
            return this.translator.translate(1627);
        }
        return "";
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        Panel contentPane = dialog.getContentPane();
        if (this.hasCapacity) {
            new BodyDisposalProgress(contentPane.getX(), contentPane.getY(), contentPane.getWidth(), 40, contentPane.getParent());
            contentPane.setShape(contentPane.getX(), contentPane.getY() + 40, contentPane.getWidth(), contentPane.getHeight() - 40);
            dialog.getTextFrame().setHeight(dialog.getTextFrame().getHeight() - 30);
        }
        ElementLine controlLine = dialog.getControlLine();
        JSONObject jSONObjectOptJSONObject = Resources.CONFIG.optJSONObject("body disposal");
        if (jSONObjectOptJSONObject != null) {
            int iOptInt = jSONObjectOptJSONObject.optInt("clear diamonds price", 0);
            boolean zOptBoolean = jSONObjectOptJSONObject.optBoolean("clear allow ad", false);
            if (iOptInt <= 0 || !this.hasCapacity) {
                return;
            }
            if (TheoTown.PREMIUM) {
                final long jOptInt = jSONObjectOptJSONObject.optInt("clear price", iOptInt * 1000);
                final DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
                new GoldButton(Resources.ICON_DISASTER_FIRE, this.translator.translate(710) + " " + Localizer.localizeMoney(jOptInt), 0, 0, 0, controlLine.getClientHeight(), controlLine.getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation.1
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        defaultBudget.spend(jOptInt, BodyDisposalBuildingInformation.this.building.getX() + (BodyDisposalBuildingInformation.this.building.getWidth() / 2.0f), BodyDisposalBuildingInformation.this.building.getY() + (BodyDisposalBuildingInformation.this.building.getHeight() / 2.0f), "clear " + BodyDisposalBuildingInformation.this.building.getDraftId());
                        BodyDisposalBuildingInformation.this.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
                    }

                    @Override // io.blueflower.stapel2d.gui.Gadget
                    public boolean isVisible() {
                        return super.isVisible() && BodyDisposalBuildingInformation.this.getProgress() > 0.1f;
                    }

                    @Override // io.blueflower.stapel2d.gui.Gadget
                    public boolean isEnabled() {
                        return super.isEnabled() && defaultBudget.canSpend(jOptInt);
                    }
                };
                return;
            }
            new AnonymousClass2(Resources.ICON_DISASTER_FIRE, this.translator.translate(3343), 0, 0, 0, controlLine.getClientHeight(), controlLine.getThirdPart(), dialog, iOptInt, zOptBoolean, setter, stapel2DGameContext);
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$2, reason: invalid class name */
    public class AnonymousClass2 extends GoldButton {
        public final /* synthetic */ boolean val$allowAd;
        public final /* synthetic */ Stapel2DGameContext val$context;
        public final /* synthetic */ Dialog val$dialog;
        public final /* synthetic */ int val$diamondPrice;
        public final /* synthetic */ Setter val$stageVisitor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, Dialog dialog, int i6, boolean z, Setter setter, Stapel2DGameContext stapel2DGameContext) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$dialog = dialog;
            this.val$diamondPrice = i6;
            this.val$allowAd = z;
            this.val$stageVisitor = setter;
            this.val$context = stapel2DGameContext;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            int i = Resources.PEOPLE_PRIEST;
            String strTranslate = BodyDisposalBuildingInformation.this.translator.translate(3275);
            String strTranslate2 = BodyDisposalBuildingInformation.this.translator.translate(3517);
            Master master = (Master) this.val$dialog.getWindow().getAbsoluteParent();
            long j = this.val$diamondPrice;
            Getter getter = new Getter() { // from class: info.flowersoft.theotown.stages.tiledialog.BodyDisposalBuildingInformation$2$$ExternalSyntheticLambda0
                @Override // io.blueflower.stapel2d.util.Getter
                public final Object get() {
                    return BodyDisposalBuildingInformation.AnonymousClass2.m2334$r8$lambda$jkT493JSjZBJlex6XKOU3501oA(this.f$0);
                }
            };
            Setter setter = this.val$allowAd ? this.val$stageVisitor : null;
            new BuyOrVideoDialog(i, strTranslate, strTranslate2, master, j, (Getter<Boolean>) getter, (Setter<Stage>) setter, this.val$context, "clear " + BodyDisposalBuildingInformation.this.building.getDraftId(), "Clear_Landfill", false).setVisible(true);
        }

        /* JADX INFO: renamed from: $r8$lambda$j-kT493JSjZBJlex6XKOU3501oA, reason: not valid java name */
        public static /* synthetic */ Boolean m2334$r8$lambda$jkT493JSjZBJlex6XKOU3501oA(AnonymousClass2 anonymousClass2) {
            BodyDisposalBuildingInformation.this.setProgress(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT);
            return Boolean.TRUE;
        }

        @Override // io.blueflower.stapel2d.gui.Gadget
        public boolean isVisible() {
            return super.isVisible() && BodyDisposalBuildingInformation.this.getProgress() > 0.1f;
        }
    }

    public final float getProgress() {
        return this.building.getAspects()[1] / this.building.getAspectCapacity(4);
    }

    public final void setProgress(float f) {
        this.building.getAspects()[1] = (int) (Math.min(Math.max(f, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT), 1.0f) * this.building.getAspectCapacity(4));
        ((WasteController) ((DefaultManagement) this.city.getComponent(3)).getBuildingWorker().getController(WasteController.class)).updateFrame(this.building);
    }

    public class BodyDisposalProgress extends Panel {
        public long lastTime;

        public BodyDisposalProgress(int i, int i2, int i3, int i4, Gadget gadget) {
            super(i, i2, i3, i4, gadget);
        }

        @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
        public void draw(int i, int i2) {
            Engine engine = this.skin.engine;
            int i3 = this.x + i;
            int i4 = this.y + i2;
            float f = this.width;
            int progress = (int) (BodyDisposalBuildingInformation.this.getProgress() * f);
            int i5 = this.height;
            Color color = Colors.BLACK;
            engine.setColor(color);
            engine.setTransparency(40);
            float f2 = i3;
            float f3 = i4;
            float f4 = i5;
            engine.drawImage(Resources.IMAGE_WORLD, f2, f3, f, f4, Resources.FRAME_RECT);
            engine.setTransparency(255);
            if (BodyDisposalBuildingInformation.this.getProgress() >= 0.99f) {
                engine.setColor(Colors.RED);
                engine.drawImage(Resources.IMAGE_WORLD, f2, f3, progress, f4, Resources.FRAME_RECT);
            }
            engine.setColor(Colors.WHITE);
            engine.setClipRect(i3 + 1, i4 + 1, progress - 2, i5 - 2);
            float f5 = progress;
            Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, BodyDisposalBuildingInformation.this.SKELETONS_ANIMATION.frames[0], f2, f3, f5, f4);
            engine.setTransparency(120);
            engine.setScale(2.0f, 2.0f);
            Drawing.getInstance().drawTiled(engine, Resources.IMAGE_WORLD, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, BodyDisposalBuildingInformation.this.SKELETONS_ANIMATION.frames[0], f2, f3, f5, f4);
            engine.setTransparency(255);
            engine.setScale(1.0f, 1.0f);
            engine.resetClipping();
            Drawing.getInstance().drawOutlinedText("" + ((int) (BodyDisposalBuildingInformation.this.getProgress() * 100.0f)) + "%", i3 + (r13 / 2), i4 + (i5 / 2), this.skin.fontBig, color, engine, 0.5f, 0.5f);
        }

        @Override // io.blueflower.stapel2d.gui.SensitiveGadget, io.blueflower.stapel2d.gui.Gadget
        public void onUpdate() {
            super.onUpdate();
            long jMillis = TimeUtils.millis();
            int i = (int) (jMillis - this.lastTime);
            if (i <= 0 || i > 100) {
                i = 20;
            }
            if (this.tp != null && BodyDisposalBuildingInformation.this.getProgress() > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT) {
                Engine engine = this.skin.engine;
                float fMax = Math.max(Math.abs(this.tp.getXSpeed() * this.master.getWidthRatio()), Math.abs(this.tp.getYSpeed() * this.master.getHeightRatio())) / i;
                BodyDisposalBuildingInformation bodyDisposalBuildingInformation = BodyDisposalBuildingInformation.this;
                bodyDisposalBuildingInformation.setProgress(Math.max(bodyDisposalBuildingInformation.getProgress() - ((BodyDisposalBuildingInformation.SWIPE_FACTOR * fMax) / 1000.0f), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT));
                double dNextFloat = Resources.RND.nextFloat() * 2.0f * 3.1415927f;
                SuccessOverlay.getInstance().addParticle(SuccessOverlay.getInstance().getDustAnimation(), (this.tp.getX() / this.master.getVirtualWidthRatio()) * this.skin.engine.getWidthRatio(), (this.tp.getY() / this.master.getVirtualHeightRatio()) * this.skin.engine.getHeightRatio(), ((float) Math.cos(dNextFloat)) * 10.0f, ((float) Math.sin(dNextFloat)) * 10.0f, 1.0f, 4.0f, Colors.BLACK, Colors.GRAY, 1000);
            }
            this.lastTime = jMillis;
        }
    }
}
