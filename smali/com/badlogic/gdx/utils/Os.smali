###### Class com.badlogic.gdx.utils.Os (com.badlogic.gdx.utils.Os)
.class public final enum Lcom/badlogic/gdx/utils/Os;
.super Ljava/lang/Enum;
.source "Os.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/Os;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Os;

.field public static final enum Android:Lcom/badlogic/gdx/utils/Os;

.field public static final enum IOS:Lcom/badlogic/gdx/utils/Os;

.field public static final enum Linux:Lcom/badlogic/gdx/utils/Os;

.field public static final enum MacOsX:Lcom/badlogic/gdx/utils/Os;

.field public static final enum Windows:Lcom/badlogic/gdx/utils/Os;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/badlogic/gdx/utils/Os;

    const-string v1, "Windows"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Os;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    new-instance v1, Lcom/badlogic/gdx/utils/Os;

    const-string v2, "Linux"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/Os;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    new-instance v2, Lcom/badlogic/gdx/utils/Os;

    const-string v3, "MacOsX"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/Os;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    new-instance v3, Lcom/badlogic/gdx/utils/Os;

    const-string v4, "Android"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/Os;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    new-instance v4, Lcom/badlogic/gdx/utils/Os;

    const-string v5, "IOS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/utils/Os;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/badlogic/gdx/utils/Os;->IOS:Lcom/badlogic/gdx/utils/Os;

    .line 4
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/badlogic/gdx/utils/Os;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/Os;->$VALUES:[Lcom/badlogic/gdx/utils/Os;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Os;
    .registers 2

    .line 4
    const-class v0, Lcom/badlogic/gdx/utils/Os;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Os;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Os;
    .registers 1

    .line 4
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->$VALUES:[Lcom/badlogic/gdx/utils/Os;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Os;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Os;

    return-object v0
.end method


# virtual methods
.method public getLibExtension()Ljava/lang/String;
    .registers 3

    .line 22
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->Windows:Lcom/badlogic/gdx/utils/Os;

    if-ne p0, v0, :cond_7

    const-string v0, "dll"

    return-object v0

    .line 23
    :cond_7
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    const-string v1, "so"

    if-ne p0, v0, :cond_e

    return-object v1

    .line 24
    :cond_e
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    if-ne p0, v0, :cond_15

    const-string v0, "dylib"

    return-object v0

    .line 25
    :cond_15
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-ne p0, v0, :cond_1a

    return-object v1

    .line 26
    :cond_1a
    const-string v0, ""

    return-object v0
.end method

.method public getLibPrefix()Ljava/lang/String;
    .registers 2

    .line 15
    sget-object v0, Lcom/badlogic/gdx/utils/Os;->Linux:Lcom/badlogic/gdx/utils/Os;

    if-eq p0, v0, :cond_10

    sget-object v0, Lcom/badlogic/gdx/utils/Os;->Android:Lcom/badlogic/gdx/utils/Os;

    if-eq p0, v0, :cond_10

    sget-object v0, Lcom/badlogic/gdx/utils/Os;->MacOsX:Lcom/badlogic/gdx/utils/Os;

    if-ne p0, v0, :cond_d

    goto :goto_10

    .line 18
    :cond_d
    const-string v0, ""

    return-object v0

    .line 16
    :cond_10
    :goto_10
    const-string v0, "lib"

    return-object v0
.end method
