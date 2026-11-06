###### Class info.flowersoft.theotown.resources.SoundType (info.flowersoft.theotown.resources.SoundType)
.class public abstract enum Linfo/flowersoft/theotown/resources/SoundType;
.super Ljava/lang/Enum;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Linfo/flowersoft/theotown/resources/SoundType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Linfo/flowersoft/theotown/resources/SoundType;

.field public static final enum AMBIENT:Linfo/flowersoft/theotown/resources/SoundType;

.field public static final enum GAME:Linfo/flowersoft/theotown/resources/SoundType;

.field public static final enum PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

.field public static final enum UI:Linfo/flowersoft/theotown/resources/SoundType;

.field public static final enum WEATHER:Linfo/flowersoft/theotown/resources/SoundType;


# direct methods
.method public static synthetic $values()[Linfo/flowersoft/theotown/resources/SoundType;
    .registers 5

    .line 6
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    sget-object v1, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    sget-object v2, Linfo/flowersoft/theotown/resources/SoundType;->WEATHER:Linfo/flowersoft/theotown/resources/SoundType;

    sget-object v3, Linfo/flowersoft/theotown/resources/SoundType;->AMBIENT:Linfo/flowersoft/theotown/resources/SoundType;

    sget-object v4, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    filled-new-array {v0, v1, v2, v3, v4}, [Linfo/flowersoft/theotown/resources/SoundType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 8
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundType$1;

    const-string v1, "UI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->UI:Linfo/flowersoft/theotown/resources/SoundType;

    .line 14
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundType$2;

    const-string v1, "GAME"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->GAME:Linfo/flowersoft/theotown/resources/SoundType;

    .line 20
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundType$3;

    const-string v1, "WEATHER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundType$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->WEATHER:Linfo/flowersoft/theotown/resources/SoundType;

    .line 26
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundType$4;

    const-string v1, "AMBIENT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundType$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->AMBIENT:Linfo/flowersoft/theotown/resources/SoundType;

    .line 32
    new-instance v0, Linfo/flowersoft/theotown/resources/SoundType$5;

    const-string v1, "PLUGIN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Linfo/flowersoft/theotown/resources/SoundType$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->PLUGIN:Linfo/flowersoft/theotown/resources/SoundType;

    .line 6
    invoke-static {}, Linfo/flowersoft/theotown/resources/SoundType;->$values()[Linfo/flowersoft/theotown/resources/SoundType;

    move-result-object v0

    sput-object v0, Linfo/flowersoft/theotown/resources/SoundType;->$VALUES:[Linfo/flowersoft/theotown/resources/SoundType;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V
    .registers 4

    .line 6
    invoke-direct {p0, p1, p2}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linfo/flowersoft/theotown/resources/SoundType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 6
    const-class v0, Linfo/flowersoft/theotown/resources/SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Linfo/flowersoft/theotown/resources/SoundType;

    return-object p0
.end method

.method public static values()[Linfo/flowersoft/theotown/resources/SoundType;
    .registers 1

    .line 6
    sget-object v0, Linfo/flowersoft/theotown/resources/SoundType;->$VALUES:[Linfo/flowersoft/theotown/resources/SoundType;

    invoke-virtual {v0}, [Linfo/flowersoft/theotown/resources/SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linfo/flowersoft/theotown/resources/SoundType;

    return-object v0
.end method


# virtual methods
.method public abstract getVolume()F
.end method

###### Class info.flowersoft.theotown.resources.SoundType.AnonymousClass1 (info.flowersoft.theotown.resources.SoundType$1)
.class public final enum Linfo/flowersoft/theotown/resources/SoundType$1;
.super Linfo/flowersoft/theotown/resources/SoundType;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundType;
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

    .line 8
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V

    return-void
.end method


# virtual methods
.method public getVolume()F
    .registers 3

    .line 11
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundUILevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.resources.SoundType.AnonymousClass2 (info.flowersoft.theotown.resources.SoundType$2)
.class public final enum Linfo/flowersoft/theotown/resources/SoundType$2;
.super Linfo/flowersoft/theotown/resources/SoundType;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundType;
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

    .line 14
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V

    return-void
.end method


# virtual methods
.method public getVolume()F
    .registers 3

    .line 17
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundGameLevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.resources.SoundType.AnonymousClass3 (info.flowersoft.theotown.resources.SoundType$3)
.class public final enum Linfo/flowersoft/theotown/resources/SoundType$3;
.super Linfo/flowersoft/theotown/resources/SoundType;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundType;
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

    .line 20
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V

    return-void
.end method


# virtual methods
.method public getVolume()F
    .registers 3

    .line 23
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundWeatherLevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.resources.SoundType.AnonymousClass4 (info.flowersoft.theotown.resources.SoundType$4)
.class public final enum Linfo/flowersoft/theotown/resources/SoundType$4;
.super Linfo/flowersoft/theotown/resources/SoundType;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundType;
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

    .line 26
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V

    return-void
.end method


# virtual methods
.method public getVolume()F
    .registers 3

    .line 29
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundAmbientLevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method

###### Class info.flowersoft.theotown.resources.SoundType.AnonymousClass5 (info.flowersoft.theotown.resources.SoundType$5)
.class public final enum Linfo/flowersoft/theotown/resources/SoundType$5;
.super Linfo/flowersoft/theotown/resources/SoundType;
.source "SoundType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linfo/flowersoft/theotown/resources/SoundType;
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

    .line 32
    invoke-direct {p0, p1, p2, v0}, Linfo/flowersoft/theotown/resources/SoundType;-><init>(Ljava/lang/String;ILinfo/flowersoft/theotown/resources/SoundType$1;)V

    return-void
.end method


# virtual methods
.method public getVolume()F
    .registers 3

    .line 35
    sget v0, Linfo/flowersoft/theotown/resources/Settings;->soundPluginLevel:I

    sget v1, Linfo/flowersoft/theotown/resources/Settings;->generalSoundLevel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    return v0
.end method
