.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$WtTJuB1QFn6-sDZA02q-6Gt6SmU;
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

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$WtTJuB1QFn6-sDZA02q-6Gt6SmU;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$ReadingListFragment$WtTJuB1QFn6-sDZA02q-6Gt6SmU;->f$0:Lorg/wikipedia/readinglist/ReadingListFragment;

    check-cast p1, Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/ReadingListFragment;->lambda$updateReadingListData$4$ReadingListFragment(Lorg/wikipedia/readinglist/database/ReadingList;)V

    return-void
.end method
