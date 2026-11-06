###### Class com.ironsource.Yg (com.ironsource.Yg)
.class public interface abstract Lcom/ironsource/Yg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Yg$a;
    }
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Lcom/ironsource/A;)V
.end method

.method public abstract b()Lcom/ironsource/Pd;
.end method

.method public c()Lcom/ironsource/A;
    .registers 2

    .line 0
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.ironsource.Yg.a (com.ironsource.Yg$a)
.class public final Lcom/ironsource/Yg$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Yg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/Yg$a$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/ironsource/Yg$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lcom/ironsource/Yg$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ironsource/Yg$a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/ironsource/Yg$a;->a:Lcom/ironsource/Yg$a$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.Yg.a.C0033a (com.ironsource.Yg$a$a)
.class public final Lcom/ironsource/Yg$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/Yg$a;
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
    invoke-direct {p0}, Lcom/ironsource/Yg$a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLcom/ironsource/Rg;)Lcom/ironsource/Yg;
    .registers 4

    const-string v0, "waterfallOperations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    .line 1
    new-instance p1, Lcom/ironsource/Wg;

    invoke-direct {p1, p2}, Lcom/ironsource/Wg;-><init>(Lcom/ironsource/Rg;)V

    return-object p1

    .line 3
    :cond_d
    new-instance p1, Lcom/ironsource/Vg;

    invoke-direct {p1, p2}, Lcom/ironsource/Vg;-><init>(Lcom/ironsource/Rg;)V

    return-object p1
.end method
