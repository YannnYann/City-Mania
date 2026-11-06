package info.flowersoft.theotown.ui;

import com.google.android.gms.ads.AdSize;
import com.ironsource.C3878ud;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.InternetTime;
import info.flowersoft.theotown.resources.PersistentData;
import info.flowersoft.theotown.ui.BuyOrVideoDialog;
import info.flowersoft.theotown.ui.SpendDiamondsButton;
import info.flowersoft.theotown.util.json.JSONArray;
import info.flowersoft.theotown.util.json.JSONException;
import info.flowersoft.theotown.util.json.JSONObject;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.Translator;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Setter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class BuyOrVideoDialog extends Dialog {
    public final String adPlacementName;
    public final Stapel2DGameContext context;
    public GoldButton diamondButton;
    public final String id;
    public final Setter<Stage> stageVisitor;
    public final Translator translator;
    public static final Map<String, List<Long>> adPlacementTimes = new HashMap();
    public static final Map<String, Integer> placementCaps = new HashMap();
    public static final Map<String, Integer> placementCapTimes = new HashMap();

    public static /* synthetic */ void $r8$lambda$Via4gft4PokW9Dz1k897Pn42orU() {
    }

    public static /* synthetic */ void $r8$lambda$tZda7jD6YvyJQ1QMNNl1gbzVB34(boolean z) {
    }

    public static long combinePriceAndFlags(int i, int i2) {
        return (((long) i2) << 32) | (((long) i) & 4294967295L);
    }

    public static int widthForText(String str, boolean z) {
        return (str.length() >= 80 || str.contains("\n")) ? 300 : 260;
    }

    public static int heightForText(String str) {
        if (str.length() >= 80 || str.contains("\n")) {
            return AdSize.WIDE_SKYSCRAPER_WIDTH;
        }
        return 120;
    }

    public BuyOrVideoDialog(int i, String str, String str2, Master master, long j, final Getter<Boolean> getter, Setter<Stage> setter, Stapel2DGameContext stapel2DGameContext, String str3, String str4, boolean z) {
        this(i, str, str2, master, j, new SpendDiamondsButton.SuccessHandler() { // from class: info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda2
            @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler
            public final void handle(SpendDiamondsButton.HandlerReporter handlerReporter) {
                handlerReporter.report(((Boolean) getter.get()).booleanValue());
            }
        }, setter, stapel2DGameContext, str3, str4, z);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0152  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public BuyOrVideoDialog(int r20, java.lang.String r21, java.lang.String r22, io.blueflower.stapel2d.gui.Master r23, long r24, final info.flowersoft.theotown.ui.SpendDiamondsButton.SuccessHandler r26, io.blueflower.stapel2d.util.Setter<io.blueflower.stapel2d.gamestack.Stage> r27, final io.blueflower.stapel2d.gamestack.Stapel2DGameContext r28, final java.lang.String r29, final java.lang.String r30, boolean r31) {
        /*
            Method dump skipped, instruction units count: 422
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.ui.BuyOrVideoDialog.<init>(int, java.lang.String, java.lang.String, io.blueflower.stapel2d.gui.Master, long, info.flowersoft.theotown.ui.SpendDiamondsButton$SuccessHandler, io.blueflower.stapel2d.util.Setter, io.blueflower.stapel2d.gamestack.Stapel2DGameContext, java.lang.String, java.lang.String, boolean):void");
    }

    /* JADX INFO: renamed from: $r8$lambda$hHz0QCmQpZa-DpwY8goDllK_0_4, reason: not valid java name */
    public static /* synthetic */ void m2366$r8$lambda$hHz0QCmQpZaDpwY8goDllK_0_4(BuyOrVideoDialog buyOrVideoDialog, String str, Stapel2DGameContext stapel2DGameContext, SpendDiamondsButton.SuccessHandler successHandler, String str2) {
        buyOrVideoDialog.getClass();
        registerSuccessfulAd(str, stapel2DGameContext);
        successHandler.handle(new SpendDiamondsButton.HandlerReporter() { // from class: info.flowersoft.theotown.ui.BuyOrVideoDialog$$ExternalSyntheticLambda3
            @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter
            public final void report(boolean z) {
                BuyOrVideoDialog.$r8$lambda$tZda7jD6YvyJQ1QMNNl1gbzVB34(z);
            }
        });
        buyOrVideoDialog.setVisible(false);
        TheoTown.analytics.logEvent("Video " + str2, "Watched ad", "");
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.ui.BuyOrVideoDialog$2, reason: invalid class name */
    public class AnonymousClass2 extends IconButton {
        public final /* synthetic */ SpendDiamondsButton.SuccessHandler val$successHandler;

        /* JADX INFO: renamed from: $r8$lambda$moZ-OpuI2XNfRWXJlRlm_jycuoM, reason: not valid java name */
        public static /* synthetic */ void m2367$r8$lambda$moZOpuI2XNfRWXJlRlm_jycuoM(boolean z) {
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(int i, String str, int i2, int i3, int i4, int i5, Gadget gadget, SpendDiamondsButton.SuccessHandler successHandler) {
            super(i, str, i2, i3, i4, i5, gadget);
            this.val$successHandler = successHandler;
        }

        @Override // io.blueflower.stapel2d.gui.Button, io.blueflower.stapel2d.gui.Gadget
        public void onClick() {
            super.onClick();
            this.val$successHandler.handle(new SpendDiamondsButton.HandlerReporter() { // from class: info.flowersoft.theotown.ui.BuyOrVideoDialog$2$$ExternalSyntheticLambda0
                @Override // info.flowersoft.theotown.ui.SpendDiamondsButton.HandlerReporter
                public final void report(boolean z) {
                    BuyOrVideoDialog.AnonymousClass2.m2367$r8$lambda$moZOpuI2XNfRWXJlRlm_jycuoM(z);
                }
            });
            BuyOrVideoDialog.this.setVisible(false);
        }
    }

    public final void openShop() {
        TheoTown.analytics.logEvent("Shop", "Open shop for permanent " + this.id, this.adPlacementName);
        new DiamondShopDialog((Master) getContentPane().getAbsoluteParent(), this.context, this.stageVisitor).setVisible(true);
    }

    public GoldButton getDiamondButton() {
        return this.diamondButton;
    }

    public static synchronized void configureCap(String str, int i, int i2) {
        if (str != null) {
            if (!str.isEmpty() && i >= 1) {
                placementCaps.put(str, Integer.valueOf(i));
                placementCapTimes.put(str, Integer.valueOf(i2));
            }
        }
    }

    public static synchronized void registerSuccessfulAd(String str, Stapel2DGameContext stapel2DGameContext) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    long time = InternetTime.getInstance().getTime();
                    Map<String, List<Long>> map = adPlacementTimes;
                    List<Long> arrayList = map.get(str);
                    if (arrayList == null) {
                        arrayList = new ArrayList<>();
                        map.put(str, arrayList);
                    }
                    arrayList.add(Long.valueOf(time));
                    save(stapel2DGameContext);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static synchronized long getRemainingTime(String str) {
        if (str != null) {
            if (!str.isEmpty()) {
                Integer num = placementCaps.get(str);
                Integer num2 = placementCapTimes.get(str);
                if (num != null && num2 != null && num.intValue() >= 1) {
                    List<Long> list = adPlacementTimes.get(str);
                    if (list != null && list.size() >= num.intValue()) {
                        return (list.get(list.size() - num.intValue()).longValue() + ((long) (num2.intValue() * 1000))) - InternetTime.getInstance().getTime();
                    }
                    return -1L;
                }
                return -1L;
            }
        }
        return -1L;
    }

    public static synchronized void load(Stapel2DGameContext stapel2DGameContext) {
        try {
            JSONArray jSONArrayOptJSONArray = new PersistentData("ad dialog").read().optJSONArray(C3878ud.c);
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
                    if (jSONObjectOptJSONObject != null) {
                        String strOptString = jSONObjectOptJSONObject.optString("placement");
                        JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject.optJSONArray("history");
                        if (strOptString != null && jSONArrayOptJSONArray2 != null) {
                            ArrayList arrayList = new ArrayList();
                            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                                long jOptLong = jSONArrayOptJSONArray2.optLong(i, 0L);
                                if (jOptLong != 0) {
                                    arrayList.add(Long.valueOf(jOptLong));
                                }
                            }
                            adPlacementTimes.put(strOptString, arrayList);
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void save(Stapel2DGameContext stapel2DGameContext) {
        try {
            JSONObject jSONObject = new JSONObject();
            JSONArray jSONArray = new JSONArray();
            try {
                for (Map.Entry<String, List<Long>> entry : adPlacementTimes.entrySet()) {
                    JSONObject jSONObject2 = new JSONObject();
                    jSONObject2.put("placement", entry.getKey());
                    JSONArray jSONArray2 = new JSONArray();
                    for (int iMax = Math.max(entry.getValue().size() - 20, 0); iMax < entry.getValue().size(); iMax++) {
                        jSONArray2.put(entry.getValue().get(iMax));
                    }
                    jSONObject2.put("history", jSONArray2);
                    jSONArray.put(jSONObject2);
                }
                jSONObject.put(C3878ud.c, jSONArray);
                new PersistentData("ad dialog").write(jSONObject);
            } catch (JSONException e) {
                TheoTown.analytics.logException(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
