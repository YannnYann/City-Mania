package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.backend.Backend;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TaskManager;
import info.flowersoft.theotown.stages.AccountStage;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.GalleryStage;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.ui.listitem.GroupItem;
import info.flowersoft.theotown.util.OSUtil;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class GameMenuBuilder {
    public Dialog dialog;
    public GroupItem groupItem;
    public ListBox listBox;
    public boolean rtl;

    public static void unlockSocialAchievement() {
        TheoTown.gamesService.unlockAchievement("social_media");
    }

    public final void finalizeLastCategory() {
        if (this.listBox.countItems() == 0) {
            return;
        }
        if (this.groupItem.countItems() > 0) {
            this.listBox.addItem(this.groupItem);
        }
        if (this.listBox.getItem(r0.countItems() - 1) instanceof CategoryItem) {
            this.listBox.removeItemIndex(r0.countItems() - 1);
        }
        this.groupItem = null;
    }

    public final void addCategory(String str) {
        finalizeLastCategory();
        this.listBox.addItem(new CategoryItem(str));
        this.groupItem = new GroupItem();
    }

    public final void addItem(int i, String str, final Runnable runnable) {
        if (this.groupItem.countItems() >= 2) {
            this.listBox.addItem(this.groupItem);
            this.groupItem = new GroupItem();
        }
        this.groupItem.add(new IconItem(i, str, new Runnable() { // from class: info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                GameMenuBuilder.$r8$lambda$Iy65rkKRjjpjA_dSf4dm_Ry696c(this.f$0, runnable);
            }
        }, false, this.rtl));
    }

    public static /* synthetic */ void $r8$lambda$Iy65rkKRjjpjA_dSf4dm_Ry696c(GameMenuBuilder gameMenuBuilder, Runnable runnable) {
        gameMenuBuilder.dialog.setVisible(false);
        runnable.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x018b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void build(final io.blueflower.stapel2d.gui.Master r23, final info.flowersoft.theotown.stages.CityStage.GameStageContext r24, final info.flowersoft.theotown.region.Region r25, java.lang.Runnable r26, final io.blueflower.stapel2d.gamestack.Stapel2DGameContext r27, final io.blueflower.stapel2d.util.Setter<io.blueflower.stapel2d.gamestack.Stage> r28) {
        /*
            Method dump skipped, instruction units count: 854
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.ui.GameMenuBuilder.build(io.blueflower.stapel2d.gui.Master, info.flowersoft.theotown.stages.CityStage$GameStageContext, info.flowersoft.theotown.region.Region, java.lang.Runnable, io.blueflower.stapel2d.gamestack.Stapel2DGameContext, io.blueflower.stapel2d.util.Setter):void");
    }

    public static /* synthetic */ Master $r8$lambda$y2_ahjNignY9KqHNLmoilKFWSK0(GameMenuBuilder gameMenuBuilder) {
        return (Master) gameMenuBuilder.dialog.getContentPane().getAbsoluteParent();
    }

    public static /* synthetic */ void $r8$lambda$Nnbt0GNIrS6n6h0K1QfQ90D2Jd8(Setter setter, Stapel2DGameContext stapel2DGameContext, CityStage.GameStageContext gameStageContext) {
        TheoTown.analytics.logEvent("Store", "Open", "Gamemenu");
        setter.set(new StoreStage(stapel2DGameContext, gameStageContext != null ? gameStageContext.getCity() : null));
    }

    /* JADX INFO: renamed from: $r8$lambda$UaW5-VGHh6i7DoI3du1CbhIMB6I, reason: not valid java name */
    public static /* synthetic */ void m2385$r8$lambda$UaW5VGHh6i7DoI3du1CbhIMB6I(Getter getter, Stapel2DGameContext stapel2DGameContext, Setter setter) {
        TheoTown.analytics.logEvent("Shop", "Open", "GameMenu");
        new DiamondShopDialog((Master) getter.get(), stapel2DGameContext, setter).setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$MfVSha61Qf5LEw-EjVUnicFNLK8, reason: not valid java name */
    public static /* synthetic */ void m2380$r8$lambda$MfVSha61Qf5LEwEjVUnicFNLK8(Stapel2DGameContext stapel2DGameContext, Master master, Setter setter) {
        if (LimitedAccessOfflineModeDialog.showIfNeeded(stapel2DGameContext, master)) {
            return;
        }
        setter.set(new GalleryStage(stapel2DGameContext));
    }

    public static /* synthetic */ void $r8$lambda$YyMxJetLCiLkpmsV0CzGD2QwjHw(Stapel2DGameContext stapel2DGameContext, Master master, CityStage.GameStageContext gameStageContext, Getter getter, Setter setter) {
        if (LimitedAccessOfflineModeDialog.showIfNeeded(stapel2DGameContext, master)) {
            return;
        }
        if (!Backend.getInstance().getUser().hasPermissionToUploadScreenshot()) {
            if (setter != null) {
                setter.set(new AccountStage(stapel2DGameContext));
            }
        } else if (TaskManager.getInstance().TASK_GALLERY_UPLOAD_AGREEMENT.isCompleted()) {
            gameStageContext.onlineScreenshot.take();
        } else {
            showGalleryUploadAgreement(stapel2DGameContext, (Master) getter.get());
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$R9Uz-KBnWE4FyK2q9opyZKFgzO0, reason: not valid java name */
    public static /* synthetic */ void m2383$r8$lambda$R9UzKBnWE4FyK2q9opyZKFgzO0(String str) {
        unlockSocialAchievement();
        TheoTown.runtimeFeatures.openURLInApp(str);
    }

    /* JADX INFO: renamed from: $r8$lambda$MV-Gdv55UL7LyKrEpNeiTlA7kco, reason: not valid java name */
    public static /* synthetic */ void m2379$r8$lambda$MVGdv55UL7LyKrEpNeiTlA7kco(String str) {
        unlockSocialAchievement();
        TheoTown.runtimeFeatures.openURLInApp(str);
    }

    /* JADX INFO: renamed from: $r8$lambda$pu84d6hWzC3IclCoNtyKSovO2-Y, reason: not valid java name */
    public static /* synthetic */ void m2386$r8$lambda$pu84d6hWzC3IclCoNtyKSovO2Y() {
        TheoTown.analytics.logEvent("Help", "Open (game menu)", "");
        OSUtil.openHelp();
    }

    public static /* synthetic */ void $r8$lambda$PdC1Vxjh3ySJtvQUopUuPomQPQI() {
        TheoTown.analytics.logEvent("Privacy", "Open (game menu)", "");
        OSUtil.openPolicy();
    }

    /* JADX INFO: renamed from: $r8$lambda$MhLrp4M0Crk8YDrkNIVYGlV-rgc, reason: not valid java name */
    public static /* synthetic */ void m2381$r8$lambda$MhLrp4M0Crk8YDrkNIVYGlVrgc() {
        TheoTown.analytics.logEvent("EULA", "Open (game menu)", "");
        OSUtil.openEULA();
    }

    public static /* synthetic */ void $r8$lambda$nOlUpUgv6PyrCXx1uVc_0EJ_dAc(CityStage.GameStageContext gameStageContext) {
        if (gameStageContext != null) {
            gameStageContext.closeApp();
        } else {
            TheoTown.runtimeFeatures.closeApp();
        }
    }

    public static void showGalleryUploadAgreement(Stapel2DGameContext stapel2DGameContext, Master master) {
        TheoTown.analytics.logEvent("dialog screenshot policy", "show", "");
        TranslationManager translator = stapel2DGameContext.getTranslator();
        final Dialog dialog = new Dialog(Resources.PEOPLE_OFFICER, translator.translate(2847), translator.translate(2972), 400, AdSize.WIDE_SKYSCRAPER_WIDTH, master);
        dialog.addButton(Resources.ICON_NOTIFICATION, translator.translate(989), false, new Runnable() { // from class: info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                GameMenuBuilder.m2375$r8$lambda$2QMgW_j7X3_7pyTbo1OXpL6JYo(dialog);
            }
        });
        dialog.addButton(Resources.ICON_CANCEL, translator.translate(2665), true, new Runnable() { // from class: info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.analytics.logEvent("dialog screenshot policy", "disagree", "");
            }
        });
        dialog.addButton(Resources.ICON_OK, translator.translate(397), false, new Runnable() { // from class: info.flowersoft.theotown.ui.GameMenuBuilder$$ExternalSyntheticLambda31
            @Override // java.lang.Runnable
            public final void run() {
                GameMenuBuilder.$r8$lambda$DRGr9Lb5OihnGpEdUG11aQmY3ks();
            }
        });
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$-2QMgW_j7X3_7pyTbo1OXpL6JYo, reason: not valid java name */
    public static /* synthetic */ void m2375$r8$lambda$2QMgW_j7X3_7pyTbo1OXpL6JYo(Dialog dialog) {
        dialog.setVisible(true);
        TheoTown.runtimeFeatures.openURLInApp("https://theotown.com/privacy/screenshots");
        TheoTown.analytics.logEvent("dialog screenshot policy", "open policy", "");
    }

    public static /* synthetic */ void $r8$lambda$DRGr9Lb5OihnGpEdUG11aQmY3ks() {
        TaskManager.getInstance().TASK_GALLERY_UPLOAD_AGREEMENT.complete();
        TheoTown.analytics.logEvent("dialog screenshot policy", "agree", "");
    }

    public static class CategoryItem extends ListItem {
        @Override // io.blueflower.stapel2d.gui.ListItem
        public int getHeight(boolean z) {
            return 15;
        }

        public CategoryItem(String str) {
            super(str);
        }

        @Override // io.blueflower.stapel2d.gui.ListItem
        public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
            Engine engine = skin.engine;
            engine.setColor(skin.cMenuTitle);
            engine.drawText(skin.fontSmall, this.text, i2 + (i4 / 2), i3 + (i5 / 2), UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.5f, 0.3f);
        }
    }
}
