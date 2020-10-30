.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;->f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;->f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$kfqSNXqtWOgOjSS_srB4bBrjFvQ;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->lambda$commitChanges$1$MoveToReadingListDialog(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method
