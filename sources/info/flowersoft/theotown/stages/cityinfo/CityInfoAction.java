package info.flowersoft.theotown.stages.cityinfo;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.components.NotificationAction;

/* JADX INFO: loaded from: classes4.dex */
public class CityInfoAction extends NotificationAction {
    public final CityInfo type;

    public CityInfoAction(CityInfo cityInfo, City city) {
        super(cityInfo.getIcon(), cityInfo.getTitleId(city), new Runnable() { // from class: info.flowersoft.theotown.stages.cityinfo.CityInfoAction.1
            @Override // java.lang.Runnable
            public void run() {
            }
        }, "cmd" + cityInfo.getTag());
        this.type = cityInfo;
    }

    @Override // info.flowersoft.theotown.city.components.NotificationAction
    public void setAction(Runnable runnable) {
        this.action = runnable;
    }

    public CityInfo getType() {
        return this.type;
    }
}
