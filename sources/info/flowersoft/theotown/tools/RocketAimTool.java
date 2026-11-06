package info.flowersoft.theotown.tools;

import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.Direction;
import info.flowersoft.theotown.city.Drawer;
import info.flowersoft.theotown.city.objects.Building;
import info.flowersoft.theotown.city.toolaction.ToolAction;
import info.flowersoft.theotown.components.DefaultCatastrophe;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.components.disaster.UfoDisaster;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.DraftLocalizer;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.util.ScreenRect;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class RocketAimTool extends DefaultTool {
    public DefaultDate date;
    public int lastLaunch;
    public UfoDisaster.Ufo targetUfo;
    public float targetX;
    public float targetY;
    public UfoDisaster ufoDisaster;
    public List<Building> launchers = new ArrayList();
    public AnimationDraft aimDraft = (AnimationDraft) Drafts.ALL.get("$mltry_aim00");

    @Override // info.flowersoft.theotown.city.components.Tool
    public boolean ensureValidPosition() {
        return false;
    }

    public RocketAimTool() {
        this.actions.add(new ToolAction() { // from class: info.flowersoft.theotown.tools.RocketAimTool.1
            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public int getIcon() {
                return Resources.ICON_RED_BUTTON;
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getId() {
                return "cmdLaunchRocket";
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public void onClick() {
                RocketAimTool.this.launch();
            }

            @Override // info.flowersoft.theotown.city.toolaction.ToolAction
            public String getName() {
                return RocketAimTool.this.city.getTranslator().translate(1303);
            }
        });
    }

    public void addLauncher(Building building) {
        this.launchers.add(building);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getId() {
        return "RocketAim";
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void bind(City city) {
        super.bind(city);
        this.date = (DefaultDate) city.getComponent(1);
        this.ufoDisaster = (UfoDisaster) ((DefaultCatastrophe) city.getComponent(6)).getDisaster(UfoDisaster.class);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public void onClick(int i, int i2, float f, float f2, int i3, int i4) {
        launch();
    }

    public final void launch() {
        int animationTime = this.date.getAnimationTime();
        if (this.lastLaunch != animationTime) {
            for (int i = 0; i < this.launchers.size(); i++) {
                launch(this.launchers.get(i));
            }
            this.lastLaunch = animationTime;
        }
    }

    public final void launch(Building building) {
        if (isLaunchable(building)) {
            int iFromIndex = Direction.fromIndex(building.getFrame());
            float fDifferenceX = Direction.differenceX(iFromIndex);
            float fDifferenceY = Direction.differenceY(iFromIndex);
            float x = (fDifferenceX * 1.05f) + building.getX() + (building.getWidth() / 2.0f);
            float y = building.getY() + (building.getHeight() / 2.0f) + (1.05f * fDifferenceY);
            float maxTerrainLevel = (building.getMaxTerrainLevel() * 12) + 29;
            float f = this.targetX;
            float f2 = this.targetY;
            float terrainAvgHeight = this.city.isValid((int) f, (int) f2) ? this.tiles.getTerrainAvgHeight((int) this.targetX, (int) this.targetY) * 12.0f : UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
            UfoDisaster.Ufo ufo = this.targetUfo;
            if (ufo != null) {
                terrainAvgHeight = ufo.height;
            }
            this.ufoDisaster.addRocket(x, y, maxTerrainLevel, fDifferenceX, fDifferenceY, 8.0f, f, f2, terrainAvgHeight);
        }
    }

    public final boolean isLaunchable(Building building) {
        return Math.max(Math.abs((this.targetX - ((float) building.getX())) - (((float) building.getWidth()) / 2.0f)), Math.abs((this.targetY - ((float) building.getY())) - (((float) building.getHeight()) / 2.0f))) > 2.0f;
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool
    public String getName() {
        return new DraftLocalizer(this.city).getTitle("launch_rocket");
    }

    public void update(Building building) {
        ScreenRect view = this.city.getIsoConverter().getView();
        float fAbsToIsoX = this.city.getIsoConverter().absToIsoX(view.getWidth() / 2.0f, view.getHeight() / 2.0f);
        float fAbsToIsoY = this.city.getIsoConverter().absToIsoY(view.getWidth() / 2.0f, view.getHeight() / 2.0f);
        UfoDisaster.Ufo ufoAt = this.ufoDisaster.getUfoAt(view.getWidth() / 2.0f, view.getHeight() / 2.0f);
        this.targetUfo = ufoAt;
        if (ufoAt == null) {
            this.targetX = this.city.rotatedToOriginalX(fAbsToIsoX, fAbsToIsoY);
            this.targetY = this.city.rotatedToOriginalY(fAbsToIsoX, fAbsToIsoY);
        } else {
            this.targetX = ufoAt.x;
            this.targetY = ufoAt.y;
        }
        float x = (this.targetX - building.getX()) - (building.getWidth() / 2.0f);
        float y = (this.targetY - building.getY()) - (building.getHeight() / 2.0f);
        building.setFrame(Math.abs(x) >= Math.abs(y) ? x > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? 0 : 2 : y > UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT ? 1 : 3);
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.Tool, info.flowersoft.theotown.city.components.CityComponent
    public void update() {
        super.update();
        int i = 0;
        while (i < this.launchers.size()) {
            Building building = this.launchers.get(i);
            if (this.tiles.getBuilding(building.getX(), building.getY()) != building || !building.isWorking()) {
                this.launchers.remove(i);
                i--;
            } else {
                update(building);
            }
            i++;
        }
        if (this.launchers.isEmpty()) {
            City city = this.city;
            city.applyComponent(city.getDefaultTool());
        }
    }

    @Override // info.flowersoft.theotown.tools.DefaultTool, info.flowersoft.theotown.city.components.CityComponent
    public void drawAfter(Drawer drawer) {
        super.drawAfter(drawer);
        Engine engine = drawer.engine;
        ScreenRect view = this.city.getIsoConverter().getView();
        engine.setScale(1.0f, 1.0f);
        engine.drawImage(Resources.IMAGE_WORLD, view.getX(), view.getY(), view.getWidth(), view.getHeight(), this.aimDraft.frames[2]);
        engine.drawImage(Resources.IMAGE_WORLD, view.getX() + (view.getWidth() / 2.0f), view.getY() + (view.getHeight() / 2.0f), this.aimDraft.frames[this.targetUfo != null ? (char) 1 : (char) 0]);
    }
}
