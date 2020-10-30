.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$I9Aw7skMZf1aOtaNcHQtlsXsey0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/database/ReadingList;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/database/ReadingList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$I9Aw7skMZf1aOtaNcHQtlsXsey0;->f$0:Lorg/wikipedia/readinglist/database/ReadingList;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$I9Aw7skMZf1aOtaNcHQtlsXsey0;->f$0:Lorg/wikipedia/readinglist/database/ReadingList;

    invoke-static {v0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$showViewListSnackBar$6(Lorg/wikipedia/readinglist/database/ReadingList;Landroid/view/View;)V

    return-void
.end method
