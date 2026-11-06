package info.flowersoft.theotown.components.buildingcontroller;

/* JADX INFO: loaded from: classes4.dex */
public class FullSchoolController extends AbstractOverloadedAspectController {
    public FullSchoolController() {
        addAspect(0);
        addAspect(1);
    }

    @Override // info.flowersoft.theotown.components.buildingcontroller.BuildingController
    public String getTag() {
        return "full school";
    }
}
