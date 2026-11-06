###### Class info.flowersoft.theotown.stages.FileType (info.flowersoft.theotown.stages.FileType)
.class public final enum Linfo/flowersoft/theotown/stages/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linfo/flowersoft/theotown/stages/FileType$IntProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/stages/FileType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum CITY:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum CITY_BACKUP:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum IMAGE:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum PLUGIN:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum SOUND:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum SPECIAL:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum TEXT:Linfo/flowersoft/theotown/stages/FileType;

.field public static final enum UNKNOWN:Linfo/flowersoft/theotown/stages/FileType;

.field public static cachedValues:[Linfo/flowersoft/theotown/stages/FileType;


# instance fields
.field public final extensions:Ljava/lang/String;

.field public final icon:Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public static synthetic $r8$lambda$--c6DLWD4y1rR64lzhGll8UPDGI()I
    .registers 1

    .line 18
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_MUSIC:I

    return v0
.end method

.method public static synthetic $r8$lambda$9tSA9TT7pPrNs4X4a0-Bq1fXl2Y()I
    .registers 1

    .line 12
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_DISASTER_NUKE:I

    return v0
.end method

.method public static synthetic $r8$lambda$CnPope4kMsRG037yoyxQNN8V1yc()I
    .registers 1

    .line 13
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CITY:I

    return v0
.end method

.method public static synthetic $r8$lambda$RwHe6hBOuyB5QCe_8WlRyRibBuE()I
    .registers 1

    .line 16
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PLUGIN:I

    return v0
.end method

.method public static synthetic $r8$lambda$duK1yZjht9j_H6h_ZbNyQYaK0CY()I
    .registers 1

    .line 17
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CAMERA:I

    return v0
.end method

.method public static synthetic $r8$lambda$lPn-mIecK3Wycgj8wippxX-scU0()I
    .registers 1

    .line 14
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_CLOCK:I

    return v0
.end method

.method public static synthetic $r8$lambda$sUeP7dg-HNy8EFrAo7H5ouXNg4s()I
    .registers 1

    .line 19
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_PICKLE_COIN:I

    return v0
.end method

.method public static synthetic $r8$lambda$utXad4rEtD7se5qpFukhLg8B5ck()I
    .registers 1

    .line 15
    sget v0, Linfo/flowersoft/theotown/resources/Resources;->ICON_NOTIFICATION:I

    return v0
.end method

.method public static synthetic $values()[Linfo/flowersoft/theotown/stages/FileType;
    .registers 8

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/stages/FileType;->UNKNOWN:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v1, Linfo/flowersoft/theotown/stages/FileType;->CITY:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v2, Linfo/flowersoft/theotown/stages/FileType;->CITY_BACKUP:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v3, Linfo/flowersoft/theotown/stages/FileType;->TEXT:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v4, Linfo/flowersoft/theotown/stages/FileType;->PLUGIN:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v5, Linfo/flowersoft/theotown/stages/FileType;->IMAGE:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v6, Linfo/flowersoft/theotown/stages/FileType;->SOUND:Linfo/flowersoft/theotown/stages/FileType;

    sget-object v7, Linfo/flowersoft/theotown/stages/FileType;->SPECIAL:Linfo/flowersoft/theotown/stages/FileType;

    filled-new-array/range {v0 .. v7}, [Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda0;-><init>()V

    const-string v2, ""

    const-string v3, "UNKNOWN"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->UNKNOWN:Linfo/flowersoft/theotown/stages/FileType;

    .line 13
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, ".+\\.city"

    const-string v3, "CITY"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->CITY:Linfo/flowersoft/theotown/stages/FileType;

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, ".+\\.backup|.+\\.store0|.+\\.store1"

    const-string v3, "CITY_BACKUP"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->CITY_BACKUP:Linfo/flowersoft/theotown/stages/FileType;

    .line 15
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, ".+\\.json|.+\\.lua|.+\\.txt|.+\\.log|.+\\.manifest|.+\\.md"

    const-string v3, "TEXT"

    const/4 v4, 0x3

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->TEXT:Linfo/flowersoft/theotown/stages/FileType;

    .line 16
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, ".+\\.plugin|.+\\.mpf|.+\\.zip|.+\\.ttplugin"

    const-string v3, "PLUGIN"

    const/4 v4, 0x4

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->PLUGIN:Linfo/flowersoft/theotown/stages/FileType;

    .line 17
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, ".+\\.png|.+\\.jpg|.+\\.gif"

    const-string v3, "IMAGE"

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->IMAGE:Linfo/flowersoft/theotown/stages/FileType;

    .line 18
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, ".+\\.mp3|.+\\.ogg|.+\\.wav"

    const-string v3, "SOUND"

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->SOUND:Linfo/flowersoft/theotown/stages/FileType;

    .line 19
    new-instance v0, Linfo/flowersoft/theotown/stages/FileType;

    new-instance v1, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, ".+\\.lby|.+\\.ja"

    const-string v3, "SPECIAL"

    const/4 v4, 0x7

    invoke-direct {v0, v3, v4, v1, v2}, Linfo/flowersoft/theotown/stages/FileType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->SPECIAL:Linfo/flowersoft/theotown/stages/FileType;

    .line 11
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$values()[Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->$VALUES:[Linfo/flowersoft/theotown/stages/FileType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILinfo/flowersoft/theotown/stages/FileType$IntProvider;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Linfo/flowersoft/theotown/stages/FileType$IntProvider;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput-object p3, p0, Linfo/flowersoft/theotown/stages/FileType;->icon:Linfo/flowersoft/theotown/stages/FileType$IntProvider;

    .line 39
    iput-object p4, p0, Linfo/flowersoft/theotown/stages/FileType;->extensions:Ljava/lang/String;

    return-void
.end method

.method public static cachedValues()[Linfo/flowersoft/theotown/stages/FileType;
    .registers 1

    .line 63
    sget-object v0, Linfo/flowersoft/theotown/stages/FileType;->cachedValues:[Linfo/flowersoft/theotown/stages/FileType;

    if-nez v0, :cond_a

    .line 64
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->values()[Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/stages/FileType;->cachedValues:[Linfo/flowersoft/theotown/stages/FileType;

    .line 66
    :cond_a
    sget-object v0, Linfo/flowersoft/theotown/stages/FileType;->cachedValues:[Linfo/flowersoft/theotown/stages/FileType;

    return-object v0
.end method

.method public static resolve(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/FileType;
    .registers 6

    .line 50
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->cachedValues()[Linfo/flowersoft/theotown/stages/FileType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1c

    aget-object v3, v0, v2

    .line 52
    iget-object v4, v3, Linfo/flowersoft/theotown/stages/FileType;->extensions:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v3

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 54
    :cond_1c
    sget-object p0, Linfo/flowersoft/theotown/stages/FileType;->UNKNOWN:Linfo/flowersoft/theotown/stages/FileType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/stages/FileType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    const-class v0, Linfo/flowersoft/theotown/stages/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/stages/FileType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/stages/FileType;
    .registers 1

    .line 11
    sget-object v0, Linfo/flowersoft/theotown/stages/FileType;->$VALUES:[Linfo/flowersoft/theotown/stages/FileType;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/stages/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/stages/FileType;

    return-object v0
.end method


# virtual methods
.method public getIcon()I
    .registers 2

    .line 43
    iget-object v0, p0, Linfo/flowersoft/theotown/stages/FileType;->icon:Linfo/flowersoft/theotown/stages/FileType$IntProvider;

    invoke-interface {v0}, Linfo/flowersoft/theotown/stages/FileType$IntProvider;->get()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType.IntProvider (info.flowersoft.theotown.stages.FileType$IntProvider)
.class public interface abstract Linfo/flowersoft/theotown/stages/FileType$IntProvider;
.super Ljava/lang/Object;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/stages/FileType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IntProvider"
.end annotation


# virtual methods
.method public abstract get()I
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda0 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda0)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$9tSA9TT7pPrNs4X4a0-Bq1fXl2Y()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda1 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda1)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$CnPope4kMsRG037yoyxQNN8V1yc()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda2 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda2)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$lPn-mIecK3Wycgj8wippxX-scU0()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda3 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda3)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$utXad4rEtD7se5qpFukhLg8B5ck()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda4 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda4)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$RwHe6hBOuyB5QCe_8WlRyRibBuE()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda5 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda5)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$duK1yZjht9j_H6h_ZbNyQYaK0CY()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda6 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda6)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$--c6DLWD4y1rR64lzhGll8UPDGI()I

    move-result v0

    return v0
.end method

###### Class info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda7 (info.flowersoft.theotown.stages.FileType$$ExternalSyntheticLambda7)
.class public final synthetic Linfo/flowersoft/theotown/stages/FileType$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Linfo/flowersoft/theotown/stages/FileType$IntProvider;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()I
    .registers 2

    .line 0
    invoke-static {}, Linfo/flowersoft/theotown/stages/FileType;->$r8$lambda$sUeP7dg-HNy8EFrAo7H5ouXNg4s()I

    move-result v0

    return v0
.end method
