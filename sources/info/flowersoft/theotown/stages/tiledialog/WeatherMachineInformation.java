package info.flowersoft.theotown.stages.tiledialog;

import com.ironsource.mediationsdk.utils.IronSourceConstants;
import info.flowersoft.theotown.components.DefaultWeather;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.PopupBuilder;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public class WeatherMachineInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        BuildingDraft buildingDraft = this.draft;
        return buildingDraft != null && buildingDraft.id.equals("$weather_machine00") && this.building.isWorking();
    }

    public final void unlockAchievement() {
        if (this.city.canAchieve()) {
            TheoTown.gamesService.unlockAchievement("weather_change");
        }
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(final Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        if (this.city.isReadonly()) {
            return;
        }
        final DefaultWeather defaultWeather = (DefaultWeather) this.city.getComponent(12);
        if (!this.building.getUpgrades().isEmpty()) {
            new IconButton(Resources.ICON_WEATHER_FOG, "", 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.1
                @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
                public void onClick() {
                    super.onClick();
                    dialog.setVisible(false);
                    defaultWeather.setFogEnabled(!r0.isFogEnabled());
                    Settings.weather = true;
                    WeatherMachineInformation.this.unlockAchievement();
                }

                @Override // io.blueflower.stapel2d.gui.Button
                public boolean isPressed() {
                    return defaultWeather.isFogEnabled();
                }
            };
        }
        final IntList intList = new IntList();
        final ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        final ArrayList arrayList3 = new ArrayList();
        intList.add(Resources.ICON_WEATHER_SUNNY);
        arrayList.add(this.translator.translate(IronSourceConstants.errorCode_TEST_SUITE_NO_NETWORK_CONNECTIVITY));
        arrayList2.add(new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(defaultWeather.isTimeLocked() && defaultWeather.getTime() == 290373);
            }
        });
        arrayList3.add(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.3
            @Override // java.lang.Runnable
            public void run() {
                defaultWeather.setTime(290373);
                defaultWeather.setTimeLocked(true);
                Settings.weather = true;
                WeatherMachineInformation.this.unlockAchievement();
            }
        });
        intList.add(Resources.ICON_WEATHER_RAINY);
        arrayList.add(this.translator.translate(1129));
        arrayList2.add(new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(defaultWeather.isTimeLocked() && defaultWeather.getTime() == 849711);
            }
        });
        arrayList3.add(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.5
            @Override // java.lang.Runnable
            public void run() {
                defaultWeather.setTime(849711);
                defaultWeather.setTimeLocked(true);
                Settings.weather = true;
                WeatherMachineInformation.this.unlockAchievement();
            }
        });
        intList.add(Resources.ICON_WEATHER_LIGHTING);
        arrayList.add(this.translator.translate(1828));
        arrayList2.add(new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(defaultWeather.isTimeLocked() && defaultWeather.getTime() == 622697);
            }
        });
        arrayList3.add(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.7
            @Override // java.lang.Runnable
            public void run() {
                defaultWeather.setTime(622697);
                defaultWeather.setTimeLocked(true);
                Settings.weather = true;
                WeatherMachineInformation.this.unlockAchievement();
            }
        });
        intList.add(Resources.ICON_PLAY);
        arrayList.add(this.translator.translate(3350));
        arrayList2.add(new Getter<Boolean>() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // io.blueflower.stapel2d.util.Getter
            public Boolean get() {
                return Boolean.valueOf(!defaultWeather.isTimeLocked());
            }
        });
        arrayList3.add(new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.9
            @Override // java.lang.Runnable
            public void run() {
                defaultWeather.setTimeLocked(false);
                Settings.weather = true;
                WeatherMachineInformation.this.unlockAchievement();
            }
        });
        int i = 0;
        while (i < arrayList2.size() && !((Boolean) ((Getter) arrayList2.get(i)).get()).booleanValue()) {
            i++;
        }
        final int iMin = Math.min(i, arrayList2.size() - 1);
        new IconButton(intList.get(iMin), (String) arrayList.get(iMin), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.10
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                PopupBuilder popupBuilder = new PopupBuilder(this);
                final int i2 = 0;
                while (i2 < intList.size()) {
                    popupBuilder.addItem(intList.get(i2), (String) arrayList.get(i2), new Runnable() { // from class: info.flowersoft.theotown.stages.tiledialog.WeatherMachineInformation.10.1
                        @Override // java.lang.Runnable
                        public void run() {
                            dialog.setVisible(false);
                            ((Runnable) arrayList3.get(i2)).run();
                        }
                    }, i2 != iMin);
                    i2++;
                }
                popupBuilder.build();
            }
        };
    }
}
