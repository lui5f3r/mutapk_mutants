.class public final synthetic Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$_S7Jel2CPVM7LlY4mUSI_zbtJbs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/readinglist/AddToReadingListDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$_S7Jel2CPVM7LlY4mUSI_zbtJbs;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/readinglist/-$$Lambda$AddToReadingListDialog$_S7Jel2CPVM7LlY4mUSI_zbtJbs;->f$0:Lorg/wikipedia/readinglist/AddToReadingListDialog;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lorg/wikipedia/readinglist/AddToReadingListDialog;->lambda$updateLists$2$AddToReadingListDialog(Ljava/util/List;)V

    return-void
.end method
