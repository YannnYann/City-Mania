package info.flowersoft.theotown.stages.tiledialog;

import info.flowersoft.theotown.components.DefaultTraffic;
import info.flowersoft.theotown.components.traffic.CarTrafficHandler;
import info.flowersoft.theotown.components.traffic.carcontroller.TankController;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;

/* JADX INFO: loaded from: classes4.dex */
public class MilitaryInformation extends AbstractBuildingInformation {
    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean isMutualExclusive() {
        return false;
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public boolean canHandle() {
        BuildingDraft buildingDraft = this.draft;
        return buildingDraft != null && buildingDraft.id.equals("$mltry_hq00");
    }

    @Override // info.flowersoft.theotown.stages.tiledialog.TileInformationProvider
    public void finish(Dialog dialog, Stapel2DGameContext stapel2DGameContext, Setter<Stage> setter) {
        final TankController tankController;
        if (this.city.isReadonly() || (tankController = (TankController) ((CarTrafficHandler) ((DefaultTraffic) this.city.getComponent(7)).getTrafficHandler(CarTrafficHandler.class)).getCarController(TankController.class)) == null) {
            return;
        }
        new IconButton(Resources.PEOPLE_GENERAL, this.translator.translate(3477), 0, 0, 0, dialog.getControlLine().getClientHeight(), dialog.getControlLine().getThirdPart()) { // from class: info.flowersoft.theotown.stages.tiledialog.MilitaryInformation.1
            @Override // io.blueflower.stapel2d.gui.Button
            public boolean isPressed() {
                return tankController.onPatrol();
            }

            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                tankController.setPatrol(!r0.onPatrol());
            }
        };
    }
}
