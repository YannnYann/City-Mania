package info.flowersoft.theotown.ui;

import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.utils.TimeUtils;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.cityfile.MapDirectory;
import info.flowersoft.theotown.cityloader.CityKeeper;
import info.flowersoft.theotown.cityloader.LightCityInfo;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.TimeSpan;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.ListItem;
import io.blueflower.stapel2d.gui.Master;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import java.io.File;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.comparisons.ComparisonsKt__ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: RestoreCityDialog.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class RestoreCityDialog {
    public static final RestoreCityDialog INSTANCE = new RestoreCityDialog();

    public static final void show$lambda$1$0() {
    }

    public final boolean supportsRestore(MapDirectory mapDir, CityKeeper city) {
        Intrinsics.checkNotNullParameter(mapDir, "mapDir");
        Intrinsics.checkNotNullParameter(city, "city");
        return !collectCandidates(mapDir, city).isEmpty();
    }

    public final List<File> collectCandidates(MapDirectory mapDir, CityKeeper city) {
        Intrinsics.checkNotNullParameter(mapDir, "mapDir");
        Intrinsics.checkNotNullParameter(city, "city");
        String name = city.getFile().getName();
        File[] fileArrListFiles = mapDir.getDirectory().listFiles();
        Intrinsics.checkNotNull(fileArrListFiles);
        ArrayList arrayList = new ArrayList();
        for (File file : fileArrListFiles) {
            String name2 = file.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            Intrinsics.checkNotNull(name);
            if (StringsKt__StringsJVMKt.startsWith$default(name2, name, false, 2, null)) {
                String name3 = file.getName();
                Intrinsics.checkNotNullExpressionValue(name3, "getName(...)");
                if (!StringsKt__StringsJVMKt.endsWith$default(name3, ".png", false, 2, null)) {
                    arrayList.add(file);
                }
            }
        }
        return CollectionsKt___CollectionsKt.sortedWith(arrayList, new Comparator() { // from class: info.flowersoft.theotown.ui.RestoreCityDialog$collectCandidates$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t, T t2) {
                return ComparisonsKt__ComparisonsKt.compareValues(Long.valueOf(-((File) t).lastModified()), Long.valueOf(-((File) t2).lastModified()));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v23, types: [T, java.lang.Exception] */
    /* JADX WARN: Type inference failed for: r0v28, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v30, types: [T, java.lang.String] */
    public final void show(MapDirectory mapDir, final CityKeeper city, final Runnable onChanged, Stapel2DGameContext context, Master master) {
        LightCityInfo info2;
        Intrinsics.checkNotNullParameter(mapDir, "mapDir");
        Intrinsics.checkNotNullParameter(city, "city");
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        Intrinsics.checkNotNullParameter(context, "context");
        final List<File> listCollectCandidates = collectCandidates(mapDir, city);
        final int iIndexOf = listCollectCandidates.indexOf(city.getFile());
        final TranslationManager translator = context.getTranslator();
        Intrinsics.checkNotNullExpressionValue(translator, "getTranslator(...)");
        final Dialog dialog = new Dialog(Resources.ICON_MEDIC, translator.translate(47), "", 300, 450, master);
        Panel panel = dialog.contentPane;
        final ListBox listBox = new ListBox(0, 0, panel.getClientWidth(), panel.getClientHeight(), panel);
        final ArrayList arrayList = new ArrayList();
        Iterator it = listCollectCandidates.iterator();
        while (it.hasNext()) {
            final File file = (File) it.next();
            final long length = file.length();
            long jLastModified = file.lastModified();
            boolean zAreEqual = Intrinsics.areEqual(city.getFile(), file);
            CityKeeper cityKeeper = new CityKeeper(file, translator);
            Iterator it2 = it;
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            try {
                cityKeeper.loadLightInfo();
                info2 = cityKeeper.getInfo();
            } catch (Exception e) {
                ref$ObjectRef.element = e;
                info2 = null;
            }
            arrayList.add(info2);
            final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
            ref$ObjectRef2.element = StringFormatter.format(translator.translate(210), TimeSpan.localize(TimeUtils.millis() - jLastModified));
            if (zAreEqual) {
                ref$ObjectRef2.element = "> " + ((String) ref$ObjectRef2.element) + ' ' + translator.translate(858);
            }
            listBox.addItem(new ListItem() { // from class: info.flowersoft.theotown.ui.RestoreCityDialog$show$1$1
                @Override // io.blueflower.stapel2d.gui.ListItem
                public int getHeight(boolean z) {
                    return 40;
                }

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super("");
                }

                @Override // io.blueflower.stapel2d.gui.ListItem
                public void draw(boolean z, int i, int i2, int i3, int i4, int i5, Skin skin) {
                    Intrinsics.checkNotNullParameter(skin, "skin");
                    drawBackground(z, i, i2, i3, i4, i5, skin);
                    skin.engine.setColor(z ? Colors.WHITE : skin.cText);
                    int i6 = i2 + 5;
                    drawText(skin, skin.fontDefault, ref$ObjectRef2.element, i6, i3, i4, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.2f, false);
                    int i7 = (i2 + i4) - 5;
                    drawText(skin, skin.fontDefault, Localizer.localizeFileSize(translator, length), i7, i3, 0, i5, 1.0f, 0.2f, false);
                    if (ref$ObjectRef.element != null) {
                        skin.engine.setColor(Colors.RED);
                        drawText(skin, skin.fontDefault, ref$ObjectRef.element.getMessage(), i6, i3, i4, i5, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, 0.8f, false);
                    }
                    skin.engine.setTransparency(80);
                    drawText(skin, skin.fontDefault, file.getName(), i7, i3, 0, i5, 1.0f, 0.8f, false);
                    skin.engine.setTransparency(255);
                }
            });
            it = it2;
        }
        if ((listCollectCandidates.size() == 1 && iIndexOf == 0) || listCollectCandidates.isEmpty()) {
            Label label = new Label(translator.translate(1814), 0, 0, panel.getClientWidth(), panel.getClientHeight(), panel);
            label.setAlignment(0.5f, 0.5f);
            label.setColor(Colors.GRAY);
        }
        listBox.selectItemIndex(iIndexOf);
        dialog.addButton(Resources.ICON_LEVEL_UP, translator.translate(2711), false, false, false, new Runnable() { // from class: info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                RestoreCityDialog.show$lambda$1(listCollectCandidates, listBox);
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, translator.translate(1477));
        final GoldButton goldButtonAddButton = dialog.addButton(Resources.ICON_OK, translator.translate(2927), new Runnable() { // from class: info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                RestoreCityDialog.show$lambda$2(dialog, listBox, iIndexOf, listCollectCandidates, city, onChanged);
            }
        });
        goldButtonAddButton.addSensitiveKey(66);
        goldButtonAddButton.setGolden(true);
        dialog.setVisible(true);
        new Gadget(dialog.contentPane) { // from class: info.flowersoft.theotown.ui.RestoreCityDialog.show.3
            @Override // io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
            }

            @Override // io.blueflower.stapel2d.gui.Gadget
            public void onUpdate() {
                goldButtonAddButton.setEnabled((arrayList.get(listBox.getSelectedItemIndex()) == null || listBox.getSelectedItemIndex() == iIndexOf) ? false : true);
            }
        };
    }

    public static final void show$lambda$1(List list, ListBox listBox) {
        TheoTown.runtimeFeatures.exportFile(new FileHandle((File) list.get(listBox.getSelectedItemIndex())), null, new Runnable() { // from class: info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                RestoreCityDialog.show$lambda$1$0();
            }
        });
    }

    public static final void show$lambda$2(Dialog dialog, ListBox listBox, int i, List list, CityKeeper cityKeeper, Runnable runnable) {
        int i2 = 0;
        dialog.setVisible(false);
        listBox.removeAllItems();
        if (listBox.getSelectedItemIndex() == i) {
            return;
        }
        File file = (File) list.get(listBox.getSelectedItemIndex());
        File file2 = cityKeeper.getFile();
        File file3 = new File(file2.getPath() + "_restore0");
        while (file3.exists()) {
            i2++;
            file3 = new File(file2.getPath() + "_restore" + i2);
        }
        file2.renameTo(file3);
        file.renameTo(file2);
        runnable.run();
    }
}
