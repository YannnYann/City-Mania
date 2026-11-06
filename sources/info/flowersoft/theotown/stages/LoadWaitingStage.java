package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.stages.cityinfo.GeneralCityInfo;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;

/* JADX INFO: loaded from: classes4.dex */
public class LoadWaitingStage extends WaitingStage {
    public LoadWaitingStage(Stapel2DGameContext stapel2DGameContext, Thread thread, Runnable runnable, CityKeeper cityKeeper) {
        super(stapel2DGameContext, Resources.ICON_LOAD, getTitle(stapel2DGameContext, cityKeeper), thread, runnable, cityKeeper.getProgressProvider(), cityKeeper.getStateProvider());
        if (Settings.debugMode) {
            GeneralCityInfo.buildCityInfos(this.infos, stapel2DGameContext.getTranslator(), cityKeeper.getInfo());
        }
    }

    public static String getTitle(Stapel2DGameContext stapel2DGameContext, CityKeeper cityKeeper) {
        String name = cityKeeper.getInfo() != null ? cityKeeper.getInfo().getName() : null;
        return (name == null || name.trim().isEmpty()) ? stapel2DGameContext.getTranslator().translate(444) : name;
    }

    @Override // info.flowersoft.theotown.stages.WaitingStage
    public String toString() {
        return "LoadWaitingStage";
    }
}
