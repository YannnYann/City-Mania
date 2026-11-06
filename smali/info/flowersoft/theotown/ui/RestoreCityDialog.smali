###### Class info.flowersoft.theotown.ui.RestoreCityDialog (info.flowersoft.theotown.ui.RestoreCityDialog)
.class public final Linfo/flowersoft/theotown/ui/RestoreCityDialog;
.super Ljava/lang/Object;
.source "RestoreCityDialog.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRestoreCityDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RestoreCityDialog.kt\ninfo/flowersoft/theotown/ui/RestoreCityDialog\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,187:1\n3938#2:188\n4474#2,2:189\n1227#3:191\n2199#3,2:192\n*S KotlinDebug\n*F\n+ 1 RestoreCityDialog.kt\ninfo/flowersoft/theotown/ui/RestoreCityDialog\n*L\n34#1:188\n34#1:189,2\n35#1:191\n61#1:192,2\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Linfo/flowersoft/theotown/ui/RestoreCityDialog;


# direct methods
.method public static synthetic $r8$lambda$2H4fB2oWfw0tld3Mb0e7mQAmMec(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show$lambda$1(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HDbFd5maMesg7ox38nL6sCFD0lI(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V
    .registers 6

    .line 0
    invoke-static/range {p0 .. p5}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show$lambda$2(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z-0HcQTdjlRuz-bs0RnelGEb6mk()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show$lambda$1$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/ui/RestoreCityDialog;

    invoke-direct {v0}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->INSTANCE:Linfo/flowersoft/theotown/ui/RestoreCityDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final show$lambda$1(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 4

    .line 142
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    .line 143
    new-instance v1, Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result p1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/files/FileHandle;-><init>(Ljava/io/File;)V

    .line 145
    new-instance p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda2;-><init>()V

    const/4 p1, 0x0

    .line 142
    invoke-interface {v0, v1, p1, p0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->exportFile(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final show$lambda$1$0()V
    .registers 0

    .line 0
    return-void
.end method

.method public static final show$lambda$2(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V
    .registers 8

    const/4 v0, 0x0

    .line 153
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 154
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->removeAllItems()V

    .line 156
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result p0

    if-ne p0, p2, :cond_e

    return-void

    .line 158
    :cond_e
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result p0

    invoke-interface {p3, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    .line 160
    invoke-virtual {p4}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p1

    .line 162
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "_restore"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    :goto_39
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_5d

    add-int/lit8 v0, v0, 0x1

    .line 165
    new-instance p2, Ljava/io/File;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_39

    .line 167
    :cond_5d
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 168
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 170
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method public final collectCandidates(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/cityfile/MapDirectory;",
            "Linfo/flowersoft/theotown/cityloader/CityKeeper;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const-string v0, "mapDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p2}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    .line 33
    invoke-virtual {p1}, Linfo/flowersoft/theotown/cityfile/MapDirectory;->getDirectory()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 3938
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4474
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_25
    if-ge v3, v1, :cond_52

    aget-object v4, p1, v3

    .line 34
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getName(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, p2, v2, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, ".png"

    invoke-static {v5, v6, v2, v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4f

    .line 4474
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4f
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 1227
    :cond_52
    new-instance p1, Linfo/flowersoft/theotown/ui/RestoreCityDialog$collectCandidates$$inlined$sortedBy$1;

    invoke-direct {p1}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$collectCandidates$$inlined$sortedBy$1;-><init>()V

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final show(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
    .registers 28

    const-string v0, "mapDir"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    move-object/from16 v6, p2

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChanged"

    move-object/from16 v7, p3

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    move-object/from16 v2, p4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-virtual/range {p0 .. p2}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->collectCandidates(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/util/List;

    move-result-object v5

    .line 46
    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    .line 48
    invoke-virtual {v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTranslator()Lio/blueflower/stapel2d/gamestack/TranslationManager;

    move-result-object v13

    const-string v0, "getTranslator(...)"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v14, Linfo/flowersoft/theotown/ui/Dialog;

    .line 50
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_MEDIC:I

    const/16 v0, 0x2f

    .line 51
    invoke-interface {v13, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v16

    const/16 v18, 0x12c

    const/16 v19, 0x1c2

    .line 49
    const-string v17, ""

    move-object/from16 v20, p5

    invoke-direct/range {v14 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;IILio/blueflower/stapel2d/gui/Master;)V

    move-object v2, v14

    .line 57
    iget-object v1, v2, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    .line 58
    new-instance v14, Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v17

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v18

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v19, v1

    invoke-direct/range {v14 .. v19}, Lio/blueflower/stapel2d/gui/ListBox;-><init>(IIIILio/blueflower/stapel2d/gui/Gadget;)V

    move-object v3, v14

    .line 59
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 61
    move-object v0, v5

    check-cast v0, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/io/File;

    .line 62
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    .line 64
    invoke-virtual {v6}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 65
    new-instance v0, Linfo/flowersoft/theotown/cityloader/CityKeeper;

    invoke-direct {v0, v4, v13}, Linfo/flowersoft/theotown/cityloader/CityKeeper;-><init>(Ljava/io/File;Lio/blueflower/stapel2d/gamestack/Translator;)V

    move-object/from16 p1, v1

    .line 66
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 68
    :try_start_91
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->loadLightInfo()V

    .line 69
    invoke-virtual {v0}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->getInfo()Linfo/flowersoft/theotown/cityloader/LightCityInfo;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_98} :catch_99

    goto :goto_9d

    :catch_99
    move-exception v0

    .line 71
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 74
    :goto_9d
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide/from16 v16, v11

    .line 76
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/16 v0, 0xd2

    .line 77
    invoke-interface {v13, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v20

    sub-long v20, v20, v16

    invoke-static/range {v20 .. v21}, Linfo/flowersoft/theotown/resources/TimeSpan;->localize(J)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 76
    invoke-static {v0, v11}, Linfo/flowersoft/theotown/util/StringFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v9, :cond_e8

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "> "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v9, 0x35a

    invoke-interface {v13, v9}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 83
    :cond_e8
    new-instance v11, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;

    move-object/from16 v16, v1

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/blueflower/stapel2d/gamestack/Translator;JLkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V

    invoke-virtual {v3, v11}, Lio/blueflower/stapel2d/gui/ListBox;->addItem(Lio/blueflower/stapel2d/gui/ListItem;)V

    move-object/from16 v1, p1

    goto/16 :goto_68

    .line 124
    :cond_f8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_101

    if-eqz v10, :cond_107

    :cond_101
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12a

    .line 125
    :cond_107
    new-instance v14, Lio/blueflower/stapel2d/gui/Label;

    const/16 v0, 0x716

    .line 126
    invoke-interface {v13, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v15

    .line 127
    invoke-virtual/range {v19 .. v19}, Lio/blueflower/stapel2d/gui/Gadget;->getClientWidth()I

    move-result v18

    move-object/from16 v20, v19

    invoke-virtual/range {v20 .. v20}, Lio/blueflower/stapel2d/gui/Gadget;->getClientHeight()I

    move-result v19

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 125
    invoke-direct/range {v14 .. v20}, Lio/blueflower/stapel2d/gui/Label;-><init>(Ljava/lang/String;IIIILio/blueflower/stapel2d/gui/Gadget;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 129
    invoke-virtual {v14, v0, v0}, Lio/blueflower/stapel2d/gui/Label;->setAlignment(FF)V

    .line 130
    sget-object v0, Lio/blueflower/stapel2d/drawing/Colors;->GRAY:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v14, v0}, Lio/blueflower/stapel2d/gui/Label;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 133
    :cond_12a
    invoke-virtual {v3, v10}, Lio/blueflower/stapel2d/gui/ListBox;->selectItemIndex(I)V

    .line 136
    sget v15, Linfo/flowersoft/theotown/resources/Resources;->ICON_LEVEL_UP:I

    const/16 v0, 0xa97

    .line 137
    invoke-interface {v13, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v16

    .line 141
    new-instance v0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, v5, v3}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, v0

    move-object v14, v2

    .line 135
    invoke-virtual/range {v14 .. v20}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;ZZZLjava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 148
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CANCEL:I

    const/16 v1, 0x5c5

    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v0, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addCancelButton(ILjava/lang/String;)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 150
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_OK:I

    const/16 v1, 0xb6f

    .line 151
    invoke-interface {v13, v1}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object v11

    .line 152
    new-instance v1, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;

    move v4, v10

    invoke-direct/range {v1 .. v7}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;-><init>(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v14, v0, v11, v1}, Linfo/flowersoft/theotown/ui/Dialog;->addButton(ILjava/lang/String;Ljava/lang/Runnable;)Linfo/flowersoft/theotown/ui/GoldButton;

    move-result-object v7

    const/16 v0, 0x42

    .line 172
    invoke-virtual {v7, v0}, Lio/blueflower/stapel2d/gui/Gadget;->addSensitiveKey(I)Lio/blueflower/stapel2d/gui/Gadget;

    .line 173
    invoke-virtual {v7, v9}, Linfo/flowersoft/theotown/ui/GoldButton;->setGolden(Z)Linfo/flowersoft/theotown/ui/GoldButton;

    .line 174
    invoke-virtual {v14, v9}, Linfo/flowersoft/theotown/ui/Dialog;->setVisible(Z)V

    .line 177
    iget-object v11, v14, Linfo/flowersoft/theotown/ui/Dialog;->contentPane:Lio/blueflower/stapel2d/gui/Panel;

    new-instance v6, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;

    move-object v9, v3

    invoke-direct/range {v6 .. v11}, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;-><init>(Linfo/flowersoft/theotown/ui/GoldButton;Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;ILio/blueflower/stapel2d/gui/Panel;)V

    return-void
.end method

.method public final supportsRestore(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Z
    .registers 4

    const-string v0, "mapDir"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "city"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->collectCandidates(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog.AnonymousClass3 (info.flowersoft.theotown.ui.RestoreCityDialog$show$3)
.class public final Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;
.super Lio/blueflower/stapel2d/gui/Gadget;
.source "RestoreCityDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

.field public final synthetic $currentIndex:I

.field public final synthetic $infos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightCityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $listBox:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public constructor <init>(Linfo/flowersoft/theotown/ui/GoldButton;Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;ILio/blueflower/stapel2d/gui/Panel;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/ui/GoldButton;",
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/cityloader/LightCityInfo;",
            ">;",
            "Lio/blueflower/stapel2d/gui/ListBox;",
            "I",
            "Lio/blueflower/stapel2d/gui/Panel;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$infos:Ljava/util/List;

    iput-object p3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$listBox:Lio/blueflower/stapel2d/gui/ListBox;

    iput p4, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$currentIndex:I

    .line 177
    invoke-direct {p0, p5}, Lio/blueflower/stapel2d/gui/Gadget;-><init>(Lio/blueflower/stapel2d/gui/Gadget;)V

    return-void
.end method


# virtual methods
.method public draw(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onUpdate()V
    .registers 4

    .line 179
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$cmdOk:Linfo/flowersoft/theotown/ui/GoldButton;

    .line 180
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$infos:Ljava/util/List;

    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v2}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 181
    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$listBox:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gui/ListBox;->getSelectedItemIndex()I

    move-result v1

    iget v2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$3;->$currentIndex:I

    if-eq v1, v2, :cond_1c

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    .line 179
    :goto_1d
    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gui/Gadget;->setEnabled(Z)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda0 (info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/List;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gui/ListBox;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gui/ListBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda0;->f$1:Lio/blueflower/stapel2d/gui/ListBox;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->$r8$lambda$2H4fB2oWfw0tld3Mb0e7mQAmMec(Ljava/util/List;Lio/blueflower/stapel2d/gui/ListBox;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda1 (info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/ui/Dialog;

.field public final synthetic f$1:Lio/blueflower/stapel2d/gui/ListBox;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Linfo/flowersoft/theotown/cityloader/CityKeeper;

.field public final synthetic f$5:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gui/ListBox;

    iput p3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$2:I

    iput-object p4, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iput-object p6, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$0:Linfo/flowersoft/theotown/ui/Dialog;

    iget-object v1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$1:Lio/blueflower/stapel2d/gui/ListBox;

    iget v2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$2:I

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$3:Ljava/util/List;

    iget-object v4, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$4:Linfo/flowersoft/theotown/cityloader/CityKeeper;

    iget-object v5, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda1;->f$5:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v5}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->$r8$lambda$HDbFd5maMesg7ox38nL6sCFD0lI(Linfo/flowersoft/theotown/ui/Dialog;Lio/blueflower/stapel2d/gui/ListBox;ILjava/util/List;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;)V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda2 (info.flowersoft.theotown.ui.RestoreCityDialog$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/ui/RestoreCityDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/ui/RestoreCityDialog;->$r8$lambda$Z-0HcQTdjlRuz-bs0RnelGEb6mk()V

    return-void
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog$collectCandidates$$inlined$sortedBy$1 (info.flowersoft.theotown.ui.RestoreCityDialog$collectCandidates$$inlined$sortedBy$1)
.class public final Linfo/flowersoft/theotown/ui/RestoreCityDialog$collectCandidates$$inlined$sortedBy$1;
.super Ljava/lang/Object;
.source "Comparisons.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RestoreCityDialog;->collectCandidates(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComparisons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Comparisons.kt\nkotlin/comparisons/ComparisonsKt__ComparisonsKt$compareBy$2\n+ 2 RestoreCityDialog.kt\ninfo/flowersoft/theotown/ui/RestoreCityDialog\n*L\n1#1,325:1\n35#2:326\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 101
    check-cast p1, Ljava/io/File;

    .line 35
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 101
    check-cast p2, Ljava/io/File;

    .line 35
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    neg-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 101
    invoke-static {p1, p2}, Lkotlin/comparisons/ComparisonsKt__ComparisonsKt;->compareValues(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

###### Class info.flowersoft.theotown.ui.RestoreCityDialog$show$1$1 (info.flowersoft.theotown.ui.RestoreCityDialog$show$1$1)
.class public final Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;
.super Lio/blueflower/stapel2d/gui/ListItem;
.source "RestoreCityDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/ui/RestoreCityDialog;->show(Linfo/flowersoft/theotown/cityfile/MapDirectory;Linfo/flowersoft/theotown/cityloader/CityKeeper;Ljava/lang/Runnable;Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Lio/blueflower/stapel2d/gui/Master;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $exception:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $file:Ljava/io/File;

.field public final synthetic $size:J

.field public final synthetic $text:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $translator:Lio/blueflower/stapel2d/gamestack/Translator;


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lio/blueflower/stapel2d/gamestack/Translator;JLkotlin/jvm/internal/Ref$ObjectRef;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lio/blueflower/stapel2d/gamestack/Translator;",
            "J",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$text:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iput-wide p3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$size:J

    iput-object p5, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$file:Ljava/io/File;

    .line 83
    const-string p1, ""

    invoke-direct {p0, p1}, Lio/blueflower/stapel2d/gui/ListItem;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public draw(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V
    .registers 19

    move-object/from16 v1, p7

    const-string v0, "skin"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p0 .. p7}, Lio/blueflower/stapel2d/gui/ListItem;->drawBackground(ZIIIIILio/blueflower/stapel2d/gui/Skin;)V

    .line 95
    iget-object p2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    if-eqz p1, :cond_11

    sget-object p1, Lio/blueflower/stapel2d/drawing/Colors;->WHITE:Lio/blueflower/stapel2d/drawing/Color;

    goto :goto_13

    :cond_11
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->cText:Lio/blueflower/stapel2d/drawing/Color;

    :goto_13
    invoke-virtual {p2, p1}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 98
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$text:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p3, 0x5

    const v9, 0x3e4ccccd    # 0.2f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 97
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    move p1, v4

    .line 102
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    .line 103
    iget-object p2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$translator:Lio/blueflower/stapel2d/gamestack/Translator;

    iget-wide v3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$size:J

    invoke-static {p2, v3, v4}, Linfo/flowersoft/theotown/util/Localizer;->localizeFileSize(Lio/blueflower/stapel2d/gamestack/Translator;J)Ljava/lang/String;

    move-result-object v3

    add-int p2, p3, p5

    add-int/lit8 v4, p2, -0x5

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    .line 101
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    move p2, v4

    .line 106
    iget-object v2, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v2, :cond_6d

    .line 107
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    sget-object v3, Lio/blueflower/stapel2d/drawing/Colors;->RED:Lio/blueflower/stapel2d/drawing/Color;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->setColor(Lio/blueflower/stapel2d/drawing/Color;)V

    .line 109
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object v3, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$exception:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v4, p1

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 108
    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 113
    :cond_6d
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 v2, 0x50

    invoke-virtual {p1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    .line 114
    iget-object v2, v1, Lio/blueflower/stapel2d/gui/Skin;->fontDefault:Lio/blueflower/stapel2d/drawing/Font;

    iget-object p1, p0, Linfo/flowersoft/theotown/ui/RestoreCityDialog$show$1$1;->$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const v9, 0x3f4ccccd    # 0.8f

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, p2

    move v5, p4

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lio/blueflower/stapel2d/gui/ListItem;->drawText(Lio/blueflower/stapel2d/gui/Skin;Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;IIIIFFZ)V

    .line 115
    iget-object p1, v1, Lio/blueflower/stapel2d/gui/Skin;->engine:Lio/blueflower/stapel2d/drawing/Engine;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Lio/blueflower/stapel2d/drawing/Engine;->setTransparency(I)V

    return-void
.end method

.method public getHeight(Z)I
    .registers 2

    .line 0
    const/16 p1, 0x28

    return p1
.end method
