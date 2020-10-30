.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

.field public final synthetic f$1:Lorg/wikipedia/readinglist/database/ReadingList;

.field public final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/MoveToReadingListDialog;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    iput-object p3, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$0:Lorg/wikipedia/readinglist/MoveToReadingListDialog;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$1:Lorg/wikipedia/readinglist/database/ReadingList;

    iget-object v2, p0, Lorg/wikipedia/readinglist/-$$Lambda$MoveToReadingListDialog$Py5upRs4xDLMuwrgX_HaLc6ivIs;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/wikipedia/readinglist/MoveToReadingListDialog;->lambda$commitChanges$0$MoveToReadingListDialog(Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
