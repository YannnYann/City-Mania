package info.flowersoft.theotown.city;

import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.cityloader.LightManagedPluginInfo;
import info.flowersoft.theotown.cityloader.LocalPluginManifest;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.stages.CityStage;
import info.flowersoft.theotown.stages.LoadWaitingStage;
import info.flowersoft.theotown.store.ManagedPluginsController;
import info.flowersoft.theotown.store.PluginUnloader;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.MissingPluginsDialogBuilder;
import info.flowersoft.theotown.util.StringFormatter;
import info.flowersoft.theotown.util.VersionFormatter;
import io.blueflower.stapel2d.gamestack.GameStack;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Master;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LoadCityGuard.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class LoadCityGuard {
    public final Stapel2DGameContext context;
    public final GameStack gameStack;
    public final Master gui;

    /* JADX INFO: compiled from: LoadCityGuard.kt */
    public interface Handler {
        void onError(CityKeeper cityKeeper);

        void onLoadCity(CityKeeper cityKeeper);
    }

    public static final void loadCityProtected$lambda$0() {
    }

    public LoadCityGuard(Master gui, Stapel2DGameContext context, GameStack gameStack) {
        Intrinsics.checkNotNullParameter(gui, "gui");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(gameStack, "gameStack");
        this.gui = gui;
        this.context = context;
        this.gameStack = gameStack;
    }

    public final Master getGui() {
        return this.gui;
    }

    public final Stapel2DGameContext getContext() {
        return this.context;
    }

    public final GameStack getGameStack() {
        return this.gameStack;
    }

    public final void loadCityProtected(final CityKeeper keeper, final Handler handler) {
        Intrinsics.checkNotNullParameter(keeper, "keeper");
        Intrinsics.checkNotNullParameter(handler, "handler");
        LightCityInfo info2 = keeper.getInfo();
        TranslationManager translator = this.context.getTranslator();
        if (info2.isScenario() && info2.getScenarioMinVersion() > 0 && info2.getScenarioMinVersion() > TheoTown.VERSION_CODE) {
            int i = Resources.FRAME_ZONE_OVERLOADED;
            String strTranslate = translator.translate(103);
            String strTranslate2 = translator.translate(1462);
            VersionFormatter versionFormatter = VersionFormatter.INSTANCE;
            Dialog dialog = new Dialog(i, strTranslate, StringFormatter.format(strTranslate2, versionFormatter.format(info2.getScenarioMinVersion()), versionFormatter.format(TheoTown.VERSION_CODE)), this.gui);
            dialog.addButton(Resources.ICON_OK, translator.translate(1899), false, new Runnable() { // from class: info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    LoadCityGuard.loadCityProtected$lambda$0();
                }
            }).setGolden(true).addSensitiveKey(66);
            dialog.setVisible(true);
            return;
        }
        if (info2.getVersion() < 251) {
            Dialog dialog2 = new Dialog(Resources.FRAME_ZONE_OVERLOADED, translator.translate(243), translator.translate(1253), this.gui);
            dialog2.addButton(Resources.ICON_OK, translator.translate(1448), false, new Runnable() { // from class: info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadCityCheckForMissingPlugins(keeper, handler);
                }
            }).setMarked(true);
            dialog2.addCancelButton(Resources.ICON_CANCEL, translator.translate(2641));
            dialog2.setVisible(true);
            return;
        }
        loadCityCheckForMissingPlugins(keeper, handler);
    }

    public final void loadCityCheckForMissingPlugins(final CityKeeper cityKeeper, final Handler handler) {
        LightCityInfo info2 = cityKeeper.getInfo();
        if (info2.isScenario()) {
            List<LightManagedPluginInfo> missingPlugins = ManagedPluginsController.getInstance().getMissingPlugins(info2.getScenarioRequiredPlugins());
            if (missingPlugins.isEmpty()) {
                loadCity(cityKeeper, handler);
                return;
            } else {
                new MissingPluginsDialogBuilder(this.gui, this.context, this.gameStack).showMissingPluginsDialog(missingPlugins, CollectionsKt__CollectionsKt.emptyList(), null);
                return;
            }
        }
        List<LightManagedPluginInfo> missingPlugins2 = ManagedPluginsController.getInstance().getMissingPlugins(info2.getUsedPlugins());
        List<LocalPluginManifest> missingPlugins3 = PluginUnloader.getInstance().getMissingPlugins(info2.getUsedLocalPlugins());
        if (missingPlugins2.isEmpty() && missingPlugins3.isEmpty()) {
            loadCity(cityKeeper, handler);
        } else {
            new MissingPluginsDialogBuilder(this.gui, this.context, this.gameStack).showMissingPluginsDialog(missingPlugins2, missingPlugins3, new Runnable() { // from class: info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.loadCity(cityKeeper, handler);
                }
            });
        }
    }

    public final void loadCity(final CityKeeper cityKeeper, final Handler handler) {
        this.gameStack.push(new LoadWaitingStage(this.context, new Thread() { // from class: info.flowersoft.theotown.city.LoadCityGuard$loadCity$worker$1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                cityKeeper.load();
            }
        }, new Runnable() { // from class: info.flowersoft.theotown.city.LoadCityGuard$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                LoadCityGuard.loadCity$lambda$0(cityKeeper, handler, this);
            }
        }, cityKeeper));
    }

    public static final void loadCity$lambda$0(CityKeeper cityKeeper, Handler handler, LoadCityGuard loadCityGuard) {
        if (cityKeeper.getCity() != null) {
            handler.onLoadCity(cityKeeper);
            loadCityGuard.gameStack.push(new CityStage(loadCityGuard.context, cityKeeper, null, null, null, null));
        } else {
            handler.onError(cityKeeper);
        }
    }
}
