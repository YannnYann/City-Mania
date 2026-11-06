package info.flowersoft.theotown.draft;

import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public enum BuildingType {
    RESIDENTIAL("residential", Drafts.RESIDENTIALS, Resources.ICON_RESIDENTIAL, true, "$cat_residential00"),
    COMMERCIAL("commercial", Drafts.COMMERCIALS, Resources.ICON_COMMERCIAL, true, "$cat_commercial00"),
    INDUSTRIAL("industrial", Drafts.INDUSTRIALS, Resources.ICON_INDUSTRIAL, true, "$cat_industrial00"),
    FARM("farm", Drafts.FARMS, Resources.ICON_FARM, true, "$cat_industrial00") { // from class: info.flowersoft.theotown.draft.BuildingType.1
        @Override // info.flowersoft.theotown.draft.BuildingType
        public BuildingType getBaseType() {
            return BuildingType.INDUSTRIAL;
        }
    },
    HARBOR_IND("harbor ind", Drafts.HARBORS, Resources.ICON_HARBOR, true, "$cat_industrial00") { // from class: info.flowersoft.theotown.draft.BuildingType.2
        @Override // info.flowersoft.theotown.draft.BuildingType
        public BuildingType getBaseType() {
            return BuildingType.INDUSTRIAL;
        }
    },
    HARBOR_PIER("harbor pier", Drafts.HARBOR_PIERS, Resources.ICON_HARBOR, true, "$cat_industrial00") { // from class: info.flowersoft.theotown.draft.BuildingType.3
        @Override // info.flowersoft.theotown.draft.BuildingType
        public BuildingType getBaseType() {
            return BuildingType.INDUSTRIAL;
        }
    },
    PARK("park", Drafts.PARKS, Resources.ICON_PARK, "$cat_park00"),
    SPORT("sport", Drafts.SPORTS, Resources.ICON_SPORTS, "$cat_sport00"),
    PUBLIC("public", Drafts.PUBLICS, Resources.ICON_PUBLIC, "$cat_management00"),
    RELIGION("religion", Drafts.RELIGIONS, Resources.ICON_RELIGION, "$cat_religion00"),
    AWARD("award", Drafts.AWARDS, Resources.ICON_AWARD, "$cat_award00"),
    ENERGY("energy", Drafts.ENERGY, Resources.ICON_ENERGY, "$cat_energy00"),
    WATER("water", Drafts.WATER, Resources.ICON_WATER, "$cat_water00"),
    MEDIC("medic", Drafts.MEDIC, Resources.ICON_MEDIC, "$cat_medic00"),
    POLICE("police", Drafts.POLICE, Resources.ICON_POLICE, "$cat_police00"),
    SWAT("swat", Drafts.SWAT, Resources.ICON_POLICE, "$cat_police00"),
    FIRE_BRIGADE("fire brigade", Drafts.FIREBRIGADE, Resources.ICON_FIREDEPARTMENT, "$cat_firebrigade00"),
    EDUCATION("education", Drafts.EDUCATION, Resources.ICON_EDUCATION, "$cat_education00"),
    BUS_DEPOT("bus depot", null, Resources.ICON_BUS_TRANSPORT, "$cat_road00"),
    DESTROYED("destroyed", null, Resources.ICON_REMOVE, null),
    DECORATION("decoration", Drafts.DECORATION, Resources.ICON_DECORATION, true, "$cat_decoration00"),
    BUOY("buoy", Drafts.BUOY, Resources.ICON_HARBOR, "$cat_transport00"),
    RAILWAY_STATION("railway station", Drafts.RAILWAY_STATION, Resources.ICON_PUBLICTRANSPORT, "$cat_road00"),
    WASTE_DISPOSAL("waste disposal", Drafts.WASTE_DISPOSAL, Resources.ICON_WASTE_DISPOSAL, "$cat_wastedisposal00"),
    BODY_DISPOSAL("body disposal", Drafts.BODY_DISPOSAL, Resources.ICON_BODY_DISPOSAL, "$cat_bodydisposal00"),
    MILITARY("military", Drafts.MILITARY, Resources.ICON_MILITARY, "$cat_military00"),
    AIRPORT("airport", Drafts.AIRPORT, Resources.ICON_AIRPORT, "$cat_airport00"),
    OTHER("building", null, Resources.ICON_CANCEL, null),
    TERRAIN("terrain", Drafts.TERRAIN, Resources.ICON_TERRAIN, "$cat_terrain00"),
    LANDMARK("landmark", Drafts.LANDMARK, Resources.ICON_LANDMARK, "$cat_landmark00");

    public static BuildingType[] cachedValues;
    public static Map<String, BuildingType> tagToType;
    public final String categoryId;
    public final int icon;
    public final List<BuildingDraft> list;
    public final String nameTag;
    public final boolean rci;

    public BuildingType getBaseType() {
        return this;
    }

    BuildingType(String str, List list, int i, boolean z, String str2) {
        this.nameTag = str;
        this.list = list;
        this.icon = i;
        this.rci = z;
        this.categoryId = str2;
    }

    BuildingType(String str, List list, int i, String str2) {
        this(str, list, i, false, str2);
    }

    public String getNameTag() {
        return this.nameTag;
    }

    public List<BuildingDraft> getList() {
        return this.list;
    }

    public int getIcon() {
        return this.icon;
    }

    public boolean isRCIOrDeco() {
        return this.rci;
    }

    public boolean isRCINotDeco() {
        return this.rci && this != DECORATION;
    }

    public String getCategoryId() {
        return this.categoryId;
    }

    public static BuildingType fromTag(String str) {
        if (tagToType == null) {
            tagToType = new HashMap();
            for (BuildingType buildingType : values()) {
                tagToType.put(buildingType.getNameTag(), buildingType);
            }
        }
        if (tagToType.containsKey(str)) {
            return tagToType.get(str);
        }
        return null;
    }

    public static BuildingType[] cachedValues() {
        if (cachedValues == null) {
            cachedValues = values();
        }
        return cachedValues;
    }
}
