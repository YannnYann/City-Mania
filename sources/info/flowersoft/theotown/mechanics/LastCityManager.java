package info.flowersoft.theotown.mechanics;

import com.badlogic.gdx.Gdx;
import com.vungle.ads.internal.protos.Sdk;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.city.GameMode;
import info.flowersoft.theotown.city.components.People;
import info.flowersoft.theotown.components.DefaultBudget;
import info.flowersoft.theotown.components.DefaultDate;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.util.SSP;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.util.IntList;

/* JADX INFO: loaded from: classes4.dex */
public class LastCityManager {
    public String lastCityName;
    public String lastCityPath;

    public void loadData(SSP.Reader reader) {
        this.lastCityPath = reader.getString("last city", "");
        this.lastCityName = reader.getString("last city name", "");
    }

    public void saveData(SSP.Writer writer) {
        writer.putString("last city", this.lastCityPath);
        writer.putString("last city name", this.lastCityName);
    }

    public void setLastCity(String str, String str2, boolean z) {
        String str3;
        String str4;
        if (str != null && !str.isEmpty()) {
            String path = TheoTown.APP_DIR.getPath();
            if (str.startsWith(path)) {
                str = str.substring(path.length() + 1);
            }
        }
        Gdx.app.debug("GameHandler", "Set last city to " + str2 + "@" + str);
        this.lastCityPath = str;
        this.lastCityName = str2;
        GameHandler gameHandler = GameHandler.getInstance();
        gameHandler.saveData();
        Translator translator = gameHandler.getTranslator();
        if (z) {
            str3 = StringFormatter.format(translator.translate(3050), str2);
            str4 = StringFormatter.format(translator.translate(1602), str2);
        } else {
            IntList intList = new IntList();
            IntList intList2 = new IntList();
            intList.add(2265);
            intList2.add(3300);
            intList.add(2525);
            intList2.add(734);
            intList.add(2776);
            intList2.add(1914);
            intList.add(799);
            intList2.add(1007);
            int iNextInt = Resources.RND.nextInt(intList.size());
            str3 = StringFormatter.format(translator.translate(intList.get(iNextInt)), str2);
            str4 = StringFormatter.format(translator.translate(intList2.get(iNextInt)), str2);
        }
        TheoTown.notifications.add("last city", str3, str4, 82800000L, 86400000L, 5);
    }

    public void submitCity(City city) {
        Translator translator = GameHandler.getInstance().getTranslator();
        switch (AnonymousClass1.$SwitchMap$info$flowersoft$theotown$city$GameMode[city.getGameMode().ordinal()]) {
            case 1:
            case 2:
            case 3:
                TheoTown.gamesService.submitScore(translator.translate(251), ((People) city.getComponent(9)).getPeople());
                TheoTown.gamesService.submitScore(translator.translate(3246), Math.round(((DefaultBudget) city.getComponent(0)).getEstate()));
                break;
            case 4:
            case 5:
            case 6:
                TheoTown.gamesService.submitScore(translator.translate(577), ((People) city.getComponent(9)).getPeople());
                break;
        }
        TheoTown.gamesService.submitScore(translator.translate(Sdk.SDKError.Reason.INVALID_CSB_DATA_VALUE), ((DefaultDate) city.getComponent(1)).getYear());
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.mechanics.LastCityManager$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$city$GameMode;

        static {
            int[] iArr = new int[GameMode.values().length];
            $SwitchMap$info$flowersoft$theotown$city$GameMode = iArr;
            try {
                iArr[GameMode.EASY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.MIDDLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.HARD.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.SANDBOX.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.NOLOGIC.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$city$GameMode[GameMode.FREE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public String getLastCityPath() {
        return this.lastCityPath;
    }
}
