package info.flowersoft.theotown.components.traffic.flyingobjectcontroller;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.Tool;
import info.flowersoft.theotown.city.objects.FlyingObject;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.util.ScreenRecorder;

/* JADX INFO: loaded from: classes4.dex */
public class TestHelicopterController extends SimpleHelicopterController {
    public boolean initiated;

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController
    public void finishedFlightCommand(FlyingObject flyingObject) {
    }

    public TestHelicopterController(City city, FlyingObjectSpawner flyingObjectSpawner) {
        super(city, flyingObjectSpawner);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.SimpleHelicopterController, info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public void update() {
        super.update();
        if (ScreenRecorder.getInstance().isActive()) {
            if (this.initiated || this.city.getDefaultTool() == null) {
                return;
            }
            if (this.flyingObjects.isEmpty()) {
                create(Drafts.FLYINGS.get(0), 16, 16);
            }
            this.city.getDefaultTool().registerClickListener(new Tool.ClickListener() { // from class: info.flowersoft.theotown.components.traffic.flyingobjectcontroller.TestHelicopterController$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.city.components.Tool.ClickListener
                public final void onClick(Tool tool, int i, int i2, int i3, int i4) {
                    TestHelicopterController.$r8$lambda$4IVAK8gXarWVCHBhaNpsvwo5pgQ(this.f$0, tool, i, i2, i3, i4);
                }
            });
            this.initiated = true;
            return;
        }
        if (this.flyingObjects.isEmpty()) {
            return;
        }
        this.spawner.remove(this.flyingObjects.get(0));
    }

    public static /* synthetic */ void $r8$lambda$4IVAK8gXarWVCHBhaNpsvwo5pgQ(TestHelicopterController testHelicopterController, Tool tool, int i, int i2, int i3, int i4) {
        if (testHelicopterController.flyingObjects.isEmpty()) {
            return;
        }
        boolean z = false;
        FlyingObject flyingObject = testHelicopterController.flyingObjects.get(0);
        if (testHelicopterController.city.getTileHeight(i, i2) == 0 && !testHelicopterController.city.getTiles().isGroundWater(i, i2)) {
            z = true;
        }
        testHelicopterController.flyTo(flyingObject, i, i2, z);
    }

    @Override // info.flowersoft.theotown.components.traffic.flyingobjectcontroller.FlyingObjectController
    public String getTag() {
        return "test helicopter";
    }
}
