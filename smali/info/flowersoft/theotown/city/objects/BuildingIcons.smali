###### Class info.flowersoft.theotown.city.objects.BuildingIcons (info.flowersoft.theotown.city.objects.BuildingIcons)
.class public final Linfo/flowersoft/theotown/city/objects/BuildingIcons;
.super Ljava/lang/Object;
.source "BuildingIcons.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildingIcons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildingIcons.kt\ninfo/flowersoft/theotown/city/objects/BuildingIcons\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n1#2:62\n2199#3,2:63\n*S KotlinDebug\n*F\n+ 1 BuildingIcons.kt\ninfo/flowersoft/theotown/city/objects/BuildingIcons\n*L\n42#1:63,2\n*E\n"
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

.field public static final crimeBurglary$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final crimeGraffiti$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final crimeMurder$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final crimeRiot$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final deadBodies$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final deadBodiesOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final illness$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final noEnergy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final noRoad$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final noWater$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final overloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final slots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;",
            ">;"
        }
    .end annotation
.end field

.field public static final unhappy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final waste$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

.field public static final wasteOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;


# direct methods
.method static constructor <clinit>()V
    .registers 18

    .line 0
    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    const-string v2, "illness"

    const-string v3, "getIllness()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v2, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v3, "noRoad"

    const-string v5, "getNoRoad()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v2, v1, v3, v5, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v3, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v5, "noEnergy"

    const-string v6, "getNoEnergy()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v3, v1, v5, v6, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v6, "noWater"

    const-string v7, "getNoWater()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v5, v1, v6, v7, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v6, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v7, "overloaded"

    const-string v8, "getOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v6, v1, v7, v8, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v8, "unhappy"

    const-string v9, "getUnhappy()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v7, v1, v8, v9, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v8, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v9, "waste"

    const-string v10, "getWaste()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v8, v1, v9, v10, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v9, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v10, "wasteOverloaded"

    const-string v11, "getWasteOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v9, v1, v10, v11, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v10, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v11, "deadBodies"

    const-string v12, "getDeadBodies()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v10, v1, v11, v12, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v11, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v12, "deadBodiesOverloaded"

    const-string v13, "getDeadBodiesOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v11, v1, v12, v13, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v12, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v13, "crimeGraffiti"

    const-string v14, "getCrimeGraffiti()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v12, v1, v13, v14, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v13, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v14, "crimeBurglary"

    const-string v15, "getCrimeBurglary()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v13, v1, v14, v15, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v14, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v15, "crimeMurder"

    move-object/from16 v16, v0

    const-string v0, "getCrimeMurder()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v14, v1, v15, v0, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v15, "crimeRiot"

    move-object/from16 v17, v2

    const-string v2, "getCrimeRiot()Linfo/flowersoft/theotown/draft/AnimationDraft;"

    invoke-direct {v0, v1, v15, v2, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v1, 0xe

    new-array v1, v1, [Lkotlin/reflect/KProperty;

    aput-object v16, v1, v4

    const/4 v2, 0x1

    aput-object v17, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v5, v1, v2

    const/4 v2, 0x4

    aput-object v6, v1, v2

    const/4 v2, 0x5

    aput-object v7, v1, v2

    const/4 v2, 0x6

    aput-object v8, v1, v2

    const/4 v2, 0x7

    aput-object v9, v1, v2

    const/16 v2, 0x8

    aput-object v10, v1, v2

    const/16 v2, 0x9

    aput-object v11, v1, v2

    const/16 v2, 0xa

    aput-object v12, v1, v2

    const/16 v2, 0xb

    aput-object v13, v1, v2

    const/16 v2, 0xc

    aput-object v14, v1, v2

    const/16 v2, 0xd

    aput-object v0, v1, v2

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    invoke-direct {v0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;-><init>()V

    sput-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->INSTANCE:Linfo/flowersoft/theotown/city/objects/BuildingIcons;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->slots:Ljava/util/List;

    const-string v1, "$buildingicon_illness00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->illness$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_noroad00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noRoad$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_noenergy00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noEnergy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_nowater00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noWater$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_overloaded00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->overloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_unhappy00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->unhappy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_waste00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->waste$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_wasteoverloaded00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->wasteOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_deadbodies00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->deadBodies$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_deadbodiesoverloaded00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->deadBodiesOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_crimegraffiti00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeGraffiti$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_crimeburglary00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeBurglary$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_crimemurder00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v1

    sput-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeMurder$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const-string v1, "$buildingicon_crimeriot00"

    invoke-virtual {v0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeRiot$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final dispose()V
    .registers 3

    .line 42
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->slots:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 2199
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    .line 42
    invoke-virtual {v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->reset()V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public final getCrimeBurglary()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 33
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeBurglary$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xb

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getCrimeGraffiti()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 32
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeGraffiti$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getCrimeMurder()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 34
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeMurder$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xc

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getCrimeRiot()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 35
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->crimeRiot$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getDeadBodies()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 30
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->deadBodies$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getDeadBodiesOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 31
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->deadBodiesOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getIllness()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 22
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->illness$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getNoEnergy()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 24
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noEnergy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getNoRoad()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 23
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noRoad$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getNoWater()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 25
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->noWater$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 26
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->overloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getUnhappy()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 27
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->unhappy$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getWaste()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 28
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->waste$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final getWasteOverloaded()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4

    .line 29
    sget-object v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->wasteOverloaded$delegate:Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    sget-object v1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object v0

    return-object v0
.end method

.method public final resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;
    .registers 4

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    sget-object p1, Linfo/flowersoft/theotown/city/objects/BuildingIcons;->slots:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

###### Class info.flowersoft.theotown.city.objects.BuildingIcons.DraftSlot (info.flowersoft.theotown.city.objects.BuildingIcons$DraftSlot)
.class final Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;
.super Ljava/lang/Object;
.source "BuildingIcons.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/city/objects/BuildingIcons;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DraftSlot"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBuildingIcons.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BuildingIcons.kt\ninfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,61:1\n1#2:62\n*E\n"
.end annotation


# instance fields
.field public _draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

.field public final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 4

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public static synthetic copy$default(Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;ILjava/lang/Object;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;
    .registers 5

    .line 0
    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    :cond_c
    invoke-virtual {p0, p1, p2}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->copy(Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;)Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;
    .registers 4

    .line 0
    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    invoke-direct {v0, p1, p2}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;-><init>(Ljava/lang/String;Linfo/flowersoft/theotown/draft/AnimationDraft;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    iget-object v3, p1, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    iget-object p1, p1, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getDraft()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 3

    .line 52
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-nez v0, :cond_15

    .line 53
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    const-class v1, Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-static {v0, v1}, Linfo/flowersoft/theotown/resources/Drafts;->getOrThrow(Ljava/lang/String;Ljava/lang/Class;)Linfo/flowersoft/theotown/draft/Draft;

    move-result-object v0

    check-cast v0, Linfo/flowersoft/theotown/draft/AnimationDraft;

    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    .line 52
    const-string v1, "let(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_15
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Linfo/flowersoft/theotown/draft/AnimationDraft;"
        }
    .end annotation

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->getDraft()Linfo/flowersoft/theotown/draft/AnimationDraft;

    move-result-object p1

    return-object p1
.end method

.method public final get_draft()Linfo/flowersoft/theotown/draft/AnimationDraft;
    .registers 2

    .line 50
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 0
    iget-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {v1}, Linfo/flowersoft/theotown/draft/Draft;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    return v0
.end method

.method public final reset()V
    .registers 2

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public final set_draft(Linfo/flowersoft/theotown/draft/AnimationDraft;)V
    .registers 2

    .line 50
    iput-object p1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DraftSlot(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", _draft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Linfo/flowersoft/theotown/city/objects/BuildingIcons$DraftSlot;->_draft:Linfo/flowersoft/theotown/draft/AnimationDraft;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
