###### Class com.ironsource.EnumC3959z4 (com.ironsource.z4)
.class public final enum Lcom/ironsource/z4;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/z4$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/z4;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/z4$a;

.field public static final enum c:Lcom/ironsource/z4;

.field public static final enum d:Lcom/ironsource/z4;

.field public static final enum e:Lcom/ironsource/z4;

.field public static final enum f:Lcom/ironsource/z4;

.field private static final synthetic g:[Lcom/ironsource/z4;

.field private static final synthetic h:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x0

    const-string v2, "iads"

    const-string v3, "IADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->c:Lcom/ironsource/z4;

    .line 2
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x1

    const-string v2, "uads"

    const-string v3, "UADS"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->d:Lcom/ironsource/z4;

    .line 3
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x2

    const-string v2, "shared"

    const-string v3, "SHARED"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->e:Lcom/ironsource/z4;

    .line 4
    new-instance v0, Lcom/ironsource/z4;

    const/4 v1, 0x3

    const-string v2, "none"

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/z4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    invoke-static {}, Lcom/ironsource/z4;->a()[Lcom/ironsource/z4;

    move-result-object v0

    sput-object v0, Lcom/ironsource/z4;->g:[Lcom/ironsource/z4;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/z4;->h:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/z4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/z4$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/z4;->b:Lcom/ironsource/z4$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/ironsource/z4;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/ironsource/z4;
    .registers 2

    .line 2
    sget-object v0, Lcom/ironsource/z4;->b:Lcom/ironsource/z4$a;

    invoke-virtual {v0, p0}, Lcom/ironsource/z4$a;->a(Ljava/lang/String;)Lcom/ironsource/z4;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic a()[Lcom/ironsource/z4;
    .registers 4

    .line 1
    sget-object v0, Lcom/ironsource/z4;->c:Lcom/ironsource/z4;

    sget-object v1, Lcom/ironsource/z4;->d:Lcom/ironsource/z4;

    sget-object v2, Lcom/ironsource/z4;->e:Lcom/ironsource/z4;

    sget-object v3, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/z4;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/z4;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/z4;->h:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/z4;
    .registers 2

    const-class v0, Lcom/ironsource/z4;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/z4;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/z4;
    .registers 1

    sget-object v0, Lcom/ironsource/z4;->g:[Lcom/ironsource/z4;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/z4;

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/z4;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.ironsource.EnumC3959z4.a (com.ironsource.z4$a)
.class public final Lcom/ironsource/z4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/z4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDSSharedSignalSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DSSharedSignalSource.kt\ncom/unity3d/sdk/signals/ds/DSSharedSignalSource$Companion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,22:1\n1310#2,2:23\n*S KotlinDebug\n*F\n+ 1 DSSharedSignalSource.kt\ncom/unity3d/sdk/signals/ds/DSSharedSignalSource$Companion\n*L\n18#1:23,2\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/ironsource/z4$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/ironsource/z4;
    .registers 7

    .line 1
    invoke-static {}, Lcom/ironsource/z4;->values()[Lcom/ironsource/z4;

    move-result-object v0

    .line 6
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_18

    aget-object v3, v0, v2

    .line 7
    invoke-virtual {v3}, Lcom/ironsource/z4;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    goto :goto_19

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    const/4 v3, 0x0

    :goto_19
    if-nez v3, :cond_1e

    sget-object p1, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    return-object p1

    :cond_1e
    return-object v3
.end method
