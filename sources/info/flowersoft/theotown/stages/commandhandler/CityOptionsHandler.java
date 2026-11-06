package info.flowersoft.theotown.stages.commandhandler;

import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.util.Setter;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CityOptionsHandler.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class CityOptionsHandler implements CommandHandler {
    public final City city;
    public final Map<String, Function1<JSONObject, String>> commands;

    public CityOptionsHandler(City city) {
        Intrinsics.checkNotNullParameter(city, "city");
        this.city = city;
        this.commands = new LinkedHashMap();
        addBoolean("leftSideTraffic", new Function1() { // from class: info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CityOptionsHandler._init_$lambda$0(this.f$0, (Boolean) obj);
            }
        });
    }

    public static final String _init_$lambda$0(CityOptionsHandler cityOptionsHandler, Boolean bool) {
        if (bool != null) {
            boolean zIsLeftSideTraffic = cityOptionsHandler.city.isLeftSideTraffic();
            cityOptionsHandler.city.setLeftSideTraffic(bool.booleanValue());
            return zIsLeftSideTraffic + " -> " + bool.booleanValue() + "; You have to reload the city to see an effect";
        }
        return String.valueOf(cityOptionsHandler.city.isLeftSideTraffic());
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public boolean canHandle(String cmd) {
        Intrinsics.checkNotNullParameter(cmd, "cmd");
        return this.commands.containsKey(cmd);
    }

    @Override // info.flowersoft.theotown.stages.commandhandler.CommandHandler
    public void handle(JSONObject src, String cmd, Setter<String> feedback) {
        Intrinsics.checkNotNullParameter(src, "src");
        Intrinsics.checkNotNullParameter(cmd, "cmd");
        Intrinsics.checkNotNullParameter(feedback, "feedback");
        Function1<JSONObject, String> function1 = this.commands.get(cmd);
        Intrinsics.checkNotNull(function1);
        String strInvoke = function1.invoke(src);
        if (strInvoke != null) {
            feedback.set(strInvoke);
        }
    }

    public final void add(String str, Function1<? super JSONObject, String> function1) {
        if (this.commands.containsKey(str)) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.commands.put(str, function1);
    }

    public final void addBoolean(final String str, final Function1<? super Boolean, String> function1) {
        add(str, new Function1() { // from class: info.flowersoft.theotown.stages.commandhandler.CityOptionsHandler$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return CityOptionsHandler.add$lambda$0(str, function1, (JSONObject) obj);
            }
        });
    }

    public static final String add$lambda$0(String str, Function1 function1, JSONObject src) {
        Intrinsics.checkNotNullParameter(src, "src");
        if (src.optJSONObject(str) != null) {
            return (String) function1.invoke(null);
        }
        if (src.opt(str) instanceof Boolean) {
            return (String) function1.invoke(Boolean.valueOf(src.getBoolean(str)));
        }
        return "Expected boolean parameter `true` or `false`";
    }
}
