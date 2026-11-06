###### Class com.ironsource.D4 (com.ironsource.D4)
.class public final Lcom/ironsource/D4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/A7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/D4$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/ironsource/z4;)Lcom/ironsource/F4;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/D4$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_36

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2e

    const/4 v0, 0x3

    if-eq p2, v0, :cond_26

    const/4 p1, 0x4

    if-ne p2, p1, :cond_20

    const/4 p1, 0x0

    return-object p1

    :cond_20
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 4
    :cond_26
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "unity3d_shrd_pref"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 5
    :cond_2e
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "unityads-installinfo"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2

    .line 6
    :cond_36
    new-instance p2, Lcom/ironsource/C4;

    const-string v0, "supersonic_shared_preferen"

    invoke-direct {p2, p1, v0}, Lcom/ironsource/C4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object p2
.end method

###### Class com.ironsource.D4.a (com.ironsource.D4$a)
.class public final synthetic Lcom/ironsource/D4$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/D4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/ironsource/z4;->values()[Lcom/ironsource/z4;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Lcom/ironsource/z4;->c:Lcom/ironsource/z4;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Lcom/ironsource/z4;->d:Lcom/ironsource/z4;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/ironsource/z4;->e:Lcom/ironsource/z4;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Lcom/ironsource/z4;->f:Lcom/ironsource/z4;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/ironsource/D4$a;->a:[I

    return-void
.end method
