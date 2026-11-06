package info.flowersoft.theotown.util;

import com.badlogic.gdx.utils.ObjectMap;
import com.ironsource.C3522b4;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.components.transition.TransitionRunner;
import info.flowersoft.theotown.draft.BuildingDraft;
import info.flowersoft.theotown.draft.BuildingType;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.store.ManagedPluginFile;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes4.dex */
public class DraftLocalizer {
    public static final Pattern PACKED_TRANSLATION_PATTERN = Pattern.compile("(^|\\[([a-zA-Z-]+)])([^\\[]*)");
    public City city;
    public String cityName;
    public TransitionRunner transitionRunner;
    public final Translator translator;

    public DraftLocalizer(Stapel2DGameContext stapel2DGameContext, String str) {
        this.translator = stapel2DGameContext.getTranslator();
        this.cityName = str;
    }

    public DraftLocalizer(City city) {
        this.translator = city.getTranslator();
        this.cityName = city.getName();
        this.city = city;
    }

    public void setCityName(String str) {
        this.cityName = str;
    }

    public String getTitle(Draft draft) {
        return getTitle(draft, null);
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.util.DraftLocalizer$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$draft$BuildingType;

        static {
            int[] iArr = new int[BuildingType.values().length];
            $SwitchMap$info$flowersoft$theotown$draft$BuildingType = iArr;
            try {
                iArr[BuildingType.RESIDENTIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.COMMERCIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.INDUSTRIAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.FARM.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.HARBOR_IND.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$draft$BuildingType[BuildingType.HARBOR_PIER.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public String getRCITypeName(BuildingType buildingType, int i) {
        switch (AnonymousClass1.$SwitchMap$info$flowersoft$theotown$draft$BuildingType[buildingType.ordinal()]) {
            case 1:
                if (i == 1) {
                    return this.translator.translate(2895);
                }
                if (i == 2) {
                    return this.translator.translate(2891);
                }
                if (i != 3) {
                    return null;
                }
                return this.translator.translate(2892);
            case 2:
                if (i == 1) {
                    return this.translator.translate(1228);
                }
                if (i == 2) {
                    return this.translator.translate(1227);
                }
                if (i != 3) {
                    return null;
                }
                return this.translator.translate(1226);
            case 3:
            case 4:
            case 5:
            case 6:
                if (i == 1) {
                    return this.translator.translate(1934);
                }
                if (i == 2) {
                    return this.translator.translate(1936);
                }
                if (i != 3) {
                    return null;
                }
                return this.translator.translate(1940);
            default:
                return null;
        }
    }

    public String getTitle(Draft draft, String str) {
        String str2 = draft.titleId;
        if (str2 != null) {
            return localizeKey(str2, "<" + draft.titleId + ">");
        }
        if ((draft instanceof BuildingDraft) && draft.title == null) {
            BuildingDraft buildingDraft = (BuildingDraft) draft;
            String rCITypeName = getRCITypeName(buildingDraft.buildingType, buildingDraft.level);
            if (rCITypeName != null) {
                return rCITypeName;
            }
        }
        String strLocalizeOrNull = localizeOrNull(processId(draft.getUnifiedId()), C3522b4.i.D0);
        if (strLocalizeOrNull == null) {
            strLocalizeOrNull = localizePacked(transformPluginStringByTranslation(draft, draft.title));
        }
        if (strLocalizeOrNull != null) {
            strLocalizeOrNull = interpolate(strLocalizeOrNull);
        }
        if (strLocalizeOrNull != null) {
            return strLocalizeOrNull;
        }
        if (str != null) {
            return str;
        }
        return "<" + getKey(draft.getUnifiedId(), C3522b4.i.D0) + ">";
    }

    public String getText(Draft draft) {
        String str = draft.textId;
        if (str != null) {
            return localizeKey(str, "<" + draft.textId + ">");
        }
        String strLocalizeOrNull = localizeOrNull(processId(draft.getUnifiedId()), C3522b4.i.K0);
        if (strLocalizeOrNull == null) {
            strLocalizeOrNull = localizePacked(transformPluginStringByTranslation(draft, draft.text));
        }
        if (strLocalizeOrNull != null) {
            strLocalizeOrNull = interpolate(strLocalizeOrNull);
        }
        if (strLocalizeOrNull != null) {
            return strLocalizeOrNull;
        }
        return "<" + getKey(draft.getUnifiedId(), C3522b4.i.K0) + ">";
    }

    public final String transformPluginStringByTranslation(Draft draft, String str) {
        int i;
        ManagedPluginFile managedPluginFile;
        return (!Settings.translatePlugins || str == null || !draft.plugin || (i = draft.pluginId) <= 0 || (managedPluginFile = Drafts.LOADED_PLUGINS_BY_ID.get(i)) == null || !managedPluginFile.hasTranslations()) ? str : managedPluginFile.translateInline(str);
    }

    public String getTitle(String str) {
        return localizeNotNull(processId(str), C3522b4.i.D0);
    }

    public String getText(String str) {
        return localizeNotNull(processId(str), C3522b4.i.K0);
    }

    public final String processId(String str) {
        if (!str.startsWith("deco")) {
            return str;
        }
        return str.substring(0, str.length() - 2) + "00";
    }

    public final String getKey(String str, String str2) {
        return "draft_" + str.replaceAll("\\$", "") + "_" + str2;
    }

    public final String localizeNotNull(String str, String str2) {
        String strLocalizeOrNull = localizeOrNull(str, str2);
        if (strLocalizeOrNull != null) {
            return strLocalizeOrNull;
        }
        return "<" + getKey(str, C3522b4.i.K0) + ">";
    }

    public final String localizeOrNull(String str, String str2) {
        String strLocalizeKey = localizeKey(getKey(str, str2), null);
        if (strLocalizeKey == null) {
            return null;
        }
        return StringFormatter.format(strLocalizeKey, this.cityName);
    }

    public String localizeKey(String str, String str2) {
        String str_translate = this.translator._translate(str);
        if (str_translate != null) {
            return interpolate(str_translate);
        }
        return interpolate(str2);
    }

    public final String interpolate(String str) {
        if (str == null || !TransitionRunner.isInterpolatedString(str) || this.city == null) {
            return str;
        }
        if (this.transitionRunner == null) {
            this.transitionRunner = new TransitionRunner(this.city);
        }
        return this.transitionRunner.interpolateString(str);
    }

    public String localizePacked(String str) {
        if (str == null || str.isEmpty()) {
            return str;
        }
        if (!str.contains(C3522b4.j.d) || !str.contains(C3522b4.j.e)) {
            return StringFormatter.format(str, this.cityName);
        }
        Matcher matcher = PACKED_TRANSLATION_PATTERN.matcher(str);
        ObjectMap objectMap = new ObjectMap();
        String str2 = null;
        while (matcher.find()) {
            String strGroup = matcher.group(2);
            String strGroup2 = matcher.group(3);
            if (strGroup == null) {
                str2 = strGroup2;
            } else {
                objectMap.put(strGroup.toLowerCase(Locale.ENGLISH), strGroup2);
            }
        }
        Locale locale = this.translator.getLocale();
        String str3 = (String) objectMap.get("native");
        String strLocalizeKey = str3 != null ? localizeKey(str3, null) : null;
        if (strLocalizeKey == null) {
            strLocalizeKey = (String) objectMap.get((locale.getLanguage() + "-" + locale.getCountry()).toLowerCase(Locale.ENGLISH));
        }
        if (strLocalizeKey == null) {
            strLocalizeKey = (String) objectMap.get(locale.getLanguage().toLowerCase(Locale.ENGLISH));
        }
        if (strLocalizeKey == null) {
            Locale locale2 = Locale.ENGLISH;
            strLocalizeKey = (String) objectMap.get((locale2.getLanguage() + "-" + locale2.getCountry()).toLowerCase(locale2));
            if (strLocalizeKey == null) {
                strLocalizeKey = (String) objectMap.get(locale2.getLanguage().toLowerCase(locale2));
            }
        }
        if (strLocalizeKey != null) {
            str2 = strLocalizeKey;
        }
        if (str2 == null) {
            return "";
        }
        return !str2.isEmpty() ? StringFormatter.format(str2, this.cityName) : str2;
    }
}
