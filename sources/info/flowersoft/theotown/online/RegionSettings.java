package info.flowersoft.theotown.online;

import info.flowersoft.theotown.region.RegionIcon;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class RegionSettings {
    public boolean allowPlugins;
    public boolean allowSandbox;
    public RegionTagMap availableTags;
    public boolean enforcePassword;
    public boolean hasPasswordDefined;
    public RegionIcon icon;
    public String infos;
    public String password = "";
    public String rules;
    public IntList tags;
    public int winter;

    public RegionSettings(VirtualRegion virtualRegion, RegionTagMap regionTagMap) {
        this.icon = RegionIcon.Companion.resolveOrDefault(virtualRegion.getIcon());
        this.allowPlugins = virtualRegion.isAllowPlugins();
        this.allowSandbox = virtualRegion.isAllowSandbox();
        this.rules = virtualRegion.getRules();
        this.infos = virtualRegion.getInfos();
        this.hasPasswordDefined = virtualRegion.hasPasswordDefined();
        this.enforcePassword = virtualRegion.isPasswordEnforced();
        this.winter = virtualRegion.getWinter();
        this.tags = new IntList((int[]) virtualRegion.getTags().clone());
        this.availableTags = regionTagMap;
        virtualRegion.getExtra();
    }

    public JSONObject getExtra() {
        return new JSONObject();
    }

    public boolean equals(Object obj) {
        if (obj instanceof RegionSettings) {
            RegionSettings regionSettings = (RegionSettings) obj;
            if (this.icon == regionSettings.icon && this.allowPlugins == regionSettings.allowPlugins && this.allowSandbox == regionSettings.allowSandbox && this.rules.equals(regionSettings.rules) && this.infos.equals(regionSettings.infos) && this.hasPasswordDefined == regionSettings.hasPasswordDefined && this.enforcePassword == regionSettings.enforcePassword && this.password.equals(regionSettings.password) && this.winter == regionSettings.winter && this.tags.equals(regionSettings.tags)) {
                return true;
            }
        }
        return false;
    }
}
