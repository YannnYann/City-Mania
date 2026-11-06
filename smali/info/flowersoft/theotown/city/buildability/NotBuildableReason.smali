###### Class info.flowersoft.theotown.city.buildability.NotBuildableReason (info.flowersoft.theotown.city.buildability.NotBuildableReason)
.class public final enum Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;
.super Ljava/lang/Enum;
.source "NotBuildableReason.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Land:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum MaxCount:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum NoMoney:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

.field public static final enum Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;


# instance fields
.field public final nameId:I


# direct methods
.method public static final synthetic $values()[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;
    .registers 8

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v1, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Land:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v2, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v3, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v4, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->MaxCount:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v5, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v6, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->NoMoney:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    sget-object v7, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 7
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x0

    const/16 v2, 0x528

    const-string v3, "Generic"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Generic:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 8
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x1

    const/16 v2, 0xb42

    const-string v3, "Land"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Land:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 9
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x2

    const/16 v2, 0x6cd

    const-string v3, "Water"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Water:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 10
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x3

    const/16 v2, 0x4f9

    const-string v3, "Zone"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Zone:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 11
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x4

    const/16 v2, 0x17c

    const-string v3, "MaxCount"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->MaxCount:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x5

    const/16 v2, 0x1f

    const-string v3, "Terrain"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Terrain:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 13
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x6

    const/16 v2, 0x660

    const-string v3, "NoMoney"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->NoMoney:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    const/4 v1, 0x7

    const/16 v2, 0x6b7

    const-string v3, "Blocked"

    invoke-direct {v0, v3, v1, v2}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;-><init>(Ljava/lang/String;II)V

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->Blocked:Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    invoke-static {}, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->$values()[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->$VALUES:[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->nameId:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;
    .registers 2

    .line 0
    const-class v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;
    .registers 1

    .line 0
    sget-object v0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->$VALUES:[Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;

    return-object v0
.end method


# virtual methods
.method public final getNameId()I
    .registers 2

    .line 6
    iget v0, p0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->nameId:I

    return v0
.end method

.method public final localize(Lio/blueflower/stapel2d/gamestack/Translator;)Ljava/lang/String;
    .registers 3

    const-string v0, "translator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget v0, p0, Linfo/flowersoft/theotown/city/buildability/NotBuildableReason;->nameId:I

    invoke-interface {p1, v0}, Lio/blueflower/stapel2d/gamestack/Translator;->translate(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "translate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
