package info.flowersoft.theotown.stages;

import com.ironsource.C3670j8;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.input.KeyAction;
import info.flowersoft.theotown.input.KeyActionManager;
import info.flowersoft.theotown.resources.GlobalTransitionVariables;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.store.StoreCategory;
import info.flowersoft.theotown.store.StoreStage;
import info.flowersoft.theotown.ui.settings.SettingsListbox;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.GUICache;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import vm2.LuaValue;

/* JADX INFO: loaded from: classes4.dex */
public class SettingsStage extends BaseStage {
    public SettingsListbox listBox;
    public boolean[] openCats;
    public final List<Runnable> resetActions;
    public float shiftY;

    public static class LuaSetting {
        public boolean bool;
        public LuaValue lua;
        public String text;
    }

    /* JADX INFO: renamed from: $r8$lambda$zmFqtctxUuh1VVm-2QCsrJYz0E4, reason: not valid java name */
    public static /* synthetic */ void m2294$r8$lambda$zmFqtctxUuh1VVm2QCsrJYz0E4() {
    }

    public static List<Locale> getAvailableLocales() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Locale("ar"));
        arrayList.add(new Locale("bn"));
        arrayList.add(new Locale("ca"));
        arrayList.add(new Locale("cs"));
        arrayList.add(new Locale("en"));
        arrayList.add(new Locale("de"));
        arrayList.add(new Locale("el"));
        arrayList.add(new Locale("es"));
        arrayList.add(new Locale("fil"));
        arrayList.add(new Locale("fa"));
        arrayList.add(new Locale("fi"));
        arrayList.add(new Locale("fr"));
        arrayList.add(new Locale("ha"));
        arrayList.add(new Locale("hi"));
        arrayList.add(new Locale("hu"));
        arrayList.add(new Locale(C3670j8.x));
        arrayList.add(new Locale("it"));
        arrayList.add(new Locale("ja"));
        arrayList.add(new Locale("jv"));
        arrayList.add(new Locale("ko"));
        arrayList.add(new Locale("lt"));
        arrayList.add(new Locale("ms"));
        arrayList.add(new Locale("nl"));
        arrayList.add(new Locale("pl"));
        arrayList.add(new Locale("pt", "pt"));
        arrayList.add(new Locale("pt"));
        arrayList.add(new Locale("ro"));
        arrayList.add(new Locale("ru"));
        arrayList.add(new Locale("sk"));
        arrayList.add(new Locale("sr"));
        arrayList.add(new Locale("sv"));
        arrayList.add(new Locale("sw"));
        arrayList.add(new Locale("th"));
        arrayList.add(new Locale("tr"));
        arrayList.add(new Locale("uk"));
        arrayList.add(new Locale("vi"));
        arrayList.add(new Locale("zh"));
        arrayList.add(new Locale("zh", "tw"));
        arrayList.add(new Locale("zh", "hk"));
        return arrayList;
    }

    public SettingsStage(Stapel2DGameContext stapel2DGameContext) {
        super(stapel2DGameContext);
        this.resetActions = new ArrayList();
        this.shiftY = UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT;
    }

    public SettingsStage(Stapel2DGameContext stapel2DGameContext, float f, boolean[] zArr) {
        super(stapel2DGameContext);
        this.resetActions = new ArrayList();
        this.shiftY = f;
        this.openCats = zArr;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        super.prepare();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:264:0x10c5 A[Catch: NoSuchFieldException -> 0x06cf, TryCatch #8 {NoSuchFieldException -> 0x06cf, blocks: (B:121:0x06b0, B:123:0x06b6, B:126:0x06d2, B:129:0x06e5, B:132:0x0728, B:135:0x077f, B:138:0x0793, B:140:0x07af, B:142:0x07c7, B:144:0x085a, B:145:0x0878, B:146:0x0893, B:148:0x08c8, B:149:0x08dc, B:151:0x08fe, B:152:0x0983, B:154:0x09e5, B:155:0x09f9, B:158:0x0a0d, B:160:0x0a3f, B:165:0x0a75, B:167:0x0d29, B:168:0x0da1, B:171:0x0dc4, B:174:0x0dd8, B:176:0x0ddc, B:178:0x0e0f, B:179:0x0e1c, B:180:0x0e4c, B:183:0x0e74, B:185:0x0e80, B:186:0x0e92, B:188:0x0e9e, B:191:0x0ea6, B:193:0x0eac, B:194:0x0eb5, B:196:0x0ebb, B:198:0x0ed3, B:200:0x0edd, B:201:0x0ee5, B:203:0x0eeb, B:205:0x0ef1, B:219:0x0f24, B:223:0x0f44, B:225:0x0f4e, B:228:0x0f9c, B:230:0x0fa2, B:232:0x0fa8, B:262:0x10b9, B:264:0x10c5, B:265:0x10cf, B:234:0x0fcb, B:236:0x0fd1, B:238:0x0fd7, B:239:0x1008, B:241:0x1010, B:243:0x1016, B:245:0x102b, B:247:0x103b, B:250:0x104a, B:252:0x1067, B:251:0x105f, B:253:0x1072, B:254:0x108f, B:256:0x1099, B:258:0x109f, B:260:0x10a9, B:261:0x10b4, B:269:0x10fb, B:221:0x0f2a, B:206:0x0efa, B:208:0x0efe, B:210:0x0f0a, B:213:0x0f16, B:215:0x0f1a, B:217:0x0f20, B:270:0x1107, B:273:0x112a, B:276:0x116f, B:277:0x1177, B:279:0x117d, B:281:0x1191, B:282:0x1199, B:283:0x11a5, B:286:0x11c8, B:288:0x11cc, B:289:0x11e0, B:291:0x11e8, B:292:0x1203, B:294:0x1229, B:295:0x1242, B:298:0x1296, B:300:0x12b2, B:302:0x12bb, B:305:0x12fb, B:307:0x12ff, B:312:0x1315, B:314:0x1319, B:317:0x1452, B:319:0x1456, B:320:0x146a, B:323:0x147e, B:325:0x1482, B:326:0x1496, B:329:0x14aa, B:332:0x14d7, B:334:0x14db, B:335:0x152b, B:338:0x15e2, B:341:0x1632, B:344:0x1687, B:346:0x168b, B:347:0x16a4, B:349:0x174e, B:350:0x1767, B:353:0x177b, B:356:0x178f, B:309:0x1303, B:301:0x12b7, B:162:0x0a4b, B:164:0x0a62), top: B:398:0x06b0 }] */
    /* JADX WARN: Removed duplicated region for block: B:268:0x10f2  */
    /* JADX WARN: Removed duplicated region for block: B:377:0x17ee  */
    /* JADX WARN: Removed duplicated region for block: B:379:0x17f6  */
    /* JADX WARN: Removed duplicated region for block: B:429:0x10cf A[SYNTHETIC] */
    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void enter() {
        /*
            Method dump skipped, instruction units count: 6197
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.SettingsStage.enter():void");
    }

    public static /* synthetic */ void $r8$lambda$1fiXisy7QLed6nTR6KgdIMCwrX0(SettingsStage settingsStage) {
        StoreStage storeStage = new StoreStage(settingsStage.context, settingsStage.ownBackgroundCity);
        storeStage.configureCategory(StoreCategory.Builtins.Shaders);
        settingsStage.getGameStack().push(storeStage);
    }

    public static /* synthetic */ void $r8$lambda$Lb5LSQqKuxp7umpMlJlCaGtNgWo(SettingsStage settingsStage) {
        StoreStage storeStage = new StoreStage(settingsStage.context, settingsStage.ownBackgroundCity);
        storeStage.configureCategory(StoreCategory.Builtins.Themes);
        settingsStage.getGameStack().push(storeStage);
    }

    public static /* synthetic */ void $r8$lambda$Dde6EUJnQwD3c9nxPJtL6zWWAD4() {
        GUICache.invalidateAllCaches();
        MusicBox.getInstance().update();
    }

    public final void changeLanguage(Locale locale) {
        TheoTown.analytics.logEvent("Settings", "Change language", Settings.locale + " -> " + locale);
        this.context.getTranslator().setLanguage(locale, Resources.getEffectiveLocalizationPatches());
        Resources.applyFontLocale(this.context.getTranslator().getEffectiveLocale());
        Settings.locale = locale;
    }

    public final void reset() {
        this.engine.releaseShader(Resources.SHADER_BLITTING_DEFAULT);
        Resources.SHADER_BLITTING_DEFAULT = null;
        Settings.reset();
        TheoTown.runtimeFeatures.applyOrientation(Settings.screenOrientation);
        KeyAction.resetAll();
        KeyActionManager.save(this.context);
        getGameStack().pop();
        getGameStack().push(this);
        GUICache.invalidateAllCaches();
        changeLanguage(Settings.locale);
        for (int i = 0; i < this.resetActions.size(); i++) {
            this.resetActions.get(i).run();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        this.shiftY = this.listBox.getShiftY();
        super.leave();
        Settings.save();
        GlobalTransitionVariables.getInstance().save();
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void drop() {
        super.drop();
    }

    public String toString() {
        return "SettingsStage";
    }

    public void rebuild() {
        getGameStack().pop();
        SettingsStage settingsStage = new SettingsStage(this.context, this.listBox.getShiftY(), this.listBox.storeCategories());
        settingsStage.setOwnBackgroundCity(this.ownBackgroundCity);
        getGameStack().push(settingsStage);
        GUICache.invalidateAllCaches();
    }

    public static class Wrapper<T> {
        public T attribute;

        public Wrapper(T t) {
            this.attribute = t;
        }
    }
}
