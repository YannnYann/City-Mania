package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Application;
import com.badlogic.gdx.Files;
import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.draft.Draft;
import info.flowersoft.theotown.drawing.Drawing;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.MusicBox;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.resources.Settings;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.DragButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.util.StringFormatter;
import io.blueflower.stapel2d.drawing.Color;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gamestack.TranslationManager;
import io.blueflower.stapel2d.gui.Label;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.Getter;
import io.blueflower.stapel2d.util.Property;
import io.blueflower.stapel2d.util.Setter;
import java.io.File;
import java.util.Iterator;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt__MathJVMKt;

/* JADX INFO: compiled from: MusicManagerStage.kt */
/* JADX INFO: loaded from: classes4.dex */
public final class MusicManagerStage extends BaseStage {
    public ListBox listBox;
    public final MusicBox musicBox;
    public final File musicDir;
    public final File userMusicDir;

    /* JADX INFO: compiled from: MusicManagerStage.kt */
    public static final /* synthetic */ class EntriesMappings {
        public static final /* synthetic */ EnumEntries<MusicBox.Type> entries$0 = EnumEntriesKt.enumEntries(MusicBox.Type.values());
    }

    /* JADX INFO: compiled from: MusicManagerStage.kt */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MusicBox.Type.values().length];
            try {
                iArr[MusicBox.Type.GAME.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicBox.Type.ACTION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public static final void rebuildList$lambda$11$0() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MusicManagerStage(Stapel2DGameContext context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        MusicBox musicBox = MusicBox.getInstance();
        Intrinsics.checkNotNull(musicBox);
        this.musicBox = musicBox;
        File file = new File(Resources.getTheoTownDir(), "music");
        this.musicDir = file;
        this.userMusicDir = new File(file, "user");
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [info.flowersoft.theotown.stages.MusicManagerStage$enter$5] */
    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        this.userMusicDir.mkdirs();
        Page page = new Page(this.context, this.translator.translate(1276), Resources.ICON_MUSIC, this.gui);
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda0
            @Override // java.lang.Runnable
            public final void run() {
                MusicManagerStage.enter$lambda$0(this.f$0);
            }
        });
        page.addButton(Resources.ICON_LEVEL_DOWN, this.context.getTranslator().translate(1368), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MusicManagerStage.enter$lambda$1(this.f$0);
            }
        });
        Label label = new Label(this.context.getTranslator().translate(2121), 0, 0, 0, page.getControlLine().getFirstPart().getClientHeight(), page.getControlLine().getFirstPart());
        label.setWidth(MathKt__MathJVMKt.roundToInt(label.getTextWidth()) + 5);
        new DragButton(page.getControlLine().getFirstPart().getClientHeight(), page.getControlLine().getFirstPart(), new Property<Float>() { // from class: info.flowersoft.theotown.stages.MusicManagerStage.enter.5
            @Override // io.blueflower.stapel2d.util.Setter
            public /* bridge */ /* synthetic */ void set(Object obj) {
                set(((Number) obj).floatValue());
            }

            public void set(float f) {
                Settings.musicLevel = MathKt__MathJVMKt.roundToInt(f);
                MusicManagerStage.this.musicBox.update();
                Settings.save();
            }

            @Override // io.blueflower.stapel2d.util.Getter
            public Float get() {
                return Float.valueOf(Settings.musicLevel);
            }
        }) { // from class: info.flowersoft.theotown.stages.MusicManagerStage.enter.4
            @Override // info.flowersoft.theotown.ui.DragButton
            public void drawBackground(Engine engine, int i, int i2, int i3, int i4) {
                Intrinsics.checkNotNullParameter(engine, "engine");
                engine.setColor(this.skin.cText);
                engine.setTransparency(40);
                float f = i;
                float f2 = i2;
                float f3 = f2 + i4;
                float f4 = f + i3;
                Drawing.getInstance().drawTriangle(f, f3, f4, f2, f4, f3, engine);
                engine.reset();
            }
        };
        Panel contentPanel = page.getContentPanel();
        this.listBox = new ListBox(0, 0, contentPanel.getClientWidth(), contentPanel.getClientHeight(), contentPanel);
        this.musicBox.selectType(null);
        rebuildList();
    }

    public static final void enter$lambda$0(MusicManagerStage musicManagerStage) {
        musicManagerStage.getGameStack().pop();
    }

    public static final void enter$lambda$1(final MusicManagerStage musicManagerStage) {
        TheoTown.runtimeFeatures.importMusicFile(musicManagerStage.userMusicDir, new Setter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda15
            @Override // io.blueflower.stapel2d.util.Setter
            public final void set(Object obj) {
                MusicManagerStage.enter$lambda$1$0(this.f$0, (File) obj);
            }
        });
    }

    public static final void enter$lambda$1$0(MusicManagerStage musicManagerStage, File file) {
        String str = "user/" + file.getName();
        int size = musicManagerStage.musicBox.size();
        for (int i = 0; i < size; i++) {
            if (Intrinsics.areEqual(musicManagerStage.musicBox.getId(i), str)) {
                TheoTown.runtimeFeatures.showToast(StringFormatter.format(musicManagerStage.context.getTranslator().translate(3514), file.getName()));
                return;
            }
        }
        MusicBox musicBox = musicManagerStage.musicBox;
        Intrinsics.checkNotNull(file);
        musicBox.addMusic(str, FilesKt__UtilsKt.getNameWithoutExtension(file), MusicBox.Type.GAME, Gdx.files.absolute(file.getAbsolutePath()));
        musicManagerStage.rebuildList();
        ListBox listBox = musicManagerStage.listBox;
        if (listBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listBox");
            listBox = null;
        }
        listBox.setShiftY(-99999.0f);
    }

    public final void rebuildList() {
        boolean zStartsWith;
        String strTranslate;
        int i;
        Draft draft = Drafts.get("$anim_store_active00", AnimationDraft.class);
        Intrinsics.checkNotNull(draft);
        int i2 = ((AnimationDraft) draft).frames[0];
        Draft draft2 = Drafts.get("$anim_store_inactive00", AnimationDraft.class);
        Intrinsics.checkNotNull(draft2);
        int i3 = ((AnimationDraft) draft2).frames[0];
        ListBox listBox = this.listBox;
        if (listBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listBox");
            listBox = null;
        }
        listBox.removeAllItems();
        int size = this.musicBox.size();
        final int i4 = 0;
        while (i4 < size) {
            if (this.musicBox.isReady(i4)) {
                final MusicBox.Type defaultType = this.musicBox.getDefaultType(i4);
                final FileHandle file = this.musicBox.getFile(i4);
                final String displayName = this.musicBox.getDisplayName(i4);
                ListBox listBox2 = this.listBox;
                if (listBox2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("listBox");
                    listBox2 = null;
                }
                final ActionListItem actionListItem = new ActionListItem(listBox2);
                if (file.type() == Files.FileType.Absolute) {
                    File file2 = file.file();
                    Intrinsics.checkNotNullExpressionValue(file2, "file(...)");
                    zStartsWith = FilesKt__UtilsKt.startsWith(file2, this.userMusicDir);
                } else {
                    zStartsWith = false;
                }
                actionListItem.setIcon(Resources.ICON_MUSIC);
                actionListItem.setVisibility(new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda2
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return MusicManagerStage.rebuildList$lambda$0(actionListItem, this, i4);
                    }
                });
                actionListItem.setTitle(displayName);
                final Skin skin = Resources.skin;
                actionListItem.setTitleColor(new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda6
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return MusicManagerStage.rebuildList$lambda$1(this.f$0, i4, skin);
                    }
                });
                if (zStartsWith) {
                    strTranslate = this.musicBox.getFile(i4).name();
                } else {
                    strTranslate = this.translator.translate(3516);
                }
                actionListItem.setSubTitle(strTranslate);
                actionListItem.setSubTitleColor(new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda7
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return skin.cTextSecondary;
                    }
                });
                actionListItem.setBackgroundAction(new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicManagerStage.rebuildList$lambda$3(this.f$0, i4);
                    }
                });
                if (zStartsWith) {
                    actionListItem.addAction(Resources.ICON_REMOVE, this.translator.translate(1135), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda9
                        @Override // java.lang.Runnable
                        public final void run() {
                            MusicManagerStage.rebuildList$lambda$4(this.f$0, displayName, i4);
                        }
                    });
                }
                final Function0 function0 = new Function0() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda10
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return MusicManagerStage.rebuildList$lambda$5(this.f$0, i4, defaultType);
                    }
                };
                for (final MusicBox.Type type : EntriesMappings.entries$0) {
                    actionListItem.addAction(getIcon(type), getLocalizedName(type), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            function0.invoke();
                        }
                    }, null, new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda12
                        @Override // io.blueflower.stapel2d.util.Getter
                        public final Object get() {
                            return MusicManagerStage.rebuildList$lambda$6$1(this.f$0, i4, type);
                        }
                    });
                }
                actionListItem.addAction(i2, this.translator.translate(3522), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda13
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicManagerStage.rebuildList$lambda$7(this.f$0, i4);
                    }
                }, null, new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda14
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return MusicManagerStage.rebuildList$lambda$8(this.f$0, i4);
                    }
                });
                i = i3;
                actionListItem.addAction(i, this.translator.translate(610), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda3
                    @Override // java.lang.Runnable
                    public final void run() {
                        MusicManagerStage.rebuildList$lambda$9(this.f$0, i4);
                    }
                }, null, new Getter() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda4
                    @Override // io.blueflower.stapel2d.util.Getter
                    public final Object get() {
                        return MusicManagerStage.rebuildList$lambda$10(this.f$0, i4);
                    }
                });
                if (Gdx.app.getType() != Application.ApplicationType.iOS) {
                    actionListItem.addAction(Resources.ICON_SAVE, this.translator.translate(2711), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda5
                        @Override // java.lang.Runnable
                        public final void run() {
                            MusicManagerStage.rebuildList$lambda$11(file, displayName);
                        }
                    });
                }
                ListBox listBox3 = this.listBox;
                if (listBox3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("listBox");
                    listBox3 = null;
                }
                listBox3.addItem(actionListItem);
            } else {
                i = i3;
            }
            i4++;
            i3 = i;
        }
    }

    public static final Boolean rebuildList$lambda$0(ActionListItem actionListItem, MusicManagerStage musicManagerStage, int i) {
        int i2;
        if (musicManagerStage.musicBox.getCurrentIndex() == i && musicManagerStage.musicBox.isPlaying()) {
            i2 = Resources.ICON_PAUSE;
        } else {
            i2 = Resources.ICON_PLAY;
        }
        actionListItem.setIcon(i2);
        return Boolean.TRUE;
    }

    public static final Color rebuildList$lambda$1(MusicManagerStage musicManagerStage, int i, Skin skin) {
        if (musicManagerStage.musicBox.isActive(i)) {
            if (musicManagerStage.musicBox.isPlaying() && musicManagerStage.musicBox.getCurrentIndex() == i) {
                return skin.cTextAccent;
            }
            return skin.cText;
        }
        return skin.cTextSecondary;
    }

    public static final void rebuildList$lambda$3(MusicManagerStage musicManagerStage, int i) {
        if (musicManagerStage.musicBox.isPlaying() && musicManagerStage.musicBox.getCurrentIndex() == i) {
            musicManagerStage.musicBox.stopTape();
        } else if (Settings.musicLevel > 0) {
            musicManagerStage.musicBox.playTape(i);
        } else {
            TheoTown.runtimeFeatures.showToast(musicManagerStage.translator.translate(2492));
        }
    }

    public static final void rebuildList$lambda$4(final MusicManagerStage musicManagerStage, String str, final int i) {
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, StringFormatter.format(musicManagerStage.context.getTranslator().translate(2221), str), StringFormatter.format(musicManagerStage.context.getTranslator().translate(1774), str), musicManagerStage.gui);
        dialog.addButton(Resources.ICON_REMOVE, musicManagerStage.translator.translate(1135), new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                MusicManagerStage.rebuildList$lambda$4$0(this.f$0, i);
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, musicManagerStage.translator.translate(1477));
        dialog.setVisible(true);
    }

    public static final void rebuildList$lambda$4$0(final MusicManagerStage musicManagerStage, final int i) {
        musicManagerStage.addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                MusicManagerStage.rebuildList$lambda$4$0$0(this.f$0, i);
            }
        });
    }

    public static final void rebuildList$lambda$4$0$0(MusicManagerStage musicManagerStage, int i) {
        musicManagerStage.musicBox.getFile(i).delete();
        musicManagerStage.musicBox.removeAt(i);
        musicManagerStage.rebuildList();
    }

    public static final Unit rebuildList$lambda$5(final MusicManagerStage musicManagerStage, final int i, MusicBox.Type type) {
        String localizedName;
        ListBox listBox = musicManagerStage.listBox;
        ListBox listBox2 = null;
        if (listBox == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listBox");
            listBox = null;
        }
        int iRoundToInt = MathKt__MathJVMKt.roundToInt(listBox.getTouchPoint().getX() * musicManagerStage.gui.getWidthRatio());
        ListBox listBox3 = musicManagerStage.listBox;
        if (listBox3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listBox");
            listBox3 = null;
        }
        int iRoundToInt2 = MathKt__MathJVMKt.roundToInt(listBox3.getTouchPoint().getY() * musicManagerStage.gui.getHeightRatio());
        MusicBox.Type currentType = musicManagerStage.musicBox.getCurrentType(i);
        ListBox listBox4 = musicManagerStage.listBox;
        if (listBox4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("listBox");
        } else {
            listBox2 = listBox4;
        }
        PopupBuilder popupBuilder = new PopupBuilder(listBox2);
        popupBuilder.setSource(iRoundToInt, iRoundToInt2);
        Iterator<MusicBox.Type> it = EntriesMappings.entries$0.iterator();
        while (it.hasNext()) {
            final MusicBox.Type next = it.next();
            if (next == type) {
                localizedName = StringFormatter.format(musicManagerStage.translator.translate(247), musicManagerStage.getLocalizedName(next));
            } else {
                localizedName = musicManagerStage.getLocalizedName(next);
            }
            popupBuilder.addItem(musicManagerStage.getIcon(next), localizedName, new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    MusicManagerStage.rebuildList$lambda$5$0$0$0(this.f$0, i, next);
                }
            }, next != currentType);
        }
        popupBuilder.build();
        return Unit.INSTANCE;
    }

    public static final void rebuildList$lambda$5$0$0$0(MusicManagerStage musicManagerStage, int i, MusicBox.Type type) {
        musicManagerStage.musicBox.setCurrentType(i, type);
        musicManagerStage.musicBox.saveSettings();
    }

    public static final Boolean rebuildList$lambda$6$1(MusicManagerStage musicManagerStage, int i, MusicBox.Type type) {
        return Boolean.valueOf(musicManagerStage.musicBox.isActive(i) && musicManagerStage.musicBox.getCurrentType(i) == type);
    }

    public static final void rebuildList$lambda$7(MusicManagerStage musicManagerStage, int i) {
        musicManagerStage.musicBox.setActive(i, false);
        musicManagerStage.musicBox.saveSettings();
    }

    public static final Boolean rebuildList$lambda$8(MusicManagerStage musicManagerStage, int i) {
        return Boolean.valueOf(musicManagerStage.musicBox.isActive(i));
    }

    public static final void rebuildList$lambda$9(MusicManagerStage musicManagerStage, int i) {
        musicManagerStage.musicBox.setActive(i, true);
        musicManagerStage.musicBox.saveSettings();
    }

    public static final Boolean rebuildList$lambda$10(MusicManagerStage musicManagerStage, int i) {
        return Boolean.valueOf(!musicManagerStage.musicBox.isActive(i));
    }

    public static final void rebuildList$lambda$11(FileHandle fileHandle, String str) {
        TheoTown.runtimeFeatures.exportFile(fileHandle, str + ".mp3", new Runnable() { // from class: info.flowersoft.theotown.stages.MusicManagerStage$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                MusicManagerStage.rebuildList$lambda$11$0();
            }
        });
    }

    public final String getLocalizedName(MusicBox.Type type) {
        int i;
        TranslationManager translator = this.context.getTranslator();
        int i2 = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i2 == 1) {
            i = 3362;
        } else {
            if (i2 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            i = 2966;
        }
        return translator.translate(i);
    }

    public final int getIcon(MusicBox.Type type) {
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            return Resources.ICON_CITY;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        return Resources.ICON_DISASTER_FIRE;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        super.drawBackground();
    }

    public String toString() {
        return "MusicManagerStage";
    }
}
