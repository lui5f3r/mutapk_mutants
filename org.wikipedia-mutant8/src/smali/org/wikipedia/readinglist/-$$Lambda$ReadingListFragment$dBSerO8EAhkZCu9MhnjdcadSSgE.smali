.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$dBSerO8EAhkZCu9MhnjdcadSSgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/ReadingListFragment;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/ReadingListFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$dBSerO8EAhkZCu9MhnjdcadSSgE;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$dBSerO8EAhkZCu9MhnjdcadSSgE;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->lambda$updateReadingListData$5$ReadingListFragment(Ljava/lang/Throwable;)V

    return-void
.end method