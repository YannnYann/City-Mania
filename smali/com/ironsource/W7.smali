###### Class com.ironsource.W7 (com.ironsource.W7)
.class public final enum Lcom/ironsource/W7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/W7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/W7;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/W7$a;

.field public static final enum c:Lcom/ironsource/W7;

.field public static final enum d:Lcom/ironsource/W7;

.field public static final enum e:Lcom/ironsource/W7;

.field private static final synthetic f:[Lcom/ironsource/W7;

.field private static final synthetic g:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Lcom/ironsource/W7;

    const-string v1, "UnknownProvider"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/W7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    .line 2
    new-instance v0, Lcom/ironsource/W7;

    const-string v1, "DeliverySonic"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/W7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/W7;->d:Lcom/ironsource/W7;

    .line 3
    new-instance v0, Lcom/ironsource/W7;

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "MarketPlaceISX"

    invoke-direct {v0, v3, v1, v2}, Lcom/ironsource/W7;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/W7;->e:Lcom/ironsource/W7;

    invoke-static {}, Lcom/ironsource/W7;->a()[Lcom/ironsource/W7;

    move-result-object v0

    sput-object v0, Lcom/ironsource/W7;->f:[Lcom/ironsource/W7;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/W7;->g:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/W7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/W7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/W7;->b:Lcom/ironsource/W7$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/ironsource/W7;->a:I

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/W7;
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    sget-object v1, Lcom/ironsource/W7;->d:Lcom/ironsource/W7;

    sget-object v2, Lcom/ironsource/W7;->e:Lcom/ironsource/W7;

    filled-new-array {v0, v1, v2}, [Lcom/ironsource/W7;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/W7;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/W7;->g:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/W7;
    .registers 2

    const-class v0, Lcom/ironsource/W7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/W7;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/W7;
    .registers 1

    sget-object v0, Lcom/ironsource/W7;->f:[Lcom/ironsource/W7;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/W7;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/W7;->a:I

    return v0
.end method

###### Class com.ironsource.W7.a (com.ironsource.W7$a)
.class public final Lcom/ironsource/W7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/W7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nISAdProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ISAdProvider.kt\ncom/unity3d/ironsourceads/internal/configurations/ISAdProvider$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,21:1\n1#2:22\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/W7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)Lcom/ironsource/W7;
    .registers 8

    .line 1
    invoke-static {}, Lcom/ironsource/W7;->values()[Lcom/ironsource/W7;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_1b

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ironsource/W7;->c()I

    move-result v4

    if-nez p1, :cond_11

    goto :goto_18

    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v4, v5, :cond_18

    goto :goto_1c

    :cond_18
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-nez v3, :cond_21

    sget-object p1, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    return-object p1

    :cond_21
    return-object v3
.end method

.method public final a(Ljava/lang/String;)Lcom/ironsource/W7;
    .registers 9

    const-string v0, "dynamicDemandSourceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "_"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1e

    .line 4
    sget-object p1, Lcom/ironsource/W7;->c:Lcom/ironsource/W7;

    return-object p1

    :cond_1e
    const/4 v0, 0x1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/W7$a;->a(Ljava/lang/Integer;)Lcom/ironsource/W7;

    move-result-object p1

    return-object p1
.end method
