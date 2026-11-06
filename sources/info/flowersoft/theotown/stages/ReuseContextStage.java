package info.flowersoft.theotown.stages;

import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.StartScreenDrawer;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stage;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReuseContextStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class ReuseContextStage extends Stage {
    public final Stapel2DGameContext context;
    public int currentTaskIndex;
    public StartScreenDrawer startScreen;
    public List<? extends Pair<String, ? extends Function0<Unit>>> tasks;

    public ReuseContextStage(Stapel2DGameContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void prepare() {
        StartScreenDrawer.startNewSession();
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        this.startScreen = new StartScreenDrawer(this.context.getEngine());
        List listCreateListBuilder = CollectionsKt__CollectionsJVMKt.createListBuilder();
        int i = 0;
        listCreateListBuilder.add(Resources.skin.fontDefault.image.getTextureOfId(0));
        int iCountTextureIds = Resources.IMAGE_WORLD.countTextureIds();
        for (int i2 = 0; i2 < iCountTextureIds; i2++) {
            Texture textureOfId = Resources.IMAGE_WORLD.getTextureOfId(i2);
            if (textureOfId.getWidth() > 128 || textureOfId.getHeight() > 128) {
                listCreateListBuilder.add(Resources.IMAGE_WORLD.getTextureOfId(i2));
            }
        }
        List listBuild = CollectionsKt__CollectionsJVMKt.build(listCreateListBuilder);
        List list = listBuild;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        for (Object obj : list) {
            int i3 = i + 1;
            if (i < 0) {
                CollectionsKt__CollectionsKt.throwIndexOverflow();
            }
            final Texture texture = (Texture) obj;
            arrayList.add(TuplesKt.to("Loading texture " + i3 + " / " + listBuild.size(), new Function0() { // from class: info.flowersoft.theotown.stages.ReuseContextStage$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return ReuseContextStage.enter$lambda$1$0(this.f$0, texture);
                }
            }));
            i = i3;
        }
        this.tasks = arrayList;
        this.currentTaskIndex = -10;
    }

    public static final Unit enter$lambda$1$0(ReuseContextStage reuseContextStage, Texture texture) {
        reuseContextStage.context.getEngine().loadTextureIfDirty(texture);
        return Unit.INSTANCE;
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        StartScreenDrawer startScreenDrawer = this.startScreen;
        if (startScreenDrawer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("startScreen");
            startScreenDrawer = null;
        }
        startScreenDrawer.dispose();
        this.tasks = CollectionsKt__CollectionsKt.emptyList();
    }

    @Override // io.blueflower.stapel2d.gamestack.Stage
    public void update() {
        String str;
        Function0 function0;
        this.context.beginFrame();
        List<? extends Pair<String, ? extends Function0<Unit>>> list = this.tasks;
        List<? extends Pair<String, ? extends Function0<Unit>>> list2 = null;
        if (list == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tasks");
            list = null;
        }
        Pair pair = (Pair) CollectionsKt___CollectionsKt.getOrNull(list, this.currentTaskIndex);
        this.currentTaskIndex++;
        List<? extends Pair<String, ? extends Function0<Unit>>> list3 = this.tasks;
        if (list3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tasks");
            list3 = null;
        }
        Pair pair2 = (Pair) CollectionsKt___CollectionsKt.getOrNull(list3, this.currentTaskIndex);
        if (pair2 == null) {
            pair2 = pair;
        }
        if (pair != null && (function0 = (Function0) pair.getSecond()) != null) {
            function0.invoke();
        }
        StartScreenDrawer startScreenDrawer = this.startScreen;
        if (startScreenDrawer == null) {
            Intrinsics.throwUninitializedPropertyAccessException("startScreen");
            startScreenDrawer = null;
        }
        startScreenDrawer.drawBackground();
        StartScreenDrawer startScreenDrawer2 = this.startScreen;
        if (startScreenDrawer2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("startScreen");
            startScreenDrawer2 = null;
        }
        startScreenDrawer2.drawLogo();
        StartScreenDrawer startScreenDrawer3 = this.startScreen;
        if (startScreenDrawer3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("startScreen");
            startScreenDrawer3 = null;
        }
        float f = this.currentTaskIndex + 1.0f;
        List<? extends Pair<String, ? extends Function0<Unit>>> list4 = this.tasks;
        if (list4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tasks");
            list4 = null;
        }
        startScreenDrawer3.drawBar(f / list4.size());
        if (this.currentTaskIndex >= 1) {
            StartScreenDrawer startScreenDrawer4 = this.startScreen;
            if (startScreenDrawer4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("startScreen");
                startScreenDrawer4 = null;
            }
            if (pair2 == null || (str = (String) pair2.getFirst()) == null) {
                str = "";
            }
            startScreenDrawer4.drawText(str);
        }
        this.context.endFrame();
        int i = this.currentTaskIndex;
        List<? extends Pair<String, ? extends Function0<Unit>>> list5 = this.tasks;
        if (list5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tasks");
        } else {
            list2 = list5;
        }
        if (i > list2.size()) {
            getGameStack().pop();
        }
    }
}
