.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    iput-object p2, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$1:Ljava/util/List;

    iput-object p3, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$2:Lorg/wikipedia/readinglist/database/ReadingList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    iget-object v1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$1:Ljava/util/List;

    iget-object v2, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$8tC0WUULmArmA847lvIReCjGx10;->f$2:Lorg/wikipedia/readinglist/database/ReadingList;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, v1, v2, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$commitChanges$5$AddToReadingListDialog(Ljava/util/List;Lorg/wikipedia/readinglist/database/ReadingList;Ljava/util/List;)V

    return-void
.end method
