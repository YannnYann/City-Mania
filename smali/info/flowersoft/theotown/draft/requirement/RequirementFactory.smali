###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory (info.flowersoft.theotown.draft.requirement.RequirementFactory)
.class public abstract enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.super Ljava/lang/Enum;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum BUILDING:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum CONDITION:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum FEATURE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum HABITANT_COUNT:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum RANK:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

.field public static final enum UPGRADE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
    .registers 6

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->HABITANT_COUNT:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    sget-object v1, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->BUILDING:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    sget-object v2, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->RANK:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    sget-object v3, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->FEATURE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    sget-object v4, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->CONDITION:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    sget-object v5, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->UPGRADE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    filled-new-array/range {v0 .. v5}, [Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 11
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;

    const-string v1, "HABITANT_COUNT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->HABITANT_COUNT:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 17
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$2;

    const-string v1, "BUILDING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->BUILDING:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 23
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$3;

    const-string v1, "RANK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->RANK:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 29
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$4;

    const-string v1, "FEATURE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->FEATURE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 35
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$5;

    const-string v1, "CONDITION"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->CONDITION:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 41
    new-instance v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$6;

    const-string v1, "UPGRADE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->UPGRADE:Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    .line 9
    invoke-static {}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->$values()[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->$VALUES:[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V
    .registers 4

    .line 9
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 9
    const-class v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
    .registers 1

    .line 9
    sget-object v0, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->$VALUES:[Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;

    return-object v0
.end method


# virtual methods
.method public abstract getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass1 (info.flowersoft.theotown.draft.requirement.RequirementFactory$1)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 14
    new-instance p2, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/draft/requirement/HabitantCountSingleRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-object p2
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass2 (info.flowersoft.theotown.draft.requirement.RequirementFactory$2)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$2;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance p2, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/draft/requirement/BuildingRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-object p2
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass3 (info.flowersoft.theotown.draft.requirement.RequirementFactory$3)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$3;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 26
    new-instance p3, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;

    invoke-direct {p3, p1, p2}, Linfo/flowersoft/theotown/draft/requirement/RankRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;)V

    return-object p3
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass4 (info.flowersoft.theotown.draft.requirement.RequirementFactory$4)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$4;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 32
    new-instance p2, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/draft/requirement/FeatureRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-object p2
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass5 (info.flowersoft.theotown.draft.requirement.RequirementFactory$5)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$5;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 38
    new-instance p2, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;

    invoke-direct {p2, p1, p3}, Linfo/flowersoft/theotown/draft/requirement/ConditionRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;Z)V

    return-object p2
.end method

###### Class info.flowersoft.theotown.draft.requirement.RequirementFactory.AnonymousClass6 (info.flowersoft.theotown.draft.requirement.RequirementFactory$6)
.class final enum Linfo/flowersoft/theotown/draft/requirement/RequirementFactory$6;
.super Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.source "RequirementFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/draft/requirement/RequirementFactory;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/draft/requirement/RequirementFactory$1;)V

    return-void
.end method


# virtual methods
.method public getRequirement(Linfo/flowersoft/theotown/util/json/JSONObject;Ljava/lang/String;Z)Linfo/flowersoft/theotown/draft/requirement/SingleRequirement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Linfo/flowersoft/theotown/util/json/JSONException;
        }
    .end annotation

    .line 44
    new-instance p2, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;

    invoke-direct {p2, p1}, Linfo/flowersoft/theotown/draft/requirement/UpgradeRequirement;-><init>(Linfo/flowersoft/theotown/util/json/JSONObject;)V

    return-object p2
.end method
