.class public final synthetic Lorg/wikipedia/page/-$$Lambda$PageFragment$B5pvuU3ACe8X08nZLs3i6AMk1Io;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/PageFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/PageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$B5pvuU3ACe8X08nZLs3i6AMk1Io;->f$0:Lorg/wikipedia/page/PageFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/-$$Lambda$PageFragment$B5pvuU3ACe8X08nZLs3i6AMk1Io;->f$0:Lorg/wikipedia/page/PageFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/PageFragment;->lambda$updateBookmarkAndMenuOptionsFromDao$11$PageFragment(Ljava/lang/Throwable;)V

    return-void
.end method