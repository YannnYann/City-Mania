###### Class com.ironsource.C3788pe (com.ironsource.pe)
.class public final Lcom/ironsource/pe;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:I

.field private static final b:Ljava/lang/String; = "%s-%d"

.field private static final c:Ljava/lang/String; = "IronSourceThread"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/ironsource/pe;->a:I

    return-void
.end method

.method public static final synthetic a()I
    .registers 1

    .line 1
    sget v0, Lcom/ironsource/pe;->a:I

    return v0
.end method
