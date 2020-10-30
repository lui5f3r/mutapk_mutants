.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$pdIhyQmA0EP9r6peLTb5opoqyQI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lorg/wikipedia/readinglist/ReadingListTitleDialog$Callback;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$pdIhyQmA0EP9r6peLTb5opoqyQI;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$pdIhyQmA0EP9r6peLTb5opoqyQI;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    invoke-virtual {v0, p1, p2}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$showCreateListDialog$3$AddToReadingListDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
