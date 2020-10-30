.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$KlZ0M4ou_-ZLgZgoWQCsqvTSyVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$KlZ0M4ou_-ZLgZgoWQCsqvTSyVg;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$KlZ0M4ou_-ZLgZgoWQCsqvTSyVg;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    invoke-virtual {v0}, Lorg/wikipedia/readinglist/ReadingListFragment;->lambda$updateReadingListData$3$ReadingListFragment()Lorg/wikipedia/readinglist/database/ReadingList;

    move-result-object v0

    return-object v0
.end method
