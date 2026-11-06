package info.flowersoft.theotown.city;

import info.flowersoft.theotown.draft.ZoneDraft;

/* JADX INFO: loaded from: classes4.dex */
public final class Zones {
    public static Zones instance;
    public ZoneDraft AIRPORT;
    public ZoneDraft COMMERCIAL0;
    public ZoneDraft COMMERCIAL1;
    public ZoneDraft DECORATION;
    public ZoneDraft DESTROYED;
    public ZoneDraft FARM;
    public ZoneDraft HARBOR;
    public ZoneDraft INDUSTRIAL0;
    public ZoneDraft INDUSTRIAL1;
    public ZoneDraft MILITARY;
    public ZoneDraft OTHER;
    public ZoneDraft RESIDENTIAL0;
    public ZoneDraft RESIDENTIAL1;

    public static Zones getInstance() {
        if (instance == null) {
            instance = new Zones();
        }
        return instance;
    }

    public static void dispose() {
        instance = null;
    }

    public void register(ZoneDraft zoneDraft) {
        String str = zoneDraft.id;
        str.getClass();
        switch (str) {
            case "$zonedecoration":
                this.DECORATION = zoneDraft;
                break;
            case "$zonedestroyed":
                this.DESTROYED = zoneDraft;
                break;
            case "$zoneharbor":
                this.HARBOR = zoneDraft;
                break;
            case "$zonemilitary":
                this.MILITARY = zoneDraft;
                break;
            case "$zonecommercial":
                this.COMMERCIAL0 = zoneDraft;
                break;
            case "$zonefarm":
                this.FARM = zoneDraft;
                break;
            case "$zoneindustrial_lvl2":
                this.INDUSTRIAL1 = zoneDraft;
                break;
            case "$zoneresidential_lvl2":
                this.RESIDENTIAL1 = zoneDraft;
                break;
            case "$zoneindustrial":
                this.INDUSTRIAL0 = zoneDraft;
                break;
            case "$zonecommercial_lvl2":
                this.COMMERCIAL1 = zoneDraft;
                break;
            case "$zoneresidential":
                this.RESIDENTIAL0 = zoneDraft;
                break;
            case "$zoneairport":
                this.AIRPORT = zoneDraft;
                break;
            case "$zoneother":
                this.OTHER = zoneDraft;
                break;
        }
    }

    public ZoneDraft resolveRci(int i) {
        if (i == 0) {
            return this.RESIDENTIAL0;
        }
        if (i == 1) {
            return this.COMMERCIAL0;
        }
        if (i == 2) {
            return this.INDUSTRIAL0;
        }
        throw new IllegalArgumentException("Cannot resolve rci " + i);
    }
}
