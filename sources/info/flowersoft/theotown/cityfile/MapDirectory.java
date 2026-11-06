package info.flowersoft.theotown.cityfile;

import info.flowersoft.theotown.cityloader.CityKeeper;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public abstract class MapDirectory {
    public Stapel2DGameContext context;
    public File dir;
    public final List<CityKeeper> maps = new ArrayList();
    public String password = "";

    public abstract boolean canReset(CityKeeper cityKeeper);

    public abstract float getLoadingProgress();

    public abstract RegionInformation getRegionInformation();

    public abstract boolean isLoaded();

    public abstract boolean isOnline();

    public abstract void loadMaps(Runnable runnable, Setter<String> setter);

    public abstract boolean loadingFailed();

    public abstract boolean requiresPassword();

    public abstract boolean reset(CityKeeper cityKeeper);

    public abstract boolean saveRegionInformation(RegionInformation regionInformation);

    public abstract void update();

    public MapDirectory(Stapel2DGameContext stapel2DGameContext) {
        this.context = stapel2DGameContext;
    }

    public File getDirectory() {
        return this.dir;
    }

    public CityKeeper getMap(File file) {
        for (CityKeeper cityKeeper : this.maps) {
            try {
            } catch (IOException e) {
                e.printStackTrace();
            }
            if (cityKeeper.getFile().getCanonicalPath().equals(file.getCanonicalPath())) {
                return cityKeeper;
            }
        }
        return null;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String str) {
        this.password = str;
    }

    public List<CityKeeper> getMaps() {
        return this.maps;
    }

    public CityKeeper getMapByScenarioId(String str) {
        if (str != null && !str.isEmpty()) {
            for (CityKeeper cityKeeper : this.maps) {
                if (cityKeeper.getInfo().getScenarioId().equals(str)) {
                    return cityKeeper;
                }
            }
        }
        return null;
    }

    public CityKeeper getMapByFileName(String str) {
        for (CityKeeper cityKeeper : this.maps) {
            if (cityKeeper.getFile().getName().equals(str)) {
                return cityKeeper;
            }
        }
        return null;
    }

    public boolean isNameInUse(String str) {
        Iterator<CityKeeper> it = this.maps.iterator();
        while (it.hasNext()) {
            if (it.next().getInfo().getName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isValidRegionCityFileName(String str) {
        return str.matches("-?\\d+_-?\\d+(_-?\\d+)?\\.city");
    }
}
