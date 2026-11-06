###### Class com.ironsource.C3902w1 (com.ironsource.w1)
.class public final Lcom/ironsource/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/X1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w1$a;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Q0tEB8h1BigTeglBR54gHkFUpw8(Lcom/ironsource/qa;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/w1;->d(Lcom/ironsource/qa;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kz4XTgxy6_FNBbnuJjsuDUfua5A(Lcom/ironsource/qa;)V
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/ironsource/w1;->c(Lcom/ironsource/qa;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final c(Lcom/ironsource/qa;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/ironsource/w1$a;

    invoke-direct {v1, p0}, Lcom/ironsource/w1$a;-><init>(Lcom/ironsource/qa;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private static final d(Lcom/ironsource/qa;)V
    .registers 3

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lcom/ironsource/w1$a;

    invoke-direct {v1, p0}, Lcom/ironsource/w1$a;-><init>(Lcom/ironsource/qa;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/qa;)V
    .registers 10

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Adding lifecycle event observer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v3, Lcom/ironsource/w1$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/ironsource/w1$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/qa;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)Lcom/ironsource/Ff$a;

    return-void
.end method

.method public b(Lcom/ironsource/qa;)V
    .registers 10

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const-string v1, "Removing lifecycle event observer"

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    .line 2
    sget-object v2, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v3, Lcom/ironsource/w1$$ExternalSyntheticLambda1;

    invoke-direct {v3, p1}, Lcom/ironsource/w1$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/qa;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postOnUiThreadTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)Lcom/ironsource/Ff$a;

    return-void
.end method

###### Class com.ironsource.C3902w1.a (com.ironsource.w1$a)
.class final Lcom/ironsource/w1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/w1$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/qa;


# direct methods
.method public static synthetic $r8$lambda$RwQSDrr21tX2wY73Uzym3F1mXoQ(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/ironsource/w1$a;->a(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/qa;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    return-void
.end method

.method private static final a(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V
    .registers 3

    .line 1
    sget-object v0, Lcom/ironsource/w1$a$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    return-void

    .line 5
    :cond_15
    iget-object p0, p1, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    invoke-interface {p0}, Lcom/ironsource/qa;->a()V

    return-void

    .line 6
    :cond_1b
    iget-object p0, p1, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    invoke-interface {p0}, Lcom/ironsource/qa;->d()V

    return-void

    .line 7
    :cond_21
    iget-object p0, p1, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    invoke-interface {p0}, Lcom/ironsource/qa;->c()V

    return-void

    .line 8
    :cond_27
    iget-object p0, p1, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    invoke-interface {p0}, Lcom/ironsource/qa;->b()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    instance-of v1, p1, Lcom/ironsource/w1$a;

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    check-cast p1, Lcom/ironsource/w1$a;

    goto :goto_b

    :cond_a
    move-object p1, v2

    :goto_b
    if-eqz p1, :cond_f

    iget-object v2, p1, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    :cond_f
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/ironsource/w1$a;->a:Lcom/ironsource/qa;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 9

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/ironsource/environment/thread/IronSourceThreadManager;->INSTANCE:Lcom/ironsource/environment/thread/IronSourceThreadManager;

    new-instance v1, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;-><init>(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/ironsource/environment/thread/IronSourceThreadManager;->postMediationBackgroundTask$default(Lcom/ironsource/environment/thread/IronSourceThreadManager;Ljava/lang/Runnable;JILjava/lang/Object;)V

    return-void
.end method

###### Class com.ironsource.C3902w1.a.C1062a (com.ironsource.w1$a$a)
.class public final synthetic Lcom/ironsource/w1$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/w1$a;
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
    invoke-static {}, Landroidx/lifecycle/Lifecycle$Event;->values()[Landroidx/lifecycle/Lifecycle$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_7
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_10} :catch_10

    :catch_10
    :try_start_10
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_22} :catch_22

    :catch_22
    :try_start_22
    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/ironsource/w1$a$a;->a:[I

    return-void
.end method

###### Class com.ironsource.w1$a$$ExternalSyntheticLambda0 (com.ironsource.w1$a$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/lifecycle/Lifecycle$Event;

.field public final synthetic f$1:Lcom/ironsource/w1$a;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/Lifecycle$Event;

    iput-object p2, p0, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/w1$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;->f$0:Landroidx/lifecycle/Lifecycle$Event;

    iget-object v1, p0, Lcom/ironsource/w1$a$$ExternalSyntheticLambda0;->f$1:Lcom/ironsource/w1$a;

    invoke-static {v0, v1}, Lcom/ironsource/w1$a;->$r8$lambda$RwQSDrr21tX2wY73Uzym3F1mXoQ(Landroidx/lifecycle/Lifecycle$Event;Lcom/ironsource/w1$a;)V

    return-void
.end method

###### Class com.ironsource.w1$$ExternalSyntheticLambda0 (com.ironsource.w1$$ExternalSyntheticLambda0)
.class public final synthetic Lcom/ironsource/w1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/qa;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/qa;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w1$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/qa;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/w1$$ExternalSyntheticLambda0;->f$0:Lcom/ironsource/qa;

    invoke-static {v0}, Lcom/ironsource/w1;->$r8$lambda$kz4XTgxy6_FNBbnuJjsuDUfua5A(Lcom/ironsource/qa;)V

    return-void
.end method

###### Class com.ironsource.w1$$ExternalSyntheticLambda1 (com.ironsource.w1$$ExternalSyntheticLambda1)
.class public final synthetic Lcom/ironsource/w1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/ironsource/qa;


# direct methods
.method public synthetic constructor <init>(Lcom/ironsource/qa;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/w1$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/qa;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/ironsource/w1$$ExternalSyntheticLambda1;->f$0:Lcom/ironsource/qa;

    invoke-static {v0}, Lcom/ironsource/w1;->$r8$lambda$Q0tEB8h1BigTeglBR54gHkFUpw8(Lcom/ironsource/qa;)V

    return-void
.end method
