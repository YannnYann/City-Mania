package info.flowersoft.theotown.stages.tiledialog;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.modifier.CityModifier;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.crossplatform.VideoAdStage;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.GoldButton;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class ConstructionBuildingInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        if (this.draft != null) {
            return this.building.inConstruction() || this.building.hasPendingUpgrades();
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0148  */
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String getText() {
        /*
            Method dump skipped, instruction units count: 381
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.getText():java.lang.String");
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(final Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        int i;
        double pendingUpgradeDaysLeft;
        int iMax;
        double absoluteDay = ((DefaultDate) this.city.getComponent(1)).getAbsoluteDay();
        double daysBuilt = this.building.getDaysBuilt(absoluteDay);
        long j = this.building.inConstruction() ? this.draft.buildTime : this.building.hasPendingUpgrades() ? this.building.getPendingUpgrade().buildTime : 0L;
        if (this.building.inConstruction()) {
            pendingUpgradeDaysLeft = -daysBuilt;
        } else {
            if (!this.building.hasPendingUpgrades()) {
                i = 0;
                iMax = Math.max(i, 0);
                if (iMax > 0 || j <= 0 || this.city.isReadonly()) {
                    return;
                }
                JSONObject specificConfig = Resources.getSpecificConfig("construction");
                int iRound = (j < 5 || this.draft.freeBuildTimeSkip) ? 0 : Math.round((((float) specificConfig.optDouble("skip price factor", 20.0d)) * ((float) Math.log((((double) iMax) / specificConfig.optDouble("skip price divisor", 20.0d)) + specificConfig.optDouble("skip price inner offset", 1.0d)))) + ((float) specificConfig.optDouble("skip price outer offset", 0.0d)));
                if (this.building.hasPendingUpgrades()) {
                    new IconButton(Resources.ICON_CANCEL, this.translator.translate(Sdk.SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getFirstPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.1
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            if (ConstructionBuildingInformation.this.building.hasPendingUpgrades()) {
                                CityModifier cityModifier = new CityModifier(ConstructionBuildingInformation.this.city, true);
                                Building building = ConstructionBuildingInformation.this.building;
                                cityModifier.removeUpgrade(building, building.getPendingUpgrade());
                            }
                            dialog.setVisible(false);
                        }
                    };
                }
                if (TheoTown.PREMIUM) {
                    final long area = iMax * this.draft.getArea() * 100;
                    final DefaultBudget defaultBudget = (DefaultBudget) this.city.getComponent(0);
                    new GoldButton(Resources.ICON_PLAYFASTFAST, this.translator.translate(3252) + " " + Localizer.localizeMoney(area), 0, 0, 0, dialog.getControlLine().getThirdPart().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.2
                        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                        public void onClick() {
                            super.onClick();
                            defaultBudget.spend(area, "finish " + ConstructionBuildingInformation.this.building.getDraftId());
                            if (ConstructionBuildingInformation.this.building.inConstruction()) {
                                new CityModifier(ConstructionBuildingInformation.this.city, true).finishBuilding(ConstructionBuildingInformation.this.building, null);
                            } else if (ConstructionBuildingInformation.this.building.hasPendingUpgrades()) {
                                new CityModifier(ConstructionBuildingInformation.this.city, true).finishUpgrade(ConstructionBuildingInformation.this.building, null);
                            }
                            dialog.setVisible(false);
                        }
                    }.setEnabled(defaultBudget.canSpend(area));
                    return;
                }
                new AnonymousClass3(Resources.ICON_PLAYFASTFAST, this.translator.translate(3252), 0, 0, 0, dialog.getControlLine().getThirdPart().getClientHeight(), dialog.getControlLine().getThirdPart(), iMax, iRound, dialog, stapel2DGameContext, setter);
                return;
            }
            pendingUpgradeDaysLeft = this.building.getPendingUpgradeDaysLeft(absoluteDay);
        }
        i = (int) pendingUpgradeDaysLeft;
        iMax = Math.max(i, 0);
        if (iMax > 0) {
        }
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3, reason: invalid class name */
    public class AnonymousClass3 extends GoldButton {
        public final /* synthetic */ Stapel2DGameContext val$context;
        public final /* synthetic */ int val$daysToSkip;
        public final /* synthetic */ Dialog val$dialog;
        public final /* synthetic */ int val$diamondPrice;
        public final /* synthetic */ Setter val$stageVisitor;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, int i6, int i7, Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter setter) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$daysToSkip = i6;
            this.val$diamondPrice = i7;
            this.val$dialog = dialog;
            this.val$context = stapel2DGameContext;
            this.val$stageVisitor = setter;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            final BuyOrVideoDialog buyOrVideoDialog = new BuyOrVideoDialog(Resources.ICON_PLAYFASTFAST, ConstructionBuildingInformation.this.translator.translate(3252), StringFormatter.format(ConstructionBuildingInformation.this.translator.translate(IronSourceError.ERROR_LEGACY_INIT_FAILED), Integer.valueOf(this.val$daysToSkip)), (Master) getAbsoluteParent(), this.val$diamondPrice, new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.3.1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // io.blueflower.stapel2d.util.Getter
                public Boolean get() {
                    if (ConstructionBuildingInformation.this.building.inConstruction()) {
                        new CityModifier(ConstructionBuildingInformation.this.city, true).finishBuilding(ConstructionBuildingInformation.this.building, null);
                    } else if (ConstructionBuildingInformation.this.building.hasPendingUpgrades()) {
                        new CityModifier(ConstructionBuildingInformation.this.city, true).finishUpgrade(ConstructionBuildingInformation.this.building, null);
                    }
                    AnonymousClass3.this.val$dialog.setVisible(false);
                    return Boolean.TRUE;
                }
            }, (Setter<Stage>) null, this.val$context, "Skip build time", (String) null, false);
            if (this.val$diamondPrice > 0) {
                buyOrVideoDialog.getDiamondButton().setGolden(false);
                final int iOptInt = Resources.getSpecificConfig("construction").optInt("ad skip days", 45);
                VideoAdStage.VideoAdStageFactory videoAdStageFactory = TheoTown.videoAdStageFactory;
                Stapel2DGameContext stapel2DGameContext = this.val$context;
                final Dialog dialog = this.val$dialog;
                final VideoAdStage videoAdStageCreate = videoAdStageFactory.create(stapel2DGameContext, "Skip_Build_Time", new VideoAdStage.AdResultHandler() { // from class: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation$3$$ExternalSyntheticLambda0
                    @Override // info.flowersoft.theotown.crossplatform.VideoAdStage.AdResultHandler
                    public final void handle(int i) {
                        ConstructionBuildingInformation.AnonymousClass3.$r8$lambda$OjXRZLHVrXrNah1UqM55pACpKhQ(this.f$0, iOptInt, buyOrVideoDialog, dialog, i);
                    }
                });
                GoldButton goldButton = new GoldButton(Resources.ICON_PLAY_AD_VIDEO, StringFormatter.format(ConstructionBuildingInformation.this.translator.translate(1943), Integer.valueOf(iOptInt)), 0, 0, 0, buyOrVideoDialog.getControlLine().getClientHeight(), buyOrVideoDialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.ConstructionBuildingInformation.3.2
                    @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                    public void onClick() {
                        super.onClick();
                        AnonymousClass3.this.val$stageVisitor.set(videoAdStageCreate);
                    }

                    @Override // io.blueflower.stapel2d.gui.Gadget
                    public boolean isEnabled() {
                        return videoAdStageCreate.isLoaded();
                    }
                };
                goldButton.setGolden(true);
                goldButton.setMaxWidth(buyOrVideoDialog.getControlLine().getThirdPart().getClientWidth() / 2);
            }
            buyOrVideoDialog.setVisible(true);
        }

        public static /* synthetic */ void $r8$lambda$OjXRZLHVrXrNah1UqM55pACpKhQ(AnonymousClass3 anonymousClass3, int i, BuyOrVideoDialog buyOrVideoDialog, Dialog dialog, int i2) {
            anonymousClass3.getClass();
            if (i2 == 0) {
                TheoTown.analytics.logEvent("Video skip" + i + " days", "wachted ad", "");
                if (ConstructionBuildingInformation.this.building.inConstruction()) {
                    Building building = ConstructionBuildingInformation.this.building;
                    building.setBuildDay(building.getBuildDay() - ((long) i));
                } else if (ConstructionBuildingInformation.this.building.hasPendingUpgrades()) {
                    ConstructionBuildingInformation.this.building.skipPendingUpgradeDays(i);
                }
                buyOrVideoDialog.setVisible(false);
                dialog.setVisible(false);
            }
        }
    }
}
