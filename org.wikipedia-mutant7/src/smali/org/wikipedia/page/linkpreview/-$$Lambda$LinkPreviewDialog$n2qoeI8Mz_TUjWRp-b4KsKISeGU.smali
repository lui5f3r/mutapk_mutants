.class public final synthetic Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$n2qoeI8Mz_TUjWRp-b4KsKISeGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$n2qoeI8Mz_TUjWRp-b4KsKISeGU;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/page/linkpreview/-$$Lambda$LinkPreviewDialog$n2qoeI8Mz_TUjWRp-b4KsKISeGU;->f$0:Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;

    check-cast p1, Lorg/wikipedia/gallery/MediaList;

    invoke-virtual {v0, p1}, Lorg/wikipedia/page/linkpreview/LinkPreviewDialog;->lambda$loadGallery$3$LinkPreviewDialog(Lorg/wikipedia/gallery/MediaList;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p1

    return-object p1
.end method
