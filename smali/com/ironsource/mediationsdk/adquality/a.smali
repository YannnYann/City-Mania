###### Class com.ironsource.mediationsdk.adquality.a (com.ironsource.mediationsdk.adquality.a)
.class public final Lcom/ironsource/mediationsdk/adquality/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adquality/a$a;,
        Lcom/ironsource/mediationsdk/adquality/a$b;,
        Lcom/ironsource/mediationsdk/adquality/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdQualityConfigurations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdQualityConfigurations.kt\ncom/ironsource/mediationsdk/adquality/AdQualityConfigurations\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
.end annotation


# static fields
.field public static final a:Lcom/ironsource/mediationsdk/adquality/a$b;

.field private static b:Lcom/ironsource/mediationsdk/adquality/a$a;

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/adquality/a$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a;->a:Lcom/ironsource/mediationsdk/adquality/a$b;

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->c:Lcom/ironsource/mediationsdk/adquality/a$a;

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a;->b:Lcom/ironsource/mediationsdk/adquality/a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 1

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a;->b:Lcom/ironsource/mediationsdk/adquality/a$a;

    return-object v0
.end method

.method public static final synthetic a(Lcom/ironsource/mediationsdk/adquality/a$a;)V
    .registers 1

    .line 2
    sput-object p0, Lcom/ironsource/mediationsdk/adquality/a;->b:Lcom/ironsource/mediationsdk/adquality/a$a;

    return-void
.end method

.method public static final synthetic a(Z)V
    .registers 1

    .line 3
    sput-boolean p0, Lcom/ironsource/mediationsdk/adquality/a;->c:Z

    return-void
.end method

.method public static final synthetic b()Z
    .registers 1

    .line 1
    sget-boolean v0, Lcom/ironsource/mediationsdk/adquality/a;->c:Z

    return v0
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 4
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->b:Lcom/ironsource/mediationsdk/adquality/a$a$a;

    invoke-virtual {v0, p1}, Lcom/ironsource/mediationsdk/adquality/a$a$a;->a(I)Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object p1

    sput-object p1, Lcom/ironsource/mediationsdk/adquality/a;->b:Lcom/ironsource/mediationsdk/adquality/a$a;

    return-void
.end method

.method public final b(Z)V
    .registers 2

    .line 2
    sput-boolean p1, Lcom/ironsource/mediationsdk/adquality/a;->c:Z

    return-void
.end method

.method public final c()Z
    .registers 12

    .line 1
    new-instance v0, Lcom/ironsource/l9;

    invoke-direct {v0}, Lcom/ironsource/l9;-><init>()V

    invoke-virtual {v0}, Lcom/ironsource/l9;->a()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    return v1

    .line 4
    :cond_13
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v1

    :goto_1d
    if-ge v4, v3, :cond_40

    .line 6
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    .line 7
    invoke-static {}, Lcom/ironsource/ye;->values()[Lcom/ironsource/ye;

    move-result-object v6

    array-length v7, v6

    move v8, v1

    :goto_29
    if-ge v8, v7, :cond_37

    aget-object v9, v6, v8

    invoke-virtual {v9}, Lcom/ironsource/ye;->c()I

    move-result v10

    if-ne v10, v5, :cond_34

    goto :goto_38

    :cond_34
    add-int/lit8 v8, v8, 0x1

    goto :goto_29

    :cond_37
    const/4 v9, 0x0

    :goto_38
    if-eqz v9, :cond_3d

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 11
    :cond_40
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a;->b:Lcom/ironsource/mediationsdk/adquality/a$a;

    sget-object v3, Lcom/ironsource/mediationsdk/adquality/a$c;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6e

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5b

    const/4 v3, 0x3

    if-eq v0, v3, :cond_54

    goto :goto_6c

    .line 19
    :cond_54
    sget-object v0, Lcom/ironsource/ye;->c:Lcom/ironsource/ye;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 20
    :cond_5b
    sget-object v0, Lcom/ironsource/ye;->b:Lcom/ironsource/ye;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    sget-object v0, Lcom/ironsource/ye;->c:Lcom/ironsource/ye;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    :goto_6c
    return v1

    :cond_6d
    :goto_6d
    return v3

    .line 21
    :cond_6e
    sget-object v0, Lcom/ironsource/ye;->b:Lcom/ironsource/ye;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.mediationsdk.adquality.a.EnumC1047a (com.ironsource.mediationsdk.adquality.a$a)
.class public final enum Lcom/ironsource/mediationsdk/adquality/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adquality/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/adquality/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ironsource/mediationsdk/adquality/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/ironsource/mediationsdk/adquality/a$a$a;

.field public static final enum c:Lcom/ironsource/mediationsdk/adquality/a$a;

.field public static final enum d:Lcom/ironsource/mediationsdk/adquality/a$a;

.field public static final enum e:Lcom/ironsource/mediationsdk/adquality/a$a;

.field public static final enum f:Lcom/ironsource/mediationsdk/adquality/a$a;

.field private static final synthetic g:[Lcom/ironsource/mediationsdk/adquality/a$a;

.field private static final synthetic h:Lkotlin/enums/EnumEntries;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$a;

    const-string v1, "DONT_INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/adquality/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->c:Lcom/ironsource/mediationsdk/adquality/a$a;

    .line 2
    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$a;

    const-string v1, "LEVELPLAY_ONLY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/adquality/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->d:Lcom/ironsource/mediationsdk/adquality/a$a;

    .line 3
    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$a;

    const-string v1, "ALL_MEDIATIONS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/adquality/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->e:Lcom/ironsource/mediationsdk/adquality/a$a;

    .line 4
    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$a;

    const-string v1, "OTHER_ONLY"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/mediationsdk/adquality/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->f:Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/a$a;->a()[Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->g:[Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->h:Lkotlin/enums/EnumEntries;

    new-instance v0, Lcom/ironsource/mediationsdk/adquality/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/adquality/a$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->b:Lcom/ironsource/mediationsdk/adquality/a$a$a;

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

    iput p3, p0, Lcom/ironsource/mediationsdk/adquality/a$a;->a:I

    return-void
.end method

.method private static final synthetic a()[Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 4

    .line 0
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->c:Lcom/ironsource/mediationsdk/adquality/a$a;

    sget-object v1, Lcom/ironsource/mediationsdk/adquality/a$a;->d:Lcom/ironsource/mediationsdk/adquality/a$a;

    sget-object v2, Lcom/ironsource/mediationsdk/adquality/a$a;->e:Lcom/ironsource/mediationsdk/adquality/a$a;

    sget-object v3, Lcom/ironsource/mediationsdk/adquality/a$a;->f:Lcom/ironsource/mediationsdk/adquality/a$a;

    filled-new-array {v0, v1, v2, v3}, [Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lkotlin/enums/EnumEntries;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lcom/ironsource/mediationsdk/adquality/a$a;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->h:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 2

    const-class v0, Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .line 1
    check-cast p0, Lcom/ironsource/mediationsdk/adquality/a$a;

    return-object p0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 1

    sget-object v0, Lcom/ironsource/mediationsdk/adquality/a$a;->g:[Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, [Lcom/ironsource/mediationsdk/adquality/a$a;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/ironsource/mediationsdk/adquality/a$a;->a:I

    return v0
.end method

###### Class com.ironsource.mediationsdk.adquality.a.EnumC1047a.C1048a (com.ironsource.mediationsdk.adquality.a$a$a)
.class public final Lcom/ironsource/mediationsdk/adquality/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adquality/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAdQualityConfigurations.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdQualityConfigurations.kt\ncom/ironsource/mediationsdk/adquality/AdQualityConfigurations$AdQualitySdkInitMode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,93:1\n1#2:94\n*E\n"
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
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/a$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 7

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/a$a;->values()[Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/adquality/a$a;->c()I

    move-result v4

    if-ne v4, p1, :cond_11

    goto :goto_15

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_14
    const/4 v3, 0x0

    :goto_15
    if-nez v3, :cond_1a

    sget-object p1, Lcom/ironsource/mediationsdk/adquality/a$a;->c:Lcom/ironsource/mediationsdk/adquality/a$a;

    return-object p1

    :cond_1a
    return-object v3
.end method

###### Class com.ironsource.mediationsdk.adquality.a.b (com.ironsource.mediationsdk.adquality.a$b)
.class public final Lcom/ironsource/mediationsdk/adquality/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adquality/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/adquality/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/mediationsdk/adquality/a$a;
    .registers 2

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/a;->a()Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/ironsource/mediationsdk/adquality/a$a;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lcom/ironsource/mediationsdk/adquality/a;->a(Lcom/ironsource/mediationsdk/adquality/a$a;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 3
    invoke-static {p1}, Lcom/ironsource/mediationsdk/adquality/a;->a(Z)V

    return-void
.end method

.method public final b()Z
    .registers 2

    .line 1
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/a;->b()Z

    move-result v0

    return v0
.end method

###### Class com.ironsource.mediationsdk.adquality.a.c (com.ironsource.mediationsdk.adquality.a$c)
.class public final synthetic Lcom/ironsource/mediationsdk/adquality/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/adquality/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "c"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 0
    invoke-static {}, Lcom/ironsource/mediationsdk/adquality/a$a;->values()[Lcom/ironsource/mediationsdk/adquality/a$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/mediationsdk/adquality/a$a;->d:Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/mediationsdk/adquality/a$a;->e:Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/mediationsdk/adquality/a$a;->f:Lcom/ironsource/mediationsdk/adquality/a$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    sput-object v0, Lcom/ironsource/mediationsdk/adquality/a$c;->a:[I

    return-void
.end method
