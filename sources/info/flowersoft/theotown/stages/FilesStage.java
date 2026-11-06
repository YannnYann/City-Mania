package info.flowersoft.theotown.stages;

import com.badlogic.gdx.Gdx;
import com.badlogic.gdx.files.FileHandle;
import com.badlogic.gdx.graphics.Pixmap;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.unity3d.services.UnityAdsConstants;
import info.flowersoft.theotown.city.City;
import info.flowersoft.theotown.crossplatform.TheoTown;
import info.flowersoft.theotown.draft.AnimationDraft;
import info.flowersoft.theotown.resources.Drafts;
import info.flowersoft.theotown.resources.Resources;
import info.flowersoft.theotown.ui.Dialog;
import info.flowersoft.theotown.ui.IconButton;
import info.flowersoft.theotown.ui.Page;
import info.flowersoft.theotown.ui.PopupBuilder;
import info.flowersoft.theotown.ui.RenameDialogBuilder;
import info.flowersoft.theotown.ui.ShadowedLabel;
import info.flowersoft.theotown.ui.listitem.ActionListItem;
import info.flowersoft.theotown.util.Files;
import info.flowersoft.theotown.util.Localizer;
import info.flowersoft.theotown.util.PixmapUtil;
import info.flowersoft.theotown.util.StringFormatter;
import io.bidmachine.protobuf.EventTypeExtended;
import io.blueflower.stapel2d.drawing.Colors;
import io.blueflower.stapel2d.drawing.Engine;
import io.blueflower.stapel2d.drawing.Image;
import io.blueflower.stapel2d.drawing.StaticBitmapTextureSource;
import io.blueflower.stapel2d.drawing.Texture;
import io.blueflower.stapel2d.gamestack.Stapel2DGameContext;
import io.blueflower.stapel2d.gui.Gadget;
import io.blueflower.stapel2d.gui.ListBox;
import io.blueflower.stapel2d.gui.Panel;
import io.blueflower.stapel2d.gui.Skin;
import io.blueflower.stapel2d.util.IntList;
import io.blueflower.stapel2d.util.Predicate;
import io.blueflower.stapel2d.util.StaticGetter;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public class FilesStage extends BaseStage {
    public int RESTART_FRAME;
    public final Set<String> alwaysHiddenFiles;
    public final City city;
    public String displayedPath;
    public final Set<String> hiddenFiles;
    public final List<File> history;
    public ListBox listBox;
    public int modificationCounter;
    public final File rootFile;
    public boolean showHiddenFiles;
    public final IntList yScrolling;

    public static int getIcon() {
        return Resources.ICON_FOLDER;
    }

    public FilesStage(Stapel2DGameContext stapel2DGameContext, City city) {
        super(stapel2DGameContext);
        this.showHiddenFiles = false;
        this.history = new ArrayList();
        this.yScrolling = new IntList();
        this.hiddenFiles = new HashSet(Arrays.asList("TheoTown/managed plugins"));
        this.alwaysHiddenFiles = new HashSet(Arrays.asList("TheoTown/.migrated.txt", "TheoTown/.pmodext", "TheoTown/.runtime"));
        File file = TheoTown.APP_DIR;
        this.rootFile = file;
        this.city = city;
        navigateTo(file);
    }

    public FilesStage(Stapel2DGameContext stapel2DGameContext, File file, City city) {
        this(stapel2DGameContext, city);
        navigateTo(file);
    }

    public final void navigateTo(File file) {
        try {
            File canonicalFile = file.getCanonicalFile();
            if (canonicalFile.isFile()) {
                canonicalFile = canonicalFile.getParentFile();
            }
            if (!canonicalFile.exists()) {
                throw new IllegalArgumentException("File " + canonicalFile.getAbsolutePath() + " does not exist!");
            }
            this.history.clear();
            this.yScrolling.clear();
            this.history.add(this.rootFile);
            this.yScrolling.add(0);
            if (!this.rootFile.equals(canonicalFile)) {
                ArrayList arrayList = new ArrayList();
                while (canonicalFile != null && !canonicalFile.equals(this.rootFile)) {
                    arrayList.add(canonicalFile.getName());
                    canonicalFile = canonicalFile.getParentFile();
                }
                if (canonicalFile != null) {
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        String str = (String) arrayList.get(size);
                        this.history.add(new File(this.history.get(r5.size() - 1), str));
                        this.yScrolling.add(0);
                    }
                }
            }
            buildDisplayedPath();
        } catch (IOException unused) {
            throw new IllegalArgumentException("Could not resolve file " + file.getAbsolutePath());
        }
    }

    public final void buildDisplayedPath() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < this.history.size(); i++) {
            if (i == 0) {
                sb.append("TheoTown");
            } else {
                sb.append(this.history.get(i).getName());
            }
            if (i < this.history.size() - 1) {
                sb.append("/");
            }
        }
        this.displayedPath = sb.toString();
    }

    public final void planRebuild(boolean z) {
        if (z) {
            this.modificationCounter++;
        }
        addTask(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda28
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.rebuildFolder();
            }
        });
    }

    public final void exportFile(File file) {
        TheoTown.runtimeFeatures.exportFile(new FileHandle(file), null, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda30
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.planRebuild(false);
            }
        });
    }

    public final void importFile(File file) {
        TheoTown.runtimeFeatures.importFile(file, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.planRebuild(true);
            }
        });
    }

    public final void importFolder(File file) {
        TheoTown.runtimeFeatures.importFile(file, true, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.planRebuild(true);
            }
        });
    }

    public final boolean isValidFileName(String str) {
        return (str.isEmpty() || str.contains("/") || str.contains("\\") || str.equals(".") || str.equals("..") || str.startsWith("/") || str.contains("~") || str.contains("?") || str.contains("#")) ? false : true;
    }

    public final void createFolder(final File file) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.gui, this.translator, this.context.getKey());
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda11
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return this.f$0.isValidFileName((String) obj);
            }
        });
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda12
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                FilesStage.$r8$lambda$rQUNC_CPeXhUKLBFs1ZEIejajZc(this.f$0, file, (String) obj);
            }
        });
        renameDialogBuilder.setOkText(this.translator.translate(2903));
        renameDialogBuilder.build(Resources.ICON_FOLDER, this.translator.translate(3310), this.translator.translate(EventTypeExtended.EVENT_TYPE_EXTENDED_TOKEN_GENERATED_VALUE), "New_Folder").setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$rQUNC_CPeXhUKLBFs1ZEIejajZc(FilesStage filesStage, File file, String str) {
        if (filesStage.isValidFileName(str)) {
            File file2 = new File(file, str);
            if (file2.exists()) {
                filesStage.showError(filesStage.translator.translate(2193), StringFormatter.format(filesStage.translator.translate(638), str));
            } else {
                file2.mkdirs();
                filesStage.rebuildFolder();
            }
        }
    }

    public final void renameFile(final File file) {
        RenameDialogBuilder renameDialogBuilder = new RenameDialogBuilder(this.gui, this.translator, this.context.getKey());
        renameDialogBuilder.setFilter(new Predicate() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda31
            @Override // io.blueflower.stapel2d.util.Predicate
            public final boolean apply(Object obj) {
                return this.f$0.isValidFileName((String) obj);
            }
        });
        renameDialogBuilder.setOnOk(new RenameDialogBuilder.Consumer() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda32
            @Override // info.flowersoft.theotown.ui.RenameDialogBuilder.Consumer
            public final void accept(Object obj) {
                FilesStage.$r8$lambda$BAiQeBzZ1vTsk9zkNAfGQcM58kQ(this.f$0, file, (String) obj);
            }
        });
        renameDialogBuilder.build(Resources.ICON_EDIT, this.translator.translate(1136), StringFormatter.format(this.translator.translate(1581), file.getName()), file.getName()).setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$BAiQeBzZ1vTsk9zkNAfGQcM58kQ(FilesStage filesStage, File file, String str) {
        filesStage.getClass();
        if (str.equals(file.getName())) {
            return;
        }
        File file2 = new File(file.getParentFile(), str);
        if (file2.exists()) {
            filesStage.showError(filesStage.translator.translate(3467), StringFormatter.format(filesStage.translator.translate(1695), file2.getName()));
            return;
        }
        if (file.isFile()) {
            file.renameTo(file2);
        } else {
            Files.copyFile(file, file2);
            Files.deleteFile(file);
        }
        filesStage.rebuildFolder();
        filesStage.modificationCounter++;
    }

    public final void removeFile(final File file, String str) {
        Dialog dialog = new Dialog(Resources.ICON_REMOVE, this.translator.translate(632), StringFormatter.format(this.translator.translate(428), str), this.gui);
        dialog.addButton(Resources.ICON_REMOVE, this.translator.translate(654), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda29
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.m2233$r8$lambda$enrJ2U587Hs1c6_KPTJ5Bi5LKM(this.f$0, file);
            }
        });
        dialog.addCancelButton(Resources.ICON_CANCEL, this.translator.translate(1477));
        dialog.distributeButtons();
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$enrJ2U587Hs1c6_K-PTJ5Bi5LKM, reason: not valid java name */
    public static /* synthetic */ void m2233$r8$lambda$enrJ2U587Hs1c6_KPTJ5Bi5LKM(FilesStage filesStage, File file) {
        filesStage.getClass();
        Files.deleteFile(file);
        filesStage.rebuildFolder();
        filesStage.modificationCounter++;
    }

    public final void showError(String str, String str2) {
        Dialog dialog = new Dialog(Resources.ICON_ALERT, str, str2, this.gui);
        dialog.addButton(Resources.ICON_OK, this.translator.translate(2447), null).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List<java.io.File> collectCurrentFiles() {
        /*
            r9 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.List<java.io.File> r1 = r9.history
            int r2 = r1.size()
            int r2 = r2 + (-1)
            java.lang.Object r1 = r1.get(r2)
            java.io.File r1 = (java.io.File) r1
            java.io.File[] r1 = r1.listFiles()
            if (r1 == 0) goto L99
            r2 = 0
        L1a:
            int r3 = r1.length
            if (r2 >= r3) goto L99
            r3 = r1[r2]
            java.lang.String r4 = r3.getName()
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = r9.displayedPath
            r5.append(r6)
            java.lang.String r6 = "/"
            r5.append(r6)
            r5.append(r4)
            java.lang.String r5 = r5.toString()
            java.lang.String r6 = "."
            boolean r7 = r4.equals(r6)
            if (r7 != 0) goto L96
            java.lang.String r7 = ".."
            boolean r7 = r4.equals(r7)
            if (r7 != 0) goto L96
            boolean r7 = r9.showHiddenFiles
            java.lang.String r8 = "*"
            if (r7 != 0) goto L74
            boolean r6 = r4.startsWith(r6)
            if (r6 != 0) goto L96
            java.util.Set<java.lang.String> r6 = r9.hiddenFiles
            boolean r6 = r6.contains(r5)
            if (r6 != 0) goto L96
            java.util.Set<java.lang.String> r6 = r9.hiddenFiles
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            r7.append(r8)
            r7.append(r4)
            java.lang.String r7 = r7.toString()
            boolean r6 = r6.contains(r7)
            if (r6 != 0) goto L96
        L74:
            java.util.Set<java.lang.String> r6 = r9.alwaysHiddenFiles
            boolean r5 = r6.contains(r5)
            if (r5 != 0) goto L96
            java.util.Set<java.lang.String> r5 = r9.alwaysHiddenFiles
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            r6.<init>()
            r6.append(r8)
            r6.append(r4)
            java.lang.String r4 = r6.toString()
            boolean r4 = r5.contains(r4)
            if (r4 != 0) goto L96
            r0.add(r3)
        L96:
            int r2 = r2 + 1
            goto L1a
        L99:
            info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda9 r1 = new info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda9
            r1.<init>()
            java.util.Collections.sort(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: info.flowersoft.theotown.stages.FilesStage.collectCurrentFiles():java.util.List");
    }

    public static /* synthetic */ int $r8$lambda$hSkNo946ujWN0kSp1vl6QhocVf8(File file, File file2) {
        StringBuilder sb = new StringBuilder();
        sb.append(file.isDirectory() ? "d" : "f");
        sb.append(file.getName());
        String string = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(file2.isDirectory() ? "d" : "f");
        sb2.append(file2.getName());
        return string.compareTo(sb2.toString());
    }

    public final void buildFolder() {
        ActionListItem actionListItemBuildFileItem;
        this.listBox.removeAllItems();
        List<File> listCollectCurrentFiles = collectCurrentFiles();
        this.listBox.addItem(buildHeaderItem(listCollectCurrentFiles));
        for (int i = 0; i < listCollectCurrentFiles.size(); i++) {
            File file = listCollectCurrentFiles.get(i);
            if (file.isDirectory()) {
                actionListItemBuildFileItem = buildFolderItem(file);
            } else {
                actionListItemBuildFileItem = buildFileItem(file);
            }
            buildFileActions(actionListItemBuildFileItem, file, this.displayedPath + "/" + file.getName());
            this.listBox.addItem(actionListItemBuildFileItem);
        }
        ListBox listBox = this.listBox;
        IntList intList = this.yScrolling;
        listBox.setShiftY(intList.get(intList.size() - 1));
    }

    public final void rebuildFolder() {
        this.yScrolling.set(r0.size() - 1, (int) this.listBox.getShiftY());
        buildFolder();
    }

    public final void enterSubFolder(File file) {
        this.yScrolling.set(r0.size() - 1, (int) this.listBox.getShiftY());
        this.yScrolling.add(0);
        this.history.add(file);
        buildDisplayedPath();
        buildFolder();
    }

    public final void goUp() {
        this.history.remove(r0.size() - 1);
        this.yScrolling.removeAt(r0.size() - 1);
        buildDisplayedPath();
        buildFolder();
    }

    public final boolean canGoUp() {
        return this.history.size() > 1;
    }

    public final ActionListItem buildHeaderItem(List<File> list) {
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        actionListItem.setTitle("   " + this.displayedPath);
        actionListItem.setSubTitle("   " + this.translator.translate(973) + " " + StringFormatter.format(this.translator.translate(3106), Integer.valueOf(list.size())));
        Skin skin = Resources.skin;
        actionListItem.setBackground(skin.cTextAccent.copy().lerp(skin.cBg, 0.7f));
        if (canGoUp()) {
            actionListItem.addAction(Resources.ICON_BACKWARD, this.translator.translate(2416), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.goUp();
                }
            });
            actionListItem.setBackgroundAction(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda8
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.goUp();
                }
            });
        }
        return actionListItem;
    }

    public final void buildFileActions(ActionListItem actionListItem, final File file, final String str) {
        actionListItem.addAction(Resources.ICON_HAMBURGER, this.translator.translate(2191), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.$r8$lambda$CKgQYOCxtzokhUYVxT3OUnR934Q(this.f$0, file, str);
            }
        });
    }

    public static /* synthetic */ void $r8$lambda$CKgQYOCxtzokhUYVxT3OUnR934Q(final FilesStage filesStage, final File file, final String str) {
        PopupBuilder popupBuilder = new PopupBuilder(filesStage.listBox);
        popupBuilder.setSource(ActionListItem.sourceX, ActionListItem.sourceY, ActionListItem.sourceW, ActionListItem.sourceH);
        if (!file.isDirectory() || TheoTown.runtimeFeatures.canImportAndExportFolder()) {
            popupBuilder.addItem(Resources.ICON_LEVEL_UP, filesStage.translator.translate(2711), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda25
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.exportFile(file);
                }
            });
        }
        popupBuilder.addItem(Resources.ICON_EDIT, filesStage.translator.translate(1136), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda26
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.renameFile(file);
            }
        });
        popupBuilder.addItem(Resources.ICON_REMOVE, filesStage.translator.translate(654), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda27
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.removeFile(file, str);
            }
        });
        popupBuilder.build();
    }

    public final ActionListItem buildFolderItem(final File file) {
        int i;
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        String path = file.getPath();
        if (path.endsWith("/maps") || path.endsWith("/scenarios")) {
            i = Resources.ICON_CITY;
        } else if (path.endsWith("/regions") || path.matches(".*/regions/[^/]*")) {
            i = Resources.ICON_REGION;
        } else if (path.endsWith("/music") || path.matches(".*/music/[^/]*")) {
            i = Resources.ICON_MUSIC;
        } else if (path.endsWith("/plugins") || path.endsWith("/managed plugins")) {
            i = Resources.ICON_PLUGIN;
        } else {
            i = (path.endsWith("/Screenshots") || path.endsWith("/pictures")) ? Resources.ICON_CAMERA : 0;
        }
        String[] list = file.list();
        int length = list != null ? list.length : 0;
        actionListItem.setTitle(file.getName());
        actionListItem.setIcon(buildIcon(Resources.ICON_FOLDER, i));
        actionListItem.setSubTitle(StringFormatter.format(this.translator.translate(1963), Integer.valueOf(length)));
        actionListItem.setSubTitleColor(new StaticGetter(Colors.GRAY));
        actionListItem.setBackgroundAction(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.enterSubFolder(file);
            }
        });
        return actionListItem;
    }

    public final ActionListItem buildFileItem(final File file) {
        ActionListItem actionListItem = new ActionListItem(this.listBox);
        String name = file.getName();
        final FileType fileTypeResolve = FileType.resolve(name);
        actionListItem.setTitle(name);
        actionListItem.setIcon(buildIcon(fileTypeResolve.getIcon(), 0));
        actionListItem.setSubTitle(StringFormatter.format(this.translator.translate(2764), Localizer.localizeFileSize(this.translator, file.length())));
        actionListItem.setSubTitleColor(new StaticGetter(Colors.GRAY));
        actionListItem.setBackgroundAction(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.openFile(file, fileTypeResolve);
            }
        });
        return actionListItem;
    }

    public final ActionListItem.Icon buildIcon(final int i, final int i2) {
        return new ActionListItem.Icon() { // from class: info.flowersoft.theotown.stages.FilesStage.1
            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public int getHeight() {
                return 26;
            }

            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public int getWidth() {
                return 26;
            }

            @Override // info.flowersoft.theotown.ui.listitem.ActionListItem.Icon
            public void draw(Engine engine, int i3, int i4, int i5, int i6) {
                float f = i4;
                engine.drawImage(Resources.IMAGE_WORLD, i3, f, i5, i6, i);
                int i7 = i2;
                if (i7 != 0) {
                    engine.drawImage(Resources.IMAGE_WORLD, i3 + r14, f, i5 / 2, i6 / 2, i7);
                }
            }
        };
    }

    /* JADX INFO: renamed from: info.flowersoft.theotown.stages.FilesStage$3, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass3 {
        public static final /* synthetic */ int[] $SwitchMap$info$flowersoft$theotown$stages$FileType;

        static {
            int[] iArr = new int[FileType.values().length];
            $SwitchMap$info$flowersoft$theotown$stages$FileType = iArr;
            try {
                iArr[FileType.TEXT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$info$flowersoft$theotown$stages$FileType[FileType.IMAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public final void openFile(File file, FileType fileType) {
        int i = AnonymousClass3.$SwitchMap$info$flowersoft$theotown$stages$FileType[fileType.ordinal()];
        if (i == 1) {
            showTextFile(file);
        } else if (i == 2) {
            showImageFile(file);
        } else {
            TheoTown.runtimeFeatures.showFile(file);
        }
    }

    public final void showImageFile(final File file) {
        if (file.length() > 5242880) {
            TheoTown.runtimeFeatures.showFile(file);
            return;
        }
        final Pixmap pixmapLoadPAPixmap = PixmapUtil.loadPAPixmap(Gdx.files.absolute(file.getPath()), 4);
        if (pixmapLoadPAPixmap == null) {
            TheoTown.runtimeFeatures.showFile(file);
            return;
        }
        final Texture texture = new Texture(new StaticBitmapTextureSource(pixmapLoadPAPixmap, false));
        final Image image = new Image(texture);
        image.addFrame(UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, UnityAdsConstants.SafeGuards.InitRequestRetryPolicy.MIN_JITTER_PCT, pixmapLoadPAPixmap.getWidth(), pixmapLoadPAPixmap.getHeight());
        Dialog dialog = new Dialog(Resources.ICON_CAMERA, file.getName(), null, 800, 800, this.gui);
        new Panel(0, 0, dialog.getContentPane().getClientWidth(), dialog.getContentPane().getClientHeight(), dialog.getContentPane()) { // from class: info.flowersoft.theotown.stages.FilesStage.2
            @Override // io.blueflower.stapel2d.gui.Panel, io.blueflower.stapel2d.gui.Gadget
            public void draw(int i, int i2) {
                Engine engine = this.skin.engine;
                engine.setColor(Colors.GRAY);
                engine.drawImage(Resources.IMAGE_WORLD, this.x + i, this.y + i2, this.width, this.height, Resources.FRAME_RECT);
                engine.reset();
                float fMin = Math.min(Math.min(this.width / image.getWidth(), this.height / image.getHeight()), 4.0f);
                Image image2 = image;
                float f = fMin * 0.5f;
                engine.drawImage(image2, ((this.x + i) + (this.width * 0.5f)) - (image2.getWidth() * f), ((this.y + i2) + (this.height * 0.5f)) - (image.getHeight() * f), image.getWidth() * fMin, image.getHeight() * fMin, 0);
                engine.setColor(Colors.GREEN);
                engine.drawImage(Resources.IMAGE_WORLD, (((this.x + i) + (this.width * 0.5f)) - (image.getWidth() * f)) - 1.0f, (((this.y + i2) + (this.height * 0.5f)) - (image.getHeight() * f)) - 1.0f, (image.getWidth() * fMin) + 2.0f, 1.0f, Resources.FRAME_RECT);
                engine.drawImage(Resources.IMAGE_WORLD, (((this.x + i) + (this.width * 0.5f)) - (image.getWidth() * f)) - 1.0f, this.y + i2 + (this.height * 0.5f) + (image.getHeight() * f), (image.getWidth() * fMin) + 2.0f, 1.0f, Resources.FRAME_RECT);
                engine.drawImage(Resources.IMAGE_WORLD, (((this.x + i) + (this.width * 0.5f)) - (image.getWidth() * f)) - 1.0f, (((this.y + i2) + (this.height * 0.5f)) - (image.getHeight() * f)) - 1.0f, 1.0f, (image.getHeight() * fMin) + 2.0f, Resources.FRAME_RECT);
                engine.drawImage(Resources.IMAGE_WORLD, (image.getWidth() * f) + this.x + i + (this.width * 0.5f), (((this.y + i2) + (this.height * 0.5f)) - (f * image.getHeight())) - 1.0f, 1.0f, (fMin * image.getHeight()) + 2.0f, Resources.FRAME_RECT);
            }
        };
        ShadowedLabel shadowedLabel = new ShadowedLabel(StringFormatter.format(this.translator.translate(2598), Integer.valueOf(pixmapLoadPAPixmap.getWidth()), Integer.valueOf(pixmapLoadPAPixmap.getHeight())), 0, 0, 100, 20, dialog.getContentPane());
        shadowedLabel.setColor(Colors.WHITE);
        shadowedLabel.setFont(Resources.skin.fontSmall);
        dialog.addButton(Resources.ICON_FORWARD, this.translator.translate(IronSourceError.ERROR_IS_SHOW_EXCEPTION), false, true, true, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.showFile(file);
            }
        });
        dialog.addHiddenCancelButton();
        dialog.setOnClose(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.$r8$lambda$dYvwZXaKtwR85NR8Ihg2DRRbnp4(this.f$0, texture, pixmapLoadPAPixmap);
            }
        });
        dialog.setVisible(true);
    }

    public static /* synthetic */ void $r8$lambda$dYvwZXaKtwR85NR8Ihg2DRRbnp4(FilesStage filesStage, Texture texture, Pixmap pixmap) {
        filesStage.engine.releaseTexture(texture);
        pixmap.dispose();
    }

    public final void showTextFile(final File file) {
        if (file.length() > 5242880) {
            TheoTown.runtimeFeatures.showFile(file);
            return;
        }
        final String textFile = Files.readTextFile(file);
        Dialog dialog = new Dialog(Resources.ICON_NOTIFICATION, file.getName(), textFile, 800, 800, this.gui);
        dialog.getTextFrame().setFont(Resources.skin.fontSmall);
        dialog.getTextFrame().setShowBorder(true);
        dialog.addButton(Resources.ICON_COPY, this.translator.translate(3448), false, true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda22
            @Override // java.lang.Runnable
            public final void run() {
                Gdx.app.getClipboard().setContents(textFile);
            }
        });
        dialog.addButton(Resources.ICON_FORWARD, this.translator.translate(IronSourceError.ERROR_IS_SHOW_EXCEPTION), false, true, true, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda23
            @Override // java.lang.Runnable
            public final void run() {
                TheoTown.runtimeFeatures.showFile(file);
            }
        });
        dialog.addHiddenCancelButton();
        dialog.setVisible(true);
    }

    public final void showSettingsMenu(Gadget gadget) {
        PopupBuilder popupBuilder = new PopupBuilder(gadget);
        popupBuilder.addItem(this.showHiddenFiles ? Resources.skin.fCheckboxOn : Resources.skin.fCheckboxOff, this.translator.translate(434), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.$r8$lambda$auNxOarE1NEL6hOapVRHjhFrN80(this.f$0);
            }
        });
        popupBuilder.build();
    }

    public static /* synthetic */ void $r8$lambda$auNxOarE1NEL6hOapVRHjhFrN80(FilesStage filesStage) {
        filesStage.showHiddenFiles = !filesStage.showHiddenFiles;
        filesStage.rebuildFolder();
    }

    public final void showHelp() {
        Dialog dialog = new Dialog(Resources.ICON_HELP, this.translator.translate(1), this.translator.translate(18), this.gui);
        dialog.addHiddenCancelButton();
        dialog.addButton(Resources.ICON_OK, this.translator.translate(2447), true, true, true, null).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
    }

    private void showRestartDialog(final Runnable runnable) {
        Dialog dialog = new Dialog(this.RESTART_FRAME, this.translator.translate(2789), this.translator.translate(900), this.gui);
        dialog.addButton(Resources.ICON_CANCEL, this.translator.translate(278), runnable == null, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.m2232$r8$lambda$_3Iow3r_EyBcK7XgB90C4ZX11c(runnable);
            }
        });
        dialog.addButton(this.RESTART_FRAME, this.translator.translate(2057), false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.m2230$r8$lambda$7PjrnM5UFh0dhouJZS3JSgkB4A(this.f$0);
            }
        }).setGolden(true).addSensitiveKey(66);
        dialog.setVisible(true);
    }

    /* JADX INFO: renamed from: $r8$lambda$_3I-ow3r_EyBcK7XgB90C4ZX11c, reason: not valid java name */
    public static /* synthetic */ void m2232$r8$lambda$_3Iow3r_EyBcK7XgB90C4ZX11c(Runnable runnable) {
        if (runnable != null) {
            runnable.run();
        }
    }

    /* JADX INFO: renamed from: $r8$lambda$7PjrnM5UFh0dhouJZS3JSgkB-4A, reason: not valid java name */
    public static /* synthetic */ void m2230$r8$lambda$7PjrnM5UFh0dhouJZS3JSgkB4A(final FilesStage filesStage) {
        City city = filesStage.city;
        if (city != null) {
            city.getController().save(true, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda24
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.context.requestRestart();
                }
            });
        } else {
            filesStage.context.requestRestart();
        }
    }

    private boolean requiresRestart() {
        return this.modificationCounter > 0;
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void enter() {
        super.enter();
        this.RESTART_FRAME = ((AnimationDraft) Drafts.get("$anim_store_restart00", AnimationDraft.class)).frames[0];
        Page page = new Page(this.context, this.translator.translate(2214), Resources.ICON_FOLDER, this.gui);
        ListBox listBox = new ListBox(0, 0, 0, 0, page.getContentPanel());
        this.listBox = listBox;
        listBox.fillParent();
        buildFolder();
        page.addButton(Resources.ICON_PLUS, this.translator.translate(3145), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda0
            /* JADX WARN: Failed to inline method: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$wJs5uymEen1Ly6Z8ibn-7qDvQzc(info.flowersoft.theotown.stages.FilesStage):void */
            /* JADX WARN: Not passed register '(r0 I:java.util.List)' in method call: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$wJs5uymEen1Ly6Z8ibn-7qDvQzc(info.flowersoft.theotown.stages.FilesStage):void */
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.m2236$r8$lambda$wJs5uymEen1Ly6Z8ibn7qDvQzc(this.f$0);
            }
        });
        final Gadget[] gadgetArr = new Gadget[1];
        gadgetArr[0] = page.addButton(Resources.ICON_LEVEL_DOWN, this.translator.translate(947), true, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.m2235$r8$lambda$ndhPjkbhFE0kvWlMk570zL_58g(this.f$0, gadgetArr);
            }
        });
        final IconButton[] iconButtonArr = new IconButton[1];
        iconButtonArr[0] = page.addButton(Resources.ICON_MENU, this.translator.translate(2323), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.$r8$lambda$rJrch4fHelGLG9ijSJUsh1LXdw0(this.f$0, iconButtonArr);
            }
        });
        page.addButton(Resources.ICON_HELP, this.translator.translate(1324), false, false, new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda3
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.showHelp();
            }
        });
        page.setOnBackgroundClick(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda4
            @Override // java.lang.Runnable
            public final void run() {
                this.f$0.getGameStack().pop();
            }
        });
    }

    /* JADX INFO: renamed from: $r8$lambda$wJs5uymEen1Ly6Z8ibn-7qDvQzc, reason: not valid java name */
    public static /* synthetic */ void m2236$r8$lambda$wJs5uymEen1Ly6Z8ibn7qDvQzc(FilesStage filesStage) {
        filesStage.createFolder(filesStage.history.get(r0.size() - 1));
    }

    /* JADX INFO: renamed from: $r8$lambda$nd-hPjkbhFE0kvWlMk570zL_58g, reason: not valid java name */
    public static /* synthetic */ void m2235$r8$lambda$ndhPjkbhFE0kvWlMk570zL_58g(final FilesStage filesStage, Gadget[] gadgetArr) {
        filesStage.getClass();
        PopupBuilder popupBuilder = new PopupBuilder(gadgetArr[0]);
        popupBuilder.addItem(Resources.ICON_COPY, filesStage.translator.translate(2043), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda15
            /* JADX WARN: Failed to inline method: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(info.flowersoft.theotown.stages.FilesStage):void */
            /* JADX WARN: Not passed register '(r0 I:java.util.List)' in method call: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(info.flowersoft.theotown.stages.FilesStage):void */
            @Override // java.lang.Runnable
            public final void run() {
                FilesStage.$r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(this.f$0);
            }
        });
        if (TheoTown.runtimeFeatures.canImportAndExportFolder()) {
            popupBuilder.addItem(Resources.ICON_FOLDER, filesStage.translator.translate(729), new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda16
                /* JADX WARN: Failed to inline method: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(info.flowersoft.theotown.stages.FilesStage):void */
                /* JADX WARN: Not passed register '(r0 I:java.util.List)' in method call: info.flowersoft.theotown.stages.FilesStage.$r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(info.flowersoft.theotown.stages.FilesStage):void */
                @Override // java.lang.Runnable
                public final void run() {
                    FilesStage.$r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(this.f$0);
                }
            });
        }
        popupBuilder.build();
    }

    public static /* synthetic */ void $r8$lambda$JgEGhWDrF4J9BD5CFTToGWMUmbg(FilesStage filesStage) {
        filesStage.importFile(filesStage.history.get(r0.size() - 1));
    }

    public static /* synthetic */ void $r8$lambda$3J2F3YWzy8eN8fOKIldpVT6XsY0(FilesStage filesStage) {
        filesStage.importFolder(filesStage.history.get(r0.size() - 1));
    }

    public static /* synthetic */ void $r8$lambda$rJrch4fHelGLG9ijSJUsh1LXdw0(FilesStage filesStage, IconButton[] iconButtonArr) {
        filesStage.getClass();
        filesStage.showSettingsMenu(iconButtonArr[0]);
    }

    @Override // info.flowersoft.theotown.stages.BaseStage, io.blueflower.stapel2d.gamestack.Stage
    public void leave() {
        super.leave();
        if (this.yScrolling.isEmpty()) {
            return;
        }
        this.yScrolling.set(r0.size() - 1, (int) this.listBox.getShiftY());
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onBack() {
        if (isDialogOpen()) {
            super.onBack();
            return;
        }
        if (canGoUp()) {
            goUp();
        } else if (requiresRestart()) {
            showRestartDialog(new Runnable() { // from class: info.flowersoft.theotown.stages.FilesStage$$ExternalSyntheticLambda5
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.getGameStack().pop();
                }
            });
        } else {
            super.onBack();
        }
    }

    @Override // info.flowersoft.theotown.stages.BaseStage
    public void onUpdate() {
        drawBackground();
    }

    public String toString() {
        return "FileManagementStage";
    }
}
