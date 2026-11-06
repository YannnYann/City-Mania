###### Class io.bidmachine.rendering.internal.state.a (io.bidmachine.rendering.internal.state.a)
.class public interface abstract Lio/bidmachine/rendering/internal/state/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/state/a$a;,
        Lio/bidmachine/rendering/internal/state/a$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/rendering/internal/state/a$b;)V
.end method

.method public abstract a()Z
.end method

.method public abstract a(Z)Z
.end method

.method public abstract b(Lio/bidmachine/rendering/internal/state/a$b;)V
.end method

.method public abstract b()Z
.end method

.method public abstract b(Z)Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()Z
.end method

.method public abstract g()Z
.end method

.method public abstract h()Z
.end method

.method public abstract i()Z
.end method

.method public abstract isCompleted()Z
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public abstract l()Z
.end method

.method public abstract m()Z
.end method

.method public abstract n()V
.end method

.method public abstract o()Z
.end method

.method public abstract p()Z
.end method

.method public abstract q()Z
.end method

.method public abstract r()Z
.end method

.method public abstract s()V
.end method

.method public abstract t()Z
.end method

###### Class io.bidmachine.rendering.internal.state.a.EnumC1205a (io.bidmachine.rendering.internal.state.a$a)
.class public final enum Lio/bidmachine/rendering/internal/state/a$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/state/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation


# static fields
.field public static final enum a:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum b:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum c:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum d:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum e:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum f:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum g:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum h:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum i:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum j:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum k:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum l:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum m:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum n:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum o:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final enum p:Lio/bidmachine/rendering/internal/state/a$a;

.field public static final synthetic q:[Lio/bidmachine/rendering/internal/state/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "LoadingStarted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->a:Lio/bidmachine/rendering/internal/state/a$a;

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Loaded"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->b:Lio/bidmachine/rendering/internal/state/a$a;

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "FailedToLoad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->c:Lio/bidmachine/rendering/internal/state/a$a;

    .line 4
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "ShowInitiated"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->d:Lio/bidmachine/rendering/internal/state/a$a;

    .line 5
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "CommitVisible"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->e:Lio/bidmachine/rendering/internal/state/a$a;

    .line 6
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "ViewabilityShow"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->f:Lio/bidmachine/rendering/internal/state/a$a;

    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Shown"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->g:Lio/bidmachine/rendering/internal/state/a$a;

    .line 8
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "FailedToShow"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->h:Lio/bidmachine/rendering/internal/state/a$a;

    .line 9
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Clicked"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->i:Lio/bidmachine/rendering/internal/state/a$a;

    .line 10
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Appeared"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->j:Lio/bidmachine/rendering/internal/state/a$a;

    .line 11
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Disappeared"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->k:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Finished"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->l:Lio/bidmachine/rendering/internal/state/a$a;

    .line 13
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Expired"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->m:Lio/bidmachine/rendering/internal/state/a$a;

    .line 14
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Expanded"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->n:Lio/bidmachine/rendering/internal/state/a$a;

    .line 15
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Collapsed"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->o:Lio/bidmachine/rendering/internal/state/a$a;

    .line 16
    new-instance v0, Lio/bidmachine/rendering/internal/state/a$a;

    const-string v1, "Destroyed"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/state/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->p:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-static {}, Lio/bidmachine/rendering/internal/state/a$a;->a()[Lio/bidmachine/rendering/internal/state/a$a;

    move-result-object v0

    sput-object v0, Lio/bidmachine/rendering/internal/state/a$a;->q:[Lio/bidmachine/rendering/internal/state/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static final synthetic a()[Lio/bidmachine/rendering/internal/state/a$a;
    .registers 17

    .line 0
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->a:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v2, Lio/bidmachine/rendering/internal/state/a$a;->b:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v3, Lio/bidmachine/rendering/internal/state/a$a;->c:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v4, Lio/bidmachine/rendering/internal/state/a$a;->d:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v5, Lio/bidmachine/rendering/internal/state/a$a;->e:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v6, Lio/bidmachine/rendering/internal/state/a$a;->f:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v7, Lio/bidmachine/rendering/internal/state/a$a;->g:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v8, Lio/bidmachine/rendering/internal/state/a$a;->h:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v9, Lio/bidmachine/rendering/internal/state/a$a;->i:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v10, Lio/bidmachine/rendering/internal/state/a$a;->j:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v11, Lio/bidmachine/rendering/internal/state/a$a;->k:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v12, Lio/bidmachine/rendering/internal/state/a$a;->l:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v13, Lio/bidmachine/rendering/internal/state/a$a;->m:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v14, Lio/bidmachine/rendering/internal/state/a$a;->n:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v15, Lio/bidmachine/rendering/internal/state/a$a;->o:Lio/bidmachine/rendering/internal/state/a$a;

    sget-object v16, Lio/bidmachine/rendering/internal/state/a$a;->p:Lio/bidmachine/rendering/internal/state/a$a;

    filled-new-array/range {v1 .. v16}, [Lio/bidmachine/rendering/internal/state/a$a;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/internal/state/a$a;
    .registers 2

    .line 0
    const-class v0, Lio/bidmachine/rendering/internal/state/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/rendering/internal/state/a$a;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/internal/state/a$a;
    .registers 1

    .line 0
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->q:[Lio/bidmachine/rendering/internal/state/a$a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/bidmachine/rendering/internal/state/a$a;

    return-object v0
.end method

###### Class io.bidmachine.rendering.internal.state.a.b (io.bidmachine.rendering.internal.state.a$b)
.class public interface abstract Lio/bidmachine/rendering/internal/state/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/state/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V
.end method
