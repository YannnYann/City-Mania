package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.ScrollableTextFrame;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.ElementLine;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.Panel;

/* JADX INFO: loaded from: classes4.dex */
public class SystemInfoStage extends BaseStage {
    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
    }

    public SystemInfoStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        Panel panel = new Panel(0, 0, this.gui.getClientWidth(), this.gui.getClientHeight(), this.gui);
        panel.setPadding(2);
        new Label("System Information", 0, 0, 0, 20, panel).setFont(Resources.skin.fontBig);
        StringBuilder sb = new StringBuilder();
        sb.append("Supports fullscreen: ");
        sb.append(TheoTown.runtimeFeatures.supportsFullscreen());
        sb.append('\n');
        sb.append("Offline mode: ");
        sb.append(TheoTown.gamesService.isOfflineMode());
        sb.append('\n');
        sb.append("System properties:");
        sb.append('\n');
        for (Object obj : System.getProperties().keySet()) {
            String property = System.getProperty((String) obj);
            sb.append(obj);
            sb.append(" = ");
            sb.append(property);
            sb.append('\n');
        }
        new ScrollableTextFrame(sb.toString(), 0, 20, panel.getClientWidth(), panel.getClientHeight() - 50, panel).setFont(Resources.skin.fontSmall);
        new IconButton(Resources.ICON_CANCEL, this.translator.translate(1477), 0, 0, 0, 30, new ElementLine(0, 1, 0, panel.getClientHeight() - 30, panel.getClientWidth(), 30, panel).getThirdPart()) { // from class: info.flowersoft.theotown.stages.SystemInfoStage.1
            @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
            public void onClick() {
                super.onClick();
                SystemInfoStage.this.getGameStack().pop();
            }
        };
    }

    public String toString() {
        return "SystemInfoStage";
    }
}
