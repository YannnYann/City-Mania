###### Class info.flowersoft.theotown.TheoTownX (info.flowersoft.theotown.TheoTownX)
.class public Linfo/flowersoft/theotown/TheoTownX;
.super Ljava/lang/Object;
.source "TheoTownX.kt"

# interfaces
.implements Lcom/badlogic/gdx/ApplicationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/TheoTownX$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTheoTownX.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TheoTownX.kt\ninfo/flowersoft/theotown/TheoTownX\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 PackedUtils.kt\ninfo/flowersoft/theotown/util/PackedUtils\n+ 4 Hashing.kt\ninfo/flowersoft/theotown/util/Hashing\n*L\n1#1,560:1\n1#2:561\n41#3,7:562\n48#3,5:586\n41#3,7:591\n48#3,5:615\n42#3:620\n22#4:569\n74#4,16:570\n22#4:598\n74#4,16:599\n22#4:621\n74#4,16:622\n22#4:638\n74#4,16:639\n74#4,16:655\n22#4:671\n74#4,16:672\n*S KotlinDebug\n*F\n+ 1 TheoTownX.kt\ninfo/flowersoft/theotown/TheoTownX\n*L\n181#1:562,7\n181#1:586,5\n184#1:591,7\n184#1:615,5\n184#1:620\n181#1:569\n181#1:570,16\n184#1:598\n184#1:599,16\n195#1:621\n195#1:622,16\n197#1:638\n197#1:639,16\n205#1:655,16\n243#1:671\n243#1:672,16\n*E\n"
.end annotation


# static fields
.field public static final Companion:Linfo/flowersoft/theotown/TheoTownX$Companion;

.field public static context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

.field public static stack:Lio/blueflower/stapel2d/gamestack/GameStack;


# instance fields
.field public cutoutTopRightBottomLeft:[F

.field public final startStage:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$9-mJFXHuVaYc9lq6JPA7Nd40iJw(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/TheoTownX;->buildContext$lambda$0(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9FlyCbJHbYMZ_DTBOXAGu7PFQz8()F
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->testWaitingStage$lambda$1()F

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$BtkWnyVxX6-k2xPjNEP-ylLq3Tc()Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->testExceptionStage$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$K8gLqNB5tzUBmh0fpd58GWxsEhY()F
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->testExceptionStage$lambda$2()F

    move-result v0

    return v0
.end method

.method public static synthetic $r8$lambda$KMiC_q9bztBPelVSKt-FnIJ_p7s()V
    .registers 0

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->testExceptionStage$lambda$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$XgguGX352ZyJxO82_BhYPU_E9HY(Linfo/flowersoft/theotown/TheoTownX;)V
    .registers 1

    .line 0
    invoke-static {p0}, Linfo/flowersoft/theotown/TheoTownX;->render$lambda$1(Linfo/flowersoft/theotown/TheoTownX;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sIxih-w6QHS70JXFbKerCQDSbug()Lkotlin/Unit;
    .registers 1

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->testWaitingStage$lambda$0()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 0
    new-instance v0, Linfo/flowersoft/theotown/TheoTownX$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/TheoTownX$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Linfo/flowersoft/theotown/TheoTownX;->Companion:Linfo/flowersoft/theotown/TheoTownX$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Linfo/flowersoft/theotown/TheoTownX;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Linfo/flowersoft/theotown/TheoTownX;->startStage:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 92
    :cond_5
    invoke-direct {p0, p1}, Linfo/flowersoft/theotown/TheoTownX;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$cp()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;
    .registers 1

    .line 92
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-object v0
.end method

.method public static final buildContext$lambda$0(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 4

    .line 243
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    :try_start_1b
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const-string v2, "forName(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const-string v1, "getBytes(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_2f} :catch_3f

    .line 85
    :try_start_2f
    const-string v1, "md5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 86
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const-string v1, "digest(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2f .. :try_end_3e} :catch_41
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_48

    :catch_3f
    move-exception p0

    goto :goto_52

    :catch_41
    move-exception p0

    .line 88
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    .line 89
    new-array p0, p0, [B

    .line 75
    :goto_48
    invoke-static {p0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object p0

    const-string v1, "bin2hex(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_42 .. :try_end_51} :catch_3f

    goto :goto_57

    .line 77
    :goto_52
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    const-string p0, ""

    .line 243
    :goto_57
    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p0

    return-object p0
.end method

.method public static final render$lambda$1(Linfo/flowersoft/theotown/TheoTownX;)V
    .registers 1

    .line 308
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->restart()V

    return-void
.end method

.method public static final testExceptionStage$lambda$0()Lkotlin/Unit;
    .registers 2

    const-wide/16 v0, 0x64

    .line 490
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 492
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 494
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final testExceptionStage$lambda$1()V
    .registers 2

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 496
    const-string v1, "test"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final testExceptionStage$lambda$2()F
    .registers 4

    .line 498
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const/16 v2, 0xbb8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static final testWaitingStage$lambda$0()Lkotlin/Unit;
    .registers 2

    const-wide/32 v0, 0x30d40

    .line 475
    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_b

    :catch_7
    move-exception v0

    .line 477
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    :goto_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public static final testWaitingStage$lambda$1()F
    .registers 4

    .line 481
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    const/16 v2, 0xbb8

    int-to-long v2, v2

    rem-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x453b8000    # 3000.0f

    div-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final buildContext()V
    .registers 5

    .line 242
    new-instance v0, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda4;-><init>()V

    .line 245
    new-instance v1, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v2, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;

    .line 246
    const-string v3, "localization.json"

    invoke-interface {v0, v3}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;->resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 245
    invoke-direct {v2, v3, v0}, Linfo/flowersoft/theotown/util/AssetBasedTranslationManager;-><init>(Lcom/badlogic/gdx/files/FileHandle;Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;)V

    invoke-direct {v1, v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;-><init>(Lio/blueflower/stapel2d/gamestack/TranslationManager;)V

    sput-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 250
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/mechanics/GameHandler;->init(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    .line 251
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->init(Lcom/badlogic/gdx/Application;)V

    .line 252
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->setUp()V

    :cond_36
    return-void
.end method

.method public final buildGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;
    .registers 7

    .line 255
    new-instance v0, Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-direct {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;-><init>()V

    .line 256
    iget-object v1, p0, Linfo/flowersoft/theotown/TheoTownX;->startStage:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_13c

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_184

    goto/16 :goto_13c

    :sswitch_14
    const-string v4, "loadcity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    goto/16 :goto_13c

    .line 259
    :cond_1e
    new-instance v1, Linfo/flowersoft/theotown/stages/LoadCityStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/LoadCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_2a
    const-string v4, "exception"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    goto/16 :goto_13c

    .line 275
    :cond_34
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v5, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 276
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->testExceptionStage()Linfo/flowersoft/theotown/stages/WaitingStage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_4c
    const-string v4, "settings"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto/16 :goto_13c

    .line 260
    :cond_56
    new-instance v1, Linfo/flowersoft/theotown/stages/SettingsStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/SettingsStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_62
    const-string v4, "createcity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6c

    goto/16 :goto_13c

    .line 257
    :cond_6c
    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4, v3}, Linfo/flowersoft/theotown/stages/CreateCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_78
    const-string v4, "waiting"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    goto/16 :goto_13c

    .line 273
    :cond_82
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->testWaitingStage()Linfo/flowersoft/theotown/stages/WaitingStage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_8b
    const-string v4, "fonttest"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_95

    goto/16 :goto_13c

    .line 268
    :cond_95
    new-instance v1, Linfo/flowersoft/theotown/stages/FontTestStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/FontTestStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_a4
    const-string v4, "testterraingen"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    goto/16 :goto_13c

    .line 262
    :cond_ae
    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/TheoTownX;->testTerrainGen(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    goto/16 :goto_155

    .line 256
    :sswitch_b3
    const-string v4, "files"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_bd

    goto/16 :goto_13c

    .line 261
    :cond_bd
    new-instance v1, Linfo/flowersoft/theotown/stages/FilesStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/stages/FilesStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/city/City;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_ca
    const-string v4, "experiment"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d3

    goto :goto_13c

    .line 267
    :cond_d3
    new-instance v1, Linfo/flowersoft/theotown/stages/ExperimentalStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/ExperimentalStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto/16 :goto_155

    .line 256
    :sswitch_df
    const-string v4, "musicselection"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto :goto_13c

    .line 270
    :cond_e8
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v5, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 271
    new-instance v1, Linfo/flowersoft/theotown/stages/MusicManagerStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/MusicManagerStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto :goto_155

    .line 256
    :sswitch_105
    const-string v4, "sysinfo"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10e

    goto :goto_13c

    .line 264
    :cond_10e
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v5, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 265
    new-instance v1, Linfo/flowersoft/theotown/stages/SystemInfoStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/SystemInfoStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto :goto_155

    .line 256
    :sswitch_128
    const-string v4, "createregion"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_131

    goto :goto_13c

    .line 258
    :cond_131
    new-instance v1, Linfo/flowersoft/theotown/stages/CreateCityStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4, v2}, Linfo/flowersoft/theotown/stages/CreateCityStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    goto :goto_155

    .line 280
    :cond_13c
    :goto_13c
    new-instance v1, Linfo/flowersoft/theotown/stages/RegionStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    new-instance v5, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;

    invoke-direct {v5, v4}, Linfo/flowersoft/theotown/cityfile/LocalRegionProvider;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-direct {v1, v4, v5}, Linfo/flowersoft/theotown/stages/RegionStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Linfo/flowersoft/theotown/cityfile/RegionProvider;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 281
    new-instance v1, Linfo/flowersoft/theotown/stages/WelcomeStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/WelcomeStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 285
    :goto_155
    new-instance v1, Linfo/flowersoft/theotown/stages/MissingManifestStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/MissingManifestStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 286
    new-instance v1, Linfo/flowersoft/theotown/stages/PluginErrorStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v4}, Linfo/flowersoft/theotown/stages/PluginErrorStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 287
    new-instance v1, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v1, v4, v2, v3}, Linfo/flowersoft/theotown/stages/ScriptPolicyStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ZZ)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    .line 288
    new-instance v1, Linfo/flowersoft/theotown/stages/LoadingStage;

    sget-object v2, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-direct {v1, v2}, Linfo/flowersoft/theotown/stages/LoadingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-object v0

    :sswitch_data_184
    .sparse-switch
        -0x7067e510 -> :sswitch_128
        -0x67930b05 -> :sswitch_105
        -0x39f562f9 -> :sswitch_df
        -0x5162403 -> :sswitch_ca
        0x5ceba77 -> :sswitch_b3
        0xb33ea0d -> :sswitch_a4
        0x15d99161 -> :sswitch_8b
        0x4289964d -> :sswitch_78
        0x51a35c67 -> :sswitch_62
        0x5582bc23 -> :sswitch_4c
        0x584fd04f -> :sswitch_2a
        0x6e087b51 -> :sswitch_14
    .end sparse-switch
.end method

.method public final cleanUp()V
    .registers 7

    .line 347
    invoke-static {}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->getInstance()Linfo/flowersoft/theotown/store/ManagedPluginsController;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/ManagedPluginsController;->dispose()V

    .line 348
    invoke-static {}, Linfo/flowersoft/theotown/mechanics/GameHandler;->getInstance()Linfo/flowersoft/theotown/mechanics/GameHandler;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/mechanics/GameHandler;->dispose()V

    .line 349
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->dispose()V

    .line 350
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->dispose()V

    .line 352
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/PluginHelper;->dispose()V

    .line 353
    invoke-static {}, Linfo/flowersoft/theotown/store/PluginUnloader;->getInstance()Linfo/flowersoft/theotown/store/PluginUnloader;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/store/PluginUnloader;->reuse()V

    .line 354
    invoke-static {}, Linfo/flowersoft/theotown/resources/Drafts;->dispose()V

    .line 355
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->dispose()V

    .line 356
    invoke-static {}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->getInstance()Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/scripting/ScriptingEnvironment;->dispose()V

    .line 357
    invoke-static {}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ExperimentManager;->dispose()V

    .line 358
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->dispose()V

    .line 359
    invoke-static {}, Linfo/flowersoft/theotown/resources/TaskManager;->dispose()V

    .line 360
    invoke-static {}, Linfo/flowersoft/theotown/draftloader/Generator;->dispose()V

    .line 361
    invoke-static {}, Linfo/flowersoft/theotown/drawing/Drawing;->dispose()V

    .line 362
    invoke-static {}, Linfo/flowersoft/theotown/city/Zones;->dispose()V

    .line 363
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/Ground;->resetDefaultWater()V

    .line 364
    invoke-static {}, Linfo/flowersoft/theotown/city/objects/Road;->deInit()V

    .line 365
    invoke-static {}, Linfo/flowersoft/theotown/tutorial/Tutorial;->dispose()V

    .line 366
    invoke-static {}, Linfo/flowersoft/theotown/stages/BaseStage;->dispose()V

    .line 368
    invoke-static {}, Linfo/flowersoft/theotown/resources/StaticFiles;->dispose()V

    .line 369
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->getInstance()Linfo/flowersoft/theotown/resources/SoundPlayer;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/SoundPlayer;->dispose()V

    .line 370
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->getInstance()Linfo/flowersoft/theotown/resources/MusicBox;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/MusicBox;->dispose()V

    .line 371
    invoke-static {}, Linfo/flowersoft/theotown/resources/ShaderRepository;->getInstance()Linfo/flowersoft/theotown/resources/ShaderRepository;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ShaderRepository;->dispose()V

    .line 372
    invoke-static {}, Linfo/flowersoft/theotown/resources/FreeModeManager;->dispose()V

    .line 373
    invoke-static {}, Linfo/flowersoft/theotown/resources/TopicManager;->dispose()V

    .line 374
    invoke-static {}, Linfo/flowersoft/theotown/resources/WinterManager;->dispose()V

    .line 375
    invoke-static {}, Linfo/flowersoft/theotown/resources/WordFilter;->dispose()V

    .line 376
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ManagedCache;->dispose()V

    .line 377
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->dispose()V

    .line 378
    invoke-static {}, Linfo/flowersoft/theotown/stages/commandhandler/LuaHandler;->reset()V

    .line 379
    invoke-static {}, Linfo/flowersoft/theotown/cityloader/CityKeeper;->reset()V

    .line 380
    sget-object v0, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->INSTANCE:Linfo/flowersoft/theotown/city/CityBackgroundTexture;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/CityBackgroundTexture;->dispose()V

    .line 381
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->reset()V

    .line 382
    invoke-static {}, Linfo/flowersoft/theotown/ui/SuccessOverlay;->dispose()V

    .line 384
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->socialManager:Linfo/flowersoft/theotown/crossplatform/SocialManager;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/SocialManager;->dispose()V

    .line 385
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->dispose()V

    .line 387
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_102

    .line 388
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->fontFactory:Linfo/flowersoft/theotown/drawing/FontFactory;

    if-eqz v2, :cond_a8

    invoke-virtual {v2}, Linfo/flowersoft/theotown/drawing/FontFactory;->dispose()V

    .line 389
    :cond_a8
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->fontFactory:Linfo/flowersoft/theotown/drawing/FontFactory;

    .line 391
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    if-eqz v2, :cond_c7

    .line 392
    invoke-virtual {v2}, Lio/blueflower/stapel2d/drawing/Image;->countTextureIds()I

    move-result v2

    const/4 v3, 0x0

    :goto_b3
    if-ge v3, v2, :cond_c7

    .line 393
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v4

    if-eqz v4, :cond_c4

    sget-object v5, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    invoke-virtual {v5, v3}, Lio/blueflower/stapel2d/drawing/Image;->getTextureOfId(I)Lio/blueflower/stapel2d/drawing/Texture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/blueflower/stapel2d/drawing/Engine;->releaseTexture(Lio/blueflower/stapel2d/drawing/Texture;)V

    :cond_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_b3

    .line 397
    :cond_c7
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v2

    if-eqz v2, :cond_d8

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v3

    invoke-virtual {v3}, Lio/blueflower/stapel2d/drawing/Engine;->getDefaultShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 399
    :cond_d8
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    if-eqz v2, :cond_e9

    .line 400
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v2

    if-eqz v2, :cond_e7

    sget-object v3, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v2, v3}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 401
    :cond_e7
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_FONT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 404
    :cond_e9
    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    if-eqz v2, :cond_fa

    .line 405
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    if-eqz v0, :cond_f8

    sget-object v2, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    invoke-virtual {v0, v2}, Lio/blueflower/stapel2d/drawing/Engine;->releaseShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 406
    :cond_f8
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->SHADER_BLITTING_DEFAULT:Lio/blueflower/stapel2d/drawing/Shader;

    .line 409
    :cond_fa
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->IMAGE_WORLD:Lio/blueflower/stapel2d/drawing/Image;

    .line 410
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->TEXTURE_WORLD:Lio/blueflower/stapel2d/drawing/Texture;

    .line 411
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    .line 412
    sput-object v1, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 417
    :cond_102
    iput-object v1, p0, Linfo/flowersoft/theotown/TheoTownX;->cutoutTopRightBottomLeft:[F

    .line 418
    sput-object v1, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 419
    sput-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    return-void
.end method

.method public create()V
    .registers 4

    const/4 v0, 0x1

    .line 111
    sput-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    .line 114
    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_17

    .line 123
    :cond_e
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Linfo/flowersoft/theotown/TheoTownX;->reuseGameStack(Lio/blueflower/stapel2d/gamestack/GameStack;)V

    goto :goto_30

    .line 115
    :cond_17
    :goto_17
    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v1

    if-ne v1, v0, :cond_24

    .line 117
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->cleanUp()V

    .line 119
    :cond_24
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->init()V

    .line 120
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->buildContext()V

    .line 121
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->buildGameStack()Lio/blueflower/stapel2d/gamestack/GameStack;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    .line 126
    :goto_30
    sget-object v0, Linfo/flowersoft/theotown/ui/CursorManager;->INSTANCE:Linfo/flowersoft/theotown/ui/CursorManager;

    sget-object v1, Linfo/flowersoft/theotown/ui/CursorType;->Wait:Linfo/flowersoft/theotown/ui/CursorType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Linfo/flowersoft/theotown/ui/CursorManager;->setCursor(Linfo/flowersoft/theotown/ui/CursorType;Z)V

    .line 128
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "create() finish"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->setLogLevel(I)V

    .line 132
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->setupInput()Lcom/badlogic/gdx/Input;

    .line 134
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "create() end"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 135
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->onResumeApp()V

    :cond_56
    return-void
.end method

.method public dispose()V
    .registers 2

    .line 336
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 337
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->popAll()V

    .line 338
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->update()V

    .line 339
    :cond_11
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->cleanUp()V

    return-void
.end method

.method public final init()V
    .registers 26

    .line 167
    const-string v1, ""

    const-string v2, "bin2hex(...)"

    const-string v3, "digest(...)"

    const-string v4, "md5"

    const-string v5, "getBytes(...)"

    const-string v6, "forName(...)"

    const-string v7, "UTF-8"

    sget-object v0, Linfo/flowersoft/theotown/stages/RecoveryMode;->INSTANCE:Linfo/flowersoft/theotown/stages/RecoveryMode;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Linfo/flowersoft/theotown/stages/RecoveryMode;->setActive(Z)V

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Linfo/flowersoft/theotown/crossplatform/TheoTown;->APPLICATION_ID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v10, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_NAME:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ") "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v10, "os.name"

    .line 170
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    const-string v9, "os.version"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 170
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 175
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    .line 176
    const-string v9, "create() cold start"

    invoke-interface {v0, v9}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 177
    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/Analytics;->lateInit()V

    .line 181
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    .line 47
    sget-object v9, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "keys.lby"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x3a

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v12, "ae6bb9dcccb3ee65a2a5e1964c8ca37b"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_7b
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7b .. :try_end_89} :catch_95

    .line 85
    :try_start_89
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 86
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_89 .. :try_end_94} :catch_97
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_89 .. :try_end_94} :catch_95

    goto :goto_9d

    :catch_95
    move-exception v0

    goto :goto_a5

    :catch_97
    move-exception v0

    .line 88
    :try_start_98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    new-array v0, v8, [B

    .line 75
    :goto_9d
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_98 .. :try_end_a4} :catch_95

    goto :goto_a9

    .line 77
    :goto_a5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 47
    :goto_a9
    invoke-interface {v9, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    new-instance v9, Linfo/flowersoft/theotown/util/FileDecoder;

    invoke-direct {v9}, Linfo/flowersoft/theotown/util/FileDecoder;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    const-string v13, "read(...)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v14, v0, Ljava/io/BufferedInputStream;

    const/16 v15, 0x2000

    if-eqz v14, :cond_c4

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_ca

    :cond_c4
    new-instance v14, Ljava/io/BufferedInputStream;

    invoke-direct {v14, v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v14

    .line 50
    :goto_ca
    invoke-virtual {v9, v0, v10}, Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    move-result-object v9

    .line 51
    invoke-virtual {v9}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getPaddingPrefix()I

    move-result v10

    move-object/from16 v16, v9

    int-to-long v8, v10

    invoke-virtual {v0, v8, v9}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 52
    new-instance v8, Linfo/flowersoft/theotown/util/BoundedXorInputStream;

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getMaskBytes()[B

    move-result-object v9

    invoke-virtual/range {v16 .. v16}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getLen()I

    move-result v10

    invoke-direct {v8, v0, v9, v10}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;-><init>(Ljava/io/InputStream;[BI)V

    .line 41
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v8, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v8, Ljava/io/BufferedReader;

    invoke-direct {v8, v9, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 42
    :try_start_f1
    invoke-static {v8}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_f5
    .catchall {:try_start_f1 .. :try_end_f5} :catchall_366

    const/4 v9, 0x0

    .line 41
    invoke-static {v8, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 180
    new-instance v8, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v8, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    sget-object v0, Linfo/flowersoft/theotown/util/PackedUtils;->INSTANCE:Linfo/flowersoft/theotown/util/PackedUtils;

    .line 47
    sget-object v10, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "files.lby"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_116
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-static {v11, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_124
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_116 .. :try_end_124} :catch_130

    .line 85
    :try_start_124
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    .line 86
    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_124 .. :try_end_12f} :catch_132
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_124 .. :try_end_12f} :catch_130

    goto :goto_139

    :catch_130
    move-exception v0

    goto :goto_141

    :catch_132
    move-exception v0

    .line 88
    :try_start_133
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v11, 0x0

    .line 89
    new-array v0, v11, [B

    .line 75
    :goto_139
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_133 .. :try_end_140} :catch_130

    goto :goto_145

    .line 77
    :goto_141
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 47
    :goto_145
    invoke-interface {v10, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 48
    new-instance v10, Linfo/flowersoft/theotown/util/FileDecoder;

    invoke-direct {v10}, Linfo/flowersoft/theotown/util/FileDecoder;-><init>()V

    .line 49
    invoke-virtual {v0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v11, v0, Ljava/io/BufferedInputStream;

    if-eqz v11, :cond_15c

    check-cast v0, Ljava/io/BufferedInputStream;

    goto :goto_162

    :cond_15c
    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v0, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v11

    .line 50
    :goto_162
    invoke-virtual {v10, v0, v14}, Linfo/flowersoft/theotown/util/FileDecoder;->decode(Ljava/io/InputStream;Ljava/lang/String;)Linfo/flowersoft/theotown/util/BytesCallbackFunction;

    move-result-object v10

    .line 51
    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getPaddingPrefix()I

    move-result v11

    int-to-long v13, v11

    invoke-virtual {v0, v13, v14}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 52
    new-instance v11, Linfo/flowersoft/theotown/util/BoundedXorInputStream;

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getMaskBytes()[B

    move-result-object v13

    invoke-virtual {v10}, Linfo/flowersoft/theotown/util/BytesCallbackFunction;->getLen()I

    move-result v10

    invoke-direct {v11, v0, v13, v10}, Linfo/flowersoft/theotown/util/BoundedXorInputStream;-><init>(Ljava/io/InputStream;[BI)V

    .line 41
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v11, Ljava/io/BufferedReader;

    invoke-direct {v11, v10, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 42
    :try_start_187
    invoke-static {v11}, Lkotlin/io/TextStreamsKt;->readText(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0
    :try_end_18b
    .catchall {:try_start_187 .. :try_end_18b} :catchall_35c

    .line 41
    invoke-static {v11, v9}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 183
    new-instance v9, Linfo/flowersoft/theotown/util/json/JSONObject;

    invoke-direct {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 186
    const-string v0, "gversion"

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 187
    const-string v0, "vh"

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONH:Ljava/lang/String;

    .line 188
    const-string v0, "vi"

    invoke-virtual {v9, v0}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONI:Ljava/lang/String;

    .line 191
    sget-object v0, Linfo/flowersoft/theotown/SSLConnectionSetup;->INSTANCE:Linfo/flowersoft/theotown/SSLConnectionSetup;

    const-string v9, "root cert"

    invoke-virtual {v8, v9}, Linfo/flowersoft/theotown/util/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "getString(...)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Linfo/flowersoft/theotown/SSLConnectionSetup;->setup(Ljava/lang/String;)V

    .line 194
    sget-object v9, Linfo/flowersoft/theotown/util/ArabicShaping;->INSTANCE:Linfo/flowersoft/theotown/util/ArabicShaping;

    .line 195
    sget-object v11, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "arabicshaping.txt"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3a

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_1d3
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v13

    invoke-static {v13, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1e1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1d3 .. :try_end_1e1} :catch_1ed

    .line 85
    :try_start_1e1
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v13

    .line 86
    invoke-virtual {v13, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1ec
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e1 .. :try_end_1ec} :catch_1ef
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e1 .. :try_end_1ec} :catch_1ed

    goto :goto_1f6

    :catch_1ed
    move-exception v0

    goto :goto_1fe

    :catch_1ef
    move-exception v0

    .line 88
    :try_start_1f0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v14, 0x0

    .line 89
    new-array v0, v14, [B

    .line 75
    :goto_1f6
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1fd
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1f0 .. :try_end_1fd} :catch_1ed

    goto :goto_202

    .line 77
    :goto_1fe
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    .line 195
    :goto_202
    invoke-interface {v11, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 196
    const-string v11, "utf8"

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "readString(...)"

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "\n"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v18

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v22}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object/from16 v17, v1

    .line 197
    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v4

    const-string v4, "arabicforms.txt"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_241
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_24f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_241 .. :try_end_24f} :catch_25b

    .line 85
    :try_start_24f
    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 86
    invoke-virtual {v4, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_25a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24f .. :try_end_25a} :catch_25d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_24f .. :try_end_25a} :catch_25b

    goto :goto_264

    :catch_25b
    move-exception v0

    goto :goto_26c

    :catch_25d
    move-exception v0

    .line 88
    :try_start_25e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v4, 0x0

    .line 89
    new-array v0, v4, [B

    .line 75
    :goto_264
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_26b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_25e .. :try_end_26b} :catch_25b

    goto :goto_271

    .line 77
    :goto_26c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v0, v17

    .line 197
    :goto_271
    invoke-interface {v1, v0}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/files/FileHandle;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v20

    const/16 v23, 0x6

    const/16 v24, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v24}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 194
    invoke-virtual {v9, v14, v0}, Linfo/flowersoft/theotown/util/ArabicShaping;->init(Ljava/util/List;Ljava/util/List;)V

    .line 204
    sget v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSION_CODE:I

    if-ne v10, v0, :cond_2df

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":RDeypbP5vI486VUJw75L5FtWsOf6i6DD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_2a6
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2b4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2a6 .. :try_end_2b4} :catch_2c0

    .line 85
    :try_start_2b4
    invoke-static/range {v18 .. v18}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 86
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2bf
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2b4 .. :try_end_2bf} :catch_2c2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b4 .. :try_end_2bf} :catch_2c0

    goto :goto_2c9

    :catch_2c0
    move-exception v0

    goto :goto_2d2

    :catch_2c2
    move-exception v0

    .line 88
    :try_start_2c3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v14, 0x0

    .line 89
    new-array v0, v14, [B

    .line 75
    :goto_2c9
    invoke-static {v0}, Linfo/flowersoft/theotown/util/Hex;->bin2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2d0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c3 .. :try_end_2d0} :catch_2c0

    move-object v1, v0

    goto :goto_2d7

    .line 77
    :goto_2d2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object/from16 v1, v17

    .line 205
    :goto_2d7
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->VERSIONH:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e3

    :cond_2df
    const/4 v14, 0x0

    .line 206
    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 209
    :cond_2e3
    sput-object v8, Linfo/flowersoft/theotown/resources/Resources;->KEYS:Linfo/flowersoft/theotown/util/json/JSONObject;

    .line 210
    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->cleanupFiles()V

    .line 211
    sget-object v0, Linfo/flowersoft/theotown/resources/ManagedCache;->INSTANCE:Linfo/flowersoft/theotown/resources/ManagedCache;

    invoke-static {}, Linfo/flowersoft/theotown/resources/Resources;->getManagedCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "getManagedCacheDir(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/ManagedCache;->load(Ljava/io/File;)V

    .line 213
    invoke-static {}, Linfo/flowersoft/theotown/resources/ConfigManager;->getInstance()Linfo/flowersoft/theotown/resources/ConfigManager;

    move-result-object v0

    if-eqz v0, :cond_302

    .line 214
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ConfigManager;->fetchLocal()V

    .line 215
    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ConfigManager;->fetchOnline()V

    .line 218
    :cond_302
    invoke-static {}, Linfo/flowersoft/theotown/resources/InternetTime;->getInstance()Linfo/flowersoft/theotown/resources/InternetTime;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/resources/InternetTime;->update(Z)V

    .line 220
    invoke-static {}, Lio/blueflower/stapel2d/util/SessionLogger;->logSession()V

    .line 222
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getDefaultBackendConnector()Linfo/flowersoft/theotown/backend/BackendConnector;

    move-result-object v0

    new-instance v1, Linfo/flowersoft/theotown/backend/ConcreteUserStore;

    invoke-direct {v1, v8}, Linfo/flowersoft/theotown/backend/ConcreteUserStore;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    invoke-static {v0, v1, v8}, Linfo/flowersoft/theotown/backend/Backend;->init(Linfo/flowersoft/theotown/backend/BackendConnector;Linfo/flowersoft/theotown/backend/UserStore;Linfo/flowersoft/theotown/util/json/JSONObject;)V

    .line 224
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->load()V

    .line 226
    invoke-static {}, Linfo/flowersoft/theotown/resources/ExperimentManager;->getInstance()Linfo/flowersoft/theotown/resources/ExperimentManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ExperimentManager;->init()V

    .line 227
    invoke-static {}, Linfo/flowersoft/theotown/resources/NewContentManager;->init()V

    .line 228
    invoke-static {}, Linfo/flowersoft/theotown/resources/Features;->getInstance()Linfo/flowersoft/theotown/resources/Features;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/Features;->load()V

    .line 229
    invoke-static {}, Linfo/flowersoft/theotown/resources/GlobalTransitionVariables;->init()V

    .line 230
    invoke-static {}, Linfo/flowersoft/theotown/resources/ScriptingManager;->getInstance()Linfo/flowersoft/theotown/resources/ScriptingManager;

    move-result-object v0

    invoke-virtual {v0}, Linfo/flowersoft/theotown/resources/ScriptingManager;->init()V

    .line 233
    sget-object v0, Linfo/flowersoft/theotown/util/ThemeManager;->INSTANCE:Linfo/flowersoft/theotown/util/ThemeManager;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/util/ThemeManager;->update()V

    .line 235
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundPlayer;->init()V

    .line 236
    invoke-static {}, Linfo/flowersoft/theotown/resources/MusicBox;->init()V

    .line 238
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v0

    const-string v1, "getInsetsTRBL(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Linfo/flowersoft/theotown/TheoTownX;->cutoutTopRightBottomLeft:[F

    return-void

    :catchall_35c
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 41
    :try_start_360
    throw v2
    :try_end_361
    .catchall {:try_start_360 .. :try_end_361} :catchall_361

    :catchall_361
    move-exception v0

    invoke-static {v11, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_366
    move-exception v0

    move-object/from16 v1, p0

    move-object v2, v0

    .line 41
    :try_start_36a
    throw v2
    :try_end_36b
    .catchall {:try_start_36a .. :try_end_36b} :catchall_36b

    :catchall_36b
    move-exception v0

    invoke-static {v8, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public pause()V
    .registers 3

    .line 452
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_b

    goto :goto_1b

    .line 454
    :cond_b
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->onPauseApp()V

    .line 455
    :cond_12
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->onPause()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public render()V
    .registers 11

    .line 292
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->isRequestRestart()Z

    move-result v0

    if-ne v0, v1, :cond_45

    .line 293
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v1

    if-eqz v1, :cond_3a

    const/4 v0, 0x0

    .line 294
    invoke-virtual {v1, v0, v0, v0}, Lio/blueflower/stapel2d/drawing/Engine;->clear(III)V

    .line 296
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v0, :cond_20

    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    if-eqz v2, :cond_3a

    .line 298
    iget-object v2, v0, Lio/blueflower/stapel2d/gui/Skin;->fontBig:Lio/blueflower/stapel2d/drawing/Font;

    .line 301
    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {v1}, Lio/blueflower/stapel2d/drawing/Engine;->getVirtualHeight()I

    move-result v0

    int-to-float v7, v0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f000000    # 0.5f

    .line 297
    const-string v3, "Restarting..."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v9}, Lio/blueflower/stapel2d/drawing/Engine;->drawText(Lio/blueflower/stapel2d/drawing/Font;Ljava/lang/String;FFFFFF)V

    .line 308
    :cond_3a
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda3;-><init>(Linfo/flowersoft/theotown/TheoTownX;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void

    .line 312
    :cond_45
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->isEmpty()Z

    move-result v0

    if-ne v0, v1, :cond_5c

    .line 313
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "close app"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 314
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void

    .line 318
    :cond_5c
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 319
    iget-object v1, p0, Linfo/flowersoft/theotown/TheoTownX;->cutoutTopRightBottomLeft:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_7f

    .line 320
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Linfo/flowersoft/theotown/TheoTownX;->cutoutTopRightBottomLeft:[F

    .line 321
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_7f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    .line 324
    :cond_7f
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_91

    .line 325
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v1

    invoke-virtual {v1}, Lio/blueflower/stapel2d/touch/TouchMapper;->update()V

    .line 326
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v0

    invoke-virtual {v0}, Lio/blueflower/stapel2d/key/KeyMapper;->update()V

    .line 329
    :cond_91
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v0

    if-eqz v0, :cond_a8

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v0

    if-eqz v0, :cond_a8

    .line 330
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->update()V

    .line 332
    :cond_a8
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->gamesService:Linfo/flowersoft/theotown/crossplatform/GamesService;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/GamesService;->runCallbacks()V

    return-void
.end method

.method public resize(II)V
    .registers 7

    .line 424
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-nez v0, :cond_5

    goto :goto_59

    .line 426
    :cond_5
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    .line 427
    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v2

    if-eqz v1, :cond_59

    if-nez v2, :cond_16

    goto :goto_59

    .line 434
    :cond_16
    sget-boolean v3, Linfo/flowersoft/theotown/resources/Settings;->fullscreen:Z

    if-nez v3, :cond_1e

    .line 435
    sput p1, Linfo/flowersoft/theotown/resources/Settings;->windowWidth:I

    .line 436
    sput p2, Linfo/flowersoft/theotown/resources/Settings;->windowHeight:I

    .line 440
    :cond_1e
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/key/KeyMapper;->flush()V

    .line 441
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object p1

    invoke-virtual {p1}, Lio/blueflower/stapel2d/touch/TouchMapper;->flush()V

    .line 443
    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getWidth()I

    move-result p1

    if-ne p1, v1, :cond_38

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getHeight()I

    move-result p1

    if-eq p1, v2, :cond_59

    .line 444
    :cond_38
    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->onSizeChange(II)V

    .line 445
    sget-object p1, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {p1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->getInsetsTRBL()[F

    move-result-object p1

    const-string p2, "getInsetsTRBL(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p1

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    const-string p2, "copyOf(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Linfo/flowersoft/theotown/TheoTownX;->cutoutTopRightBottomLeft:[F

    .line 446
    sget-object p1, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->refreshCurrentStage()V

    :cond_59
    :goto_59
    return-void
.end method

.method public final restart()V
    .registers 3

    .line 104
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->dispose()V

    .line 105
    invoke-virtual {p0}, Linfo/flowersoft/theotown/TheoTownX;->create()V

    .line 106
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Linfo/flowersoft/theotown/TheoTownX;->resize(II)V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 459
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v0, v1, :cond_b

    goto :goto_28

    .line 460
    :cond_b
    sget-boolean v0, Linfo/flowersoft/theotown/resources/Settings;->fullyLoaded:Z

    if-eqz v0, :cond_18

    .line 461
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 462
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    .line 465
    :cond_18
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->stack:Lio/blueflower/stapel2d/gamestack/GameStack;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->onResumeApp()V

    .line 466
    :cond_1f
    invoke-static {}, Linfo/flowersoft/theotown/backend/Backend;->getInstance()Linfo/flowersoft/theotown/backend/Backend;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Linfo/flowersoft/theotown/backend/Backend;->onResume()V

    :cond_28
    :goto_28
    return-void
.end method

.method public final reuseGameStack(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 5

    .line 139
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->analytics:Linfo/flowersoft/theotown/crossplatform/Analytics;

    const-string v1, "create() reuse"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/Analytics;->writeToLog(Ljava/lang/String;)V

    .line 141
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Linfo/flowersoft/theotown/resources/Settings;->startCounter:I

    .line 142
    invoke-static {}, Linfo/flowersoft/theotown/resources/Settings;->save()V

    .line 143
    sget-object v0, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getEngine()Lio/blueflower/stapel2d/drawing/Engine;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 144
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->setUp()V

    .line 145
    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getBackBufferWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getBackBufferHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->resize(II)V

    .line 146
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/blueflower/stapel2d/drawing/Engine;->setVirtualSize(II)V

    .line 147
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->reset()V

    .line 148
    invoke-virtual {v0}, Lio/blueflower/stapel2d/drawing/Engine;->getDefaultShader()Lio/blueflower/stapel2d/drawing/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/blueflower/stapel2d/drawing/Engine;->setShader(Lio/blueflower/stapel2d/drawing/Shader;)V

    .line 151
    :cond_41
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    const-string v1, "Reuse previous state"

    invoke-interface {v0, v1}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->showToast(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lio/blueflower/stapel2d/gamestack/GameStack;->rebind()V

    .line 154
    sget-object v0, Linfo/flowersoft/theotown/resources/Resources;->skin:Lio/blueflower/stapel2d/gui/Skin;

    if-eqz v0, :cond_5c

    .line 156
    new-instance v0, Linfo/flowersoft/theotown/stages/ReuseContextStage;

    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Linfo/flowersoft/theotown/stages/ReuseContextStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;)V

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    :cond_5c
    return-void
.end method

.method public final setupInput()Lcom/badlogic/gdx/Input;
    .registers 8

    const/4 v0, 0x1

    .line 160
    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    if-eqz v1, :cond_35

    const/4 v2, 0x4

    .line 161
    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Input;->setCatchKey(IZ)V

    const/16 v2, 0x52

    .line 162
    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/Input;->setCatchKey(IZ)V

    .line 163
    new-instance v2, Lcom/badlogic/gdx/InputMultiplexer;

    sget-object v3, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getTouch()Lio/blueflower/stapel2d/touch/TouchMapper;

    move-result-object v3

    iget-object v3, v3, Lio/blueflower/stapel2d/touch/TouchMapper;->processor:Lcom/badlogic/gdx/InputProcessor;

    sget-object v4, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;->getKey()Lio/blueflower/stapel2d/key/KeyMapper;

    move-result-object v4

    iget-object v4, v4, Lio/blueflower/stapel2d/key/KeyMapper;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/4 v5, 0x2

    new-array v5, v5, [Lcom/badlogic/gdx/InputProcessor;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v0

    invoke-direct {v2, v5}, Lcom/badlogic/gdx/InputMultiplexer;-><init>([Lcom/badlogic/gdx/InputProcessor;)V

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V

    return-object v1

    :cond_35
    const/4 v0, 0x0

    return-object v0
.end method

.method public final testExceptionStage()Linfo/flowersoft/theotown/stages/WaitingStage;
    .registers 12

    .line 485
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage;

    .line 486
    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 487
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_AIRPORT_ZONE:I

    .line 488
    new-instance v8, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda0;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object v4

    .line 495
    new-instance v5, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda1;-><init>()V

    .line 498
    new-instance v6, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda2;-><init>()V

    const/4 v7, 0x0

    .line 485
    const-string v3, "Loading something"

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

.method public final testTerrainGen(Lio/blueflower/stapel2d/gamestack/GameStack;)V
    .registers 3

    .line 505
    new-instance v0, Linfo/flowersoft/theotown/TheoTownX$testTerrainGen$1;

    invoke-direct {v0}, Linfo/flowersoft/theotown/TheoTownX$testTerrainGen$1;-><init>()V

    invoke-virtual {p1, v0}, Lio/blueflower/stapel2d/gamestack/GameStack;->push(Lio/blueflower/stapel2d/gamestack/Stage;)V

    return-void
.end method

.method public final testWaitingStage()Linfo/flowersoft/theotown/stages/WaitingStage;
    .registers 12

    .line 470
    new-instance v0, Linfo/flowersoft/theotown/stages/WaitingStage;

    .line 471
    sget-object v1, Linfo/flowersoft/theotown/TheoTownX;->context:Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    .line 472
    sget v2, Linfo/flowersoft/theotown/resources/Resources;->FRAME_AIRPORT_ZONE:I

    .line 473
    new-instance v8, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda5;

    invoke-direct {v8}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda5;-><init>()V

    const/16 v9, 0x1e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v10}, Lkotlin/concurrent/ThreadsKt;->thread$default(ZZLjava/lang/ClassLoader;Ljava/lang/String;ILkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Thread;

    move-result-object v4

    .line 481
    new-instance v6, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda6;-><init>()V

    const/4 v7, 0x0

    .line 470
    const-string v3, "Loading something"

    invoke-direct/range {v0 .. v7}, Linfo/flowersoft/theotown/stages/WaitingStage;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;ILjava/lang/String;Ljava/lang/Thread;Ljava/lang/Runnable;Linfo/flowersoft/theotown/util/ProgressProvider;Lio/blueflower/stapel2d/util/Getter;)V

    return-object v0
.end method

###### Class info.flowersoft.theotown.TheoTownX.Companion (info.flowersoft.theotown.TheoTownX$Companion)
.class public final Linfo/flowersoft/theotown/TheoTownX$Companion;
.super Ljava/lang/Object;
.source "TheoTownX.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/TheoTownX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Linfo/flowersoft/theotown/TheoTownX$Companion;-><init>()V

    return-void
.end method

###### Class info.flowersoft.theotown.TheoTownX.AnonymousClass1 (info.flowersoft.theotown.TheoTownX$testTerrainGen$1)
.class public final Linfo/flowersoft/theotown/TheoTownX$testTerrainGen$1;
.super Lio/blueflower/stapel2d/gamestack/Stage;
.source "TheoTownX.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linfo/flowersoft/theotown/TheoTownX;->testTerrainGen(Lio/blueflower/stapel2d/gamestack/GameStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 505
    invoke-direct {p0}, Lio/blueflower/stapel2d/gamestack/Stage;-><init>()V

    return-void
.end method

.method public static final enter$checkLevels(Linfo/flowersoft/theotown/city/City;)Z
    .registers 12

    .line 529
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ge v3, v0, :cond_44

    .line 530
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    sub-int/2addr v4, v1

    move v5, v2

    :goto_10
    if-ge v5, v4, :cond_41

    .line 531
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v5, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    .line 532
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v8, v3}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v7

    .line 533
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v5, v10}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v5

    sub-int/2addr v7, v6

    .line 534
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v9, 0x2

    if-ge v7, v9, :cond_40

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v5, v9, :cond_3e

    goto :goto_40

    :cond_3e
    move v5, v8

    goto :goto_10

    :cond_40
    :goto_40
    return v2

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_44
    return v1
.end method

.method public static final enter$heightDiff(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/City;)I
    .registers 11

    .line 518
    iget-object v0, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v0}, Linfo/flowersoft/theotown/city/City;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    if-ge v2, v0, :cond_33

    .line 519
    iget-object v4, p0, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    invoke-virtual {v4}, Linfo/flowersoft/theotown/city/City;->getWidth()I

    move-result v4

    move v5, v1

    :goto_12
    if-ge v5, v4, :cond_30

    .line 521
    invoke-virtual {p1}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v6

    .line 522
    invoke-virtual {p2}, Linfo/flowersoft/theotown/city/City;->getTiles()Linfo/flowersoft/theotown/city/Tiles;

    move-result-object v7

    invoke-virtual {v7, v5, v2}, Linfo/flowersoft/theotown/city/Tiles;->getBaseTerrainHeight(II)I

    move-result v7

    sub-int/2addr v6, v7

    .line 521
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_33
    return v3
.end method


# virtual methods
.method public enter()V
    .registers 9

    .line 510
    new-instance v0, Linfo/flowersoft/theotown/util/CityGenerator;

    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->access$getContext$cp()Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/util/CityGenerator;-><init>(Lio/blueflower/stapel2d/gamestack/Stapel2DGameContext;Z)V

    .line 511
    const-string v1, "easterisland#91040"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/util/CityGenerator;->setSeed(Ljava/lang/String;)V

    .line 512
    new-instance v1, Linfo/flowersoft/theotown/util/ProgressVariable;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Linfo/flowersoft/theotown/util/ProgressVariable;-><init>(F)V

    .line 513
    new-instance v3, Lio/blueflower/stapel2d/util/ValueProperty;

    const-string v4, ""

    invoke-direct {v3, v4}, Lio/blueflower/stapel2d/util/ValueProperty;-><init>(Ljava/lang/Object;)V

    .line 514
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v4

    :goto_20
    const/16 v5, 0x3e8

    if-ge v2, v5, :cond_51

    .line 543
    invoke-virtual {v0, v1, v3}, Linfo/flowersoft/theotown/util/CityGenerator;->generate(Linfo/flowersoft/theotown/util/ProgressVariable;Lio/blueflower/stapel2d/util/Setter;)Linfo/flowersoft/theotown/creation/CityCreator$CityData;

    move-result-object v5

    iget-object v5, v5, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    .line 544
    iget-object v6, v4, Linfo/flowersoft/theotown/creation/CityCreator$CityData;->city:Linfo/flowersoft/theotown/city/City;

    const-string v7, "city"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v6, v5}, Linfo/flowersoft/theotown/TheoTownX$testTerrainGen$1;->enter$heightDiff(Linfo/flowersoft/theotown/creation/CityCreator$CityData;Linfo/flowersoft/theotown/city/City;Linfo/flowersoft/theotown/city/City;)I

    move-result v6

    const-string v7, "Check failed."

    if-nez v6, :cond_4b

    .line 545
    invoke-static {v5}, Linfo/flowersoft/theotown/TheoTownX$testTerrainGen$1;->enter$checkLevels(Linfo/flowersoft/theotown/city/City;)Z

    move-result v5

    if-eqz v5, :cond_45

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_4b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_51
    sget-object v0, Linfo/flowersoft/theotown/crossplatform/TheoTown;->runtimeFeatures:Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;

    invoke-interface {v0}, Linfo/flowersoft/theotown/crossplatform/RuntimeFeatures;->closeApp()V

    return-void
.end method

.method public leave()V
    .registers 1

    .line 0
    return-void
.end method

.method public prepare()V
    .registers 1

    .line 0
    return-void
.end method

.method public update()V
    .registers 1

    .line 0
    return-void
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda0 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$BtkWnyVxX6-k2xPjNEP-ylLq3Tc()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda1 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda1;
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
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$KMiC_q9bztBPelVSKt-FnIJ_p7s()V

    return-void
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda2 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$K8gLqNB5tzUBmh0fpd58GWxsEhY()F

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda3 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Linfo/flowersoft/theotown/TheoTownX;


# direct methods
.method public synthetic constructor <init>(Linfo/flowersoft/theotown/TheoTownX;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/TheoTownX;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda3;->f$0:Linfo/flowersoft/theotown/TheoTownX;

    invoke-static {v0}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$XgguGX352ZyJxO82_BhYPU_E9HY(Linfo/flowersoft/theotown/TheoTownX;)V

    return-void
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda4 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/AssetBasedTranslationManager$FileResolver;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final resolve(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;
    .registers 2

    .line 0
    invoke-static {p1}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$9-mJFXHuVaYc9lq6JPA7Nd40iJw(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object p1

    return-object p1
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda5 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$sIxih-w6QHS70JXFbKerCQDSbug()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

###### Class info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda6 (info.flowersoft.theotown.TheoTownX$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/TheoTownX$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/util/ProgressProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgress()F
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/TheoTownX;->$r8$lambda$9FlyCbJHbYMZ_DTBOXAGu7PFQz8()F

    move-result v0

    return v0
.end method
