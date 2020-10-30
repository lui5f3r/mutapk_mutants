.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;->f$0:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;->f$0:Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$XGZGsbp8rsB_9EW84SJviVaXXG4;->f$1:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$commitChanges$4(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
