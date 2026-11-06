###### Class com.badlogic.gdx.utils.Architecture (com.badlogic.gdx.utils.Architecture)
.class public final enum Lcom/badlogic/gdx/utils/Architecture;
.super Ljava/lang/Enum;
.source "Architecture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Architecture$Bitness;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/Architecture;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Architecture;

.field public static final enum ARM:Lcom/badlogic/gdx/utils/Architecture;

.field public static final enum LOONGARCH:Lcom/badlogic/gdx/utils/Architecture;

.field public static final enum RISCV:Lcom/badlogic/gdx/utils/Architecture;

.field public static final enum x86:Lcom/badlogic/gdx/utils/Architecture;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 4
    new-instance v0, Lcom/badlogic/gdx/utils/Architecture;

    const-string v1, "x86"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Architecture;->x86:Lcom/badlogic/gdx/utils/Architecture;

    new-instance v1, Lcom/badlogic/gdx/utils/Architecture;

    const-string v2, "ARM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/Architecture;->ARM:Lcom/badlogic/gdx/utils/Architecture;

    new-instance v2, Lcom/badlogic/gdx/utils/Architecture;

    const-string v3, "RISCV"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/utils/Architecture;->RISCV:Lcom/badlogic/gdx/utils/Architecture;

    new-instance v3, Lcom/badlogic/gdx/utils/Architecture;

    const-string v4, "LOONGARCH"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/utils/Architecture;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/badlogic/gdx/utils/Architecture;->LOONGARCH:Lcom/badlogic/gdx/utils/Architecture;

    .line 3
    filled-new-array {v0, v1, v2, v3}, [Lcom/badlogic/gdx/utils/Architecture;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/Architecture;->$VALUES:[Lcom/badlogic/gdx/utils/Architecture;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Architecture;
    .registers 2

    .line 3
    const-class v0, Lcom/badlogic/gdx/utils/Architecture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Architecture;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Architecture;
    .registers 1

    .line 3
    sget-object v0, Lcom/badlogic/gdx/utils/Architecture;->$VALUES:[Lcom/badlogic/gdx/utils/Architecture;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Architecture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Architecture;

    return-object v0
.end method


# virtual methods
.method public toSuffix()Ljava/lang/String;
    .registers 2

    .line 7
    sget-object v0, Lcom/badlogic/gdx/utils/Architecture;->x86:Lcom/badlogic/gdx/utils/Architecture;

    if-ne p0, v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 8
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.badlogic.gdx.utils.Architecture.Bitness (com.badlogic.gdx.utils.Architecture$Bitness)
.class public final enum Lcom/badlogic/gdx/utils/Architecture$Bitness;
.super Ljava/lang/Enum;
.source "Architecture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Architecture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Bitness"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/badlogic/gdx/utils/Architecture$Bitness;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/badlogic/gdx/utils/Architecture$Bitness;

.field public static final enum _128:Lcom/badlogic/gdx/utils/Architecture$Bitness;

.field public static final enum _32:Lcom/badlogic/gdx/utils/Architecture$Bitness;

.field public static final enum _64:Lcom/badlogic/gdx/utils/Architecture$Bitness;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 12
    new-instance v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;

    const-string v1, "_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/utils/Architecture$Bitness;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_32:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    new-instance v1, Lcom/badlogic/gdx/utils/Architecture$Bitness;

    const-string v2, "_64"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/badlogic/gdx/utils/Architecture$Bitness;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_64:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    new-instance v2, Lcom/badlogic/gdx/utils/Architecture$Bitness;

    const-string v3, "_128"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/utils/Architecture$Bitness;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_128:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    .line 11
    filled-new-array {v0, v1, v2}, [Lcom/badlogic/gdx/utils/Architecture$Bitness;

    move-result-object v0

    sput-object v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;->$VALUES:[Lcom/badlogic/gdx/utils/Architecture$Bitness;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/utils/Architecture$Bitness;
    .registers 2

    .line 11
    const-class v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/badlogic/gdx/utils/Architecture$Bitness;

    return-object p0
.end method

.method public static values()[Lcom/badlogic/gdx/utils/Architecture$Bitness;
    .registers 1

    .line 11
    sget-object v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;->$VALUES:[Lcom/badlogic/gdx/utils/Architecture$Bitness;

    invoke-virtual {v0}, [Lcom/badlogic/gdx/utils/Architecture$Bitness;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/badlogic/gdx/utils/Architecture$Bitness;

    return-object v0
.end method


# virtual methods
.method public toSuffix()Ljava/lang/String;
    .registers 3

    .line 15
    sget-object v0, Lcom/badlogic/gdx/utils/Architecture$Bitness;->_32:Lcom/badlogic/gdx/utils/Architecture$Bitness;

    if-ne p0, v0, :cond_7

    const-string v0, ""

    return-object v0

    .line 16
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
