###### Class com.ironsource.T7 (com.ironsource.T7)
.class public final Lcom/ironsource/T7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/T7$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/T7$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/T7$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/T7$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/T7;->a:Lcom/ironsource/T7$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Lcom/ironsource/U7;
    .registers 1

    .line 0
    sget-object v0, Lcom/ironsource/T7;->a:Lcom/ironsource/T7$a;

    invoke-virtual {v0}, Lcom/ironsource/T7$a;->a()Lcom/ironsource/U7;

    move-result-object v0

    return-object v0
.end method

###### Class com.ironsource.T7.a (com.ironsource.T7$a)
.class public final Lcom/ironsource/T7$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/T7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/ironsource/T7$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/ironsource/U7;
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/U7;

    invoke-direct {v0}, Lcom/ironsource/U7;-><init>()V

    return-object v0
.end method
