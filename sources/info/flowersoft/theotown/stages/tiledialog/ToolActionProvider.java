package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.tools.FireBrigadeAlertTool;
import info.flowersoft.theotown.tools.MedicAlertTool;
import info.flowersoft.theotown.tools.PoliceAlertTool;
import info.flowersoft.theotown.tools.RocketAimTool;
import info.flowersoft.theotown.tools.SWATAlertTool;

/* JADX INFO: loaded from: classes4.dex */
public class ToolActionProvider extends TileInformationProvider {
    public Building building;

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void setContext(City city, int i, int i2) {
        super.setContext(city, i, i2);
        this.building = city.getTiles().getBuilding(i, i2);
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        return this.building != null;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public Action[] getActions() {
        Building building = this.building;
        if (building == null || !building.isWorking()) {
            return null;
        }
        if (this.building.getDraft().id.equals("$mltry_rocketlauncher00") && !this.city.isReadonly()) {
            RocketAimTool rocketAimTool = new RocketAimTool();
            rocketAimTool.addLauncher(this.building);
            return new Action[]{new ToolAction(Resources.ICON_RED_BUTTON, "launch_rocket", rocketAimTool, this.city)};
        }
        int i = AnonymousClass1.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[this.building.getBuildingType().ordinal()];
        if (i == 1) {
            return new Action[]{new ToolAction(Resources.ICON_CALL_FIREDEPARTMENT, FireBrigadeAlertTool.getAlertId(), new FireBrigadeAlertTool(), this.city)};
        }
        if (i == 2) {
            return new Action[]{new ToolAction(Resources.ICON_CALL_POLICE, PoliceAlertTool.getAlertId(), new PoliceAlertTool(), this.city)};
        }
        if (i == 3) {
            return new Action[]{new ToolAction(Resources.ICON_CALL_MEDIC, MedicAlertTool.getAlertId(), new MedicAlertTool(), this.city)};
        }
        if (i != 4) {
            return null;
        }
        return new Action[]{new ToolAction(Resources.FRAME_LOCATE_SWAT_ALERT, SWATAlertTool.getAlertId(), new SWATAlertTool(), this.city)};
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.tiledialog.ToolActionProvider$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.FIRE_BRIGADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.POLICE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.MEDIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.SWAT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }
}
